using Microsoft.Office.Interop.Word;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;
using Word = Microsoft.Office.Interop.Word;

namespace Monkey
{
    public partial class AdminForm : MaketForm
    {
        private db db;
        public AdminForm()
        {
            InitializeComponent();
            dataGridView2.DefaultCellStyle.BackColor = ColorOne;
            dataGridView2.DefaultCellStyle.SelectionBackColor = ColorTwo;
            dataGridView1.DefaultCellStyle.BackColor = ColorOne;
            dataGridView1.DefaultCellStyle.SelectionBackColor = ColorTwo;

            buttonTakeFilters.BackColor = ColorTwo;
            buttonPDF.BackColor = ColorTwo;

            chart1.BackColor = ColorOne;
            chart1.BorderlineColor = ColorTwo;

            dataGridView2.Visible = false;
            chart1.Visible = false;
            db = new db();
        }

        private async void AdminForm_Load(object sender, EventArgs e)
        {
            string query = @"SELECT e.[login] as ""Логин"", lh.login_date as ""Время входа"", tl.name as ""Результат""  FROM LoginHistory lh
                             LEFT JOIN Employees e ON  lh.id_employee = e.id
                             LEFT JOIN TypesLogin tl ON lh.id_type_login = tl.id";

            var resultHistoryLogin = await db.SelectQuery(query);
            dataGridView1.DataSource = resultHistoryLogin;

            comboBoxTypes.Items.Add("Кол-во оказанных услуг");
            comboBoxTypes.Items.Add("Кол-во заказов по каждой услуге");
            comboBoxTypes.Items.Add("Кол-во заказов");
            comboBoxTypes.SelectedIndex = 2;

            comboBoxVid.Items.Add("График и таблица");
            comboBoxVid.Items.Add("График");
            comboBoxVid.Items.Add("Таблица");
            comboBoxVid.SelectedIndex = 0;

            dateTimePicker1.Value = new DateTime(2022 , 3, 16);
            dateTimePicker2.Value = new DateTime(2022, 5, 16);

        }

        private async void buttonTakeFilters_Click(object sender, EventArgs e)
        {
            var dateStart = dateTimePicker1.Value.ToString("yyyy-MM-dd") + "T00:00:00.000";
            var dateEnd = dateTimePicker2.Value.ToString("yyyy-MM-dd") + "T23:59:00.000";
            if (Convert.ToDateTime(dateEnd) < Convert.ToDateTime(dateStart))
            {
                MessageBox.Show("Некорректный ввод периода", "Внимание", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            switch (comboBoxVid.SelectedIndex)
            {
                case 0:
                    dataGridView2.Visible = true;
                    chart1.Visible = true;
                    CreateOtchet(dateStart, dateEnd);
                    break;
                case 1:
                    dataGridView2.Visible = false;
                    chart1.Visible = true;
                    CreateOtchet(dateStart, dateEnd);
                    break;
                case 2:
                    dataGridView2.Visible = true;
                    chart1.Visible = false;
                    CreateOtchet(dateStart, dateEnd);
                    break;
            }
        }

        private async void CreateOtchet(string start, string end)
        {
            string query = "";
            switch (comboBoxTypes.SelectedIndex)
            {
                case 0:
                    query = $@"select Convert(date, o.datetime_create) as 'Дата', COUNT(os.id) as 'Количество услуг' from Orders o
                            inner join OrdersServices os on os.id_order = o.id
                            Where o.datetime_create >= '{start}' and o.datetime_create <= '{end}'
                            group by o.datetime_create";
                    break;
                case 2:
                    query = $@"select Convert(date, DATEADD(DAY, DATEDIFF(DAY, 0, o.datetime_create), 0)) as 'Дата', COUNT(o.id) as 'Количество заказов' from Orders o
                               Where o.datetime_create >= '{start}' and o.datetime_create <= '{end}'
                               group by DATEADD(DAY, DATEDIFF(DAY, 0, o.datetime_create), 0)";
                    break;
                case 1:
                    query = $@"select Convert(date, DATEADD(DAY, DATEDIFF(DAY, 0, o.datetime_create), 0)) as 'Дата', COUNT(o.id) as 'Количество заказов', s.name as 'Услуга' from Orders o
                               inner join OrdersServices os on os.id_order = o.id
                               inner join Services s on s.id = os.id_service
                               Where o.datetime_create >= '{start}' and o.datetime_create <= '{end}'
                               group by DATEADD(DAY, DATEDIFF(DAY, 0, o.datetime_create), 0), s.name
                               order by DATEADD(DAY, DATEDIFF(DAY, 0, o.datetime_create), 0)";
                    break;
            }
            var result = await db.SelectQuery(query);

            dataGridView2.DataSource = result;

            var s = new System.Windows.Forms.DataVisualization.Charting.Series();
            s.ChartType = SeriesChartType.Line;

            for (int i = 0; i < result.Rows.Count; i++)
            {
                s.Points.AddXY(Convert.ToDateTime(result.Rows[i][0]), (int)result.Rows[i][1]);
                s.BorderWidth = 2;
                s.BorderDashStyle = ChartDashStyle.Solid;
                s.ChartType = SeriesChartType.FastLine;
                s.Color = ColorTwo;
            }

            chart1.Series.Clear();
            chart1.ChartAreas.Clear();
            chart1.Series.Add(s);


            chart1.Series[0].XValueType = ChartValueType.DateTime;
            chart1.ChartAreas.Add(new System.Windows.Forms.DataVisualization.Charting.ChartArea());
            chart1.ChartAreas[0].AxisX.LabelStyle.Format = "yyyy-MM-dd";

            chart1.Series[0].XValueType = ChartValueType.DateTime;
            DateTime minDate = Convert.ToDateTime(start);
            DateTime maxDate = Convert.ToDateTime(end);
            chart1.ChartAreas[0].AxisX.Minimum = minDate.ToOADate();
            chart1.ChartAreas[0].AxisX.Maximum = maxDate.ToOADate();
        }

        private async void buttonPDF_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "Text files(*.pdf)|*.pdf|All files(*.*)|*.*";

            if (saveFileDialog.ShowDialog() == DialogResult.Cancel)
                return;

            string filename = saveFileDialog.FileName;

            Word.Document doc = null;
            Word.Application app = new Word.Application();

            string source = AppDomain.CurrentDomain.BaseDirectory + "patternReport.docx";
            doc = app.Documents.Open(source);
            doc.Activate();

            doc.SaveAs2(AppDomain.CurrentDomain.BaseDirectory + @"patternReport2.docx");
            doc.Close();
            doc = null;

            doc = app.Documents.Open(AppDomain.CurrentDomain.BaseDirectory + @"patternReport2.docx");
            doc.Activate();

            Word.Bookmarks wBookmarks = doc.Bookmarks;
            Word.Range wRange;

            var start = dateTimePicker1.Value.ToString("yyyy-MM-dd") + "T00:00:00.000";
            var end = dateTimePicker2.Value.ToString("yyyy-MM-dd") + "T23:59:00.000";
            string query = "";
            switch (comboBoxTypes.SelectedIndex)
            {
                case 0:
                    query = $@"select Convert(date, o.datetime_create) as 'Дата', COUNT(os.id) as 'Количество услуг' from Orders o
                            inner join OrdersServices os on os.id_order = o.id
                            Where o.datetime_create >= '{start}' and o.datetime_create <= '{end}'
                            group by o.datetime_create";
                    break;
                case 2:
                    query = $@"select Convert(date, DATEADD(DAY, DATEDIFF(DAY, 0, o.datetime_create), 0)) as 'Дата', COUNT(o.id) as 'Количество заказов' from Orders o
                               Where o.datetime_create >= '{start}' and o.datetime_create <= '{end}'
                               group by DATEADD(DAY, DATEDIFF(DAY, 0, o.datetime_create), 0)";
                    break;
                case 1:
                    query = $@"select Convert(date, DATEADD(DAY, DATEDIFF(DAY, 0, o.datetime_create), 0)) as 'Дата', COUNT(o.id) as 'Количество заказов', s.name as 'Услуга' from Orders o
                               inner join OrdersServices os on os.id_order = o.id
                               inner join Services s on s.id = os.id_service
                               Where o.datetime_create >= '{start}' and o.datetime_create <= '{end}'
                               group by DATEADD(DAY, DATEDIFF(DAY, 0, o.datetime_create), 0), s.name
                               order by DATEADD(DAY, DATEDIFF(DAY, 0, o.datetime_create), 0)";
                    break;
            }
            var result = await db.SelectQuery(query);

            var selectedVid = comboBoxVid.SelectedIndex;

            try
            {
                switch (selectedVid)
                {
                    case 2:
                        Word.Range range = app.Selection.Range;
                        Object behiavor = Word.WdDefaultTableBehavior.wdWord9TableBehavior;
                        Object autoFitBehiavor = Word.WdAutoFitBehavior.wdAutoFitFixed;
                        int columns = result.Columns.Count;
                        int rows = result.Rows.Count;
                        doc.Bookmarks.get_Item("s1").Range.Tables.Add(doc.Bookmarks.get_Item("s1").Range, rows + 1, columns, ref behiavor, ref autoFitBehiavor);
                        for (int i = 1; i <= columns; i++)
                        {
                            doc.Tables[1].Cell(1, i).Range.Text = result.Columns[i - 1].ColumnName;

                            for (int j = 0; j < rows; j++)
                            {
                                doc.Tables[1].Cell(j + 2, i).Range.Text = result.Rows[j][i - 1].ToString();
                            }
                        }
                        doc.SaveAs2(AppDomain.CurrentDomain.BaseDirectory + "testReport.docx");
                        doc.SaveAs2(filename, Word.WdSaveFormat.wdFormatPDF);
                        break;
                    case 1:
                        var tmp = Path.GetTempFileName();
                        tmp = tmp.Substring(0, tmp.LastIndexOf(".") + 1) + "png";
                        chart1.SaveImage(tmp, ChartImageFormat.Png);
                        doc.InlineShapes.AddPicture(tmp, Type.Missing, Type.Missing, doc.Bookmarks["s2"].Range);
                        doc.SaveAs2(AppDomain.CurrentDomain.BaseDirectory + "testReport.docx");
                        doc.SaveAs2(filename, Word.WdSaveFormat.wdFormatPDF);
                        break;
                    case 0:
                        var tmp1 = Path.GetTempFileName();
                        tmp1 = tmp1.Substring(0, tmp1.LastIndexOf(".") + 1) + "png";
                        chart1.SaveImage(tmp1, ChartImageFormat.Png);
                        doc.InlineShapes.AddPicture(tmp1, Type.Missing, Type.Missing, doc.Bookmarks["s2"].Range);

                        Word.Range range1 = app.Selection.Range;
                        Object behiavor1 = Word.WdDefaultTableBehavior.wdWord9TableBehavior;
                        Object autoFitBehiavor1 = Word.WdAutoFitBehavior.wdAutoFitFixed;
                        int columns1 = result.Columns.Count;
                        int rows1 = result.Rows.Count;
                        doc.Bookmarks.get_Item("s1").Range.Tables.Add(doc.Bookmarks.get_Item("s1").Range, rows1 + 1, columns1, ref behiavor1, ref autoFitBehiavor1);
                        for (int i = 1; i <= columns1; i++)
                        {
                            doc.Tables[1].Cell(1, i).Range.Text = result.Columns[i - 1].ColumnName;

                            for (int j = 0; j < rows1; j++)
                            {
                                doc.Tables[1].Cell(j + 2, i).Range.Text = result.Rows[j][i - 1].ToString();
                            }
                        }

                        doc.SaveAs2(AppDomain.CurrentDomain.BaseDirectory + "testReport.docx");
                        doc.SaveAs2(filename, Word.WdSaveFormat.wdFormatPDF);
                        break;
                }
            }
            catch (Exception)
            {
                doc.Close();
                doc = null;
                MessageBox.Show("Не удалось сохранить отчет", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            finally
            {
                doc.Close();
                doc = null;
            }

            MessageBox.Show("Отчет сохранен", "Уведомление", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}
