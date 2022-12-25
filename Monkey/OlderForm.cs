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
using ZXing;
using Word = Microsoft.Office.Interop.Word;

namespace Monkey
{
    public partial class OlderForm : MaketForm
    {
        private db db;
        private bool orderClick = false;
        private const int uniqueNumber = 123456;
        private const string hrefSaveBarcode = "..\\..\\Barcodes";
        private const string hrefSavePdf = "..\\..\\PDF";

        private string stringHrefSavePdf = hrefSavePdf;
        private string stringHrefSave = hrefSaveBarcode;
        private int id_order;
        private decimal sum;
        private BindingList<Clients> clients;
        private BindingList<Services> services;
        List<Clients> listClients = new List<Clients>();
        public OlderForm()
        {
            InitializeComponent();

            db = new db();

            buttonAddClient.Enabled = false;
            buttonAddService.Enabled = false;
            buttonSaveToPdf.Enabled = false;
            buttonCreateOrder.Enabled = false;

            labelWarning.ForeColor = ColorTwo;
            buttonAddClient.BackColor = ColorTwo;
            buttonAddService.BackColor = ColorTwo;
            buttonClearForm.BackColor = ColorTwo;
            buttonCreateOrder.BackColor = ColorTwo;
            buttonSaveToPdf.BackColor = ColorTwo;

            buttonAcceptOrder.BackColor = ColorTwo;
            dataGridView1.DefaultCellStyle.BackColor = ColorOne;
            dataGridView1.DefaultCellStyle.SelectionBackColor = ColorTwo;
            dataGridView1.BackgroundColor = ColorOne;
        }

        private async void OlderForm_Load(object sender, EventArgs e)
        {
            string querySelectIdOrder = "select max(id) from Orders";
            var resultSelectIdOrder = await db.SelectQuery(querySelectIdOrder);
            id_order = (int)resultSelectIdOrder.Rows[0][0] + 1;
            textBoxId.Text = id_order.ToString();

            string querySelectClient = "SELECT id, name, surname, patronymic, birth_of_date, adress, email, series_passport, number_passport FROM Clients";
            var resultSelectClient = await db.SelectQuery(querySelectClient);
            //var listClients = new List<Clients>();
            foreach (DataRow item in resultSelectClient.Rows)
            {
                listClients.Add(new Clients()
                {
                    id = (int)item[0],
                    name = (string)item[1],
                    surname = (string)item[2],
                    patronymic = (string)item[3],
                    birthOfDate = (DateTime)item[4],
                    adress = (string)item[5],
                    email = (string)item[6],
                    seriesPassport = (int)item[7],
                    numberPassport = (int)item[8]
                });
            }

            string querySelectService = "SELECT id, name, price FROM Services";
            var resultSelectService = await db.SelectQuery(querySelectService);
            var listServices = new List<Services>();
            foreach (DataRow item in resultSelectService.Rows)
            {
                listServices.Add(new Services()
                {
                    id = (int)item[0],
                    name = (string)item[1],
                    price = (decimal)item[2]
                });
            }
            clients = new BindingList<Clients>(listClients);
            services = new BindingList<Services>(listServices);
            comboBoxClients.DataSource = clients;
            comboBoxServices.DataSource = services;

            string query = @"SELECT a.id as 'Номер заказа', a.datetime_create as 'Дата создания', b.surname as 'Фамилия', b.name as 'Имя', b.patronymic as 'Отчество' from Orders as a inner join Clients as b on a.id_client = b.id where a.id_status = 2 or a.id_status = 1";
            var result = await db.SelectQuery(query);
            dataGridView1.DataSource = result;
        }

        private void textBoxId_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter && orderClick == false)
            {
                if (Convert.ToInt32(textBoxId.Text) < id_order)
                {
                    MessageBox.Show("Номер заказа занят", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    textBoxId.Text = id_order.ToString();
                    return;
                }
                textBoxId.ReadOnly = true;
                labelWarning.Visible = false;
                id_order = Convert.ToInt32(textBoxId.Text);
                orderClick = true;
                buttonAddClient.Enabled = true;
                buttonAddService.Enabled = true;
                CreateBarcode();
            }
        }

        private void CreateBarcode()
        {
            DateTime dateTime = DateTime.Now;

            string encodeTxt = id_order.ToString() + dateTime.Year.ToString() + dateTime.Month.ToString() + dateTime.Day.ToString() + dateTime.Hour.ToString() + dateTime.Minute.ToString() + uniqueNumber.ToString();
            BarcodeWriter writer = new BarcodeWriter() { Format = BarcodeFormat.CODE_128 };
            pictureBox2.Image = writer.Write(encodeTxt);

            textBoxDuration.Enabled = true;
        }

        private void buttonAddClient_Click(object sender, EventArgs e)
        {
            var frm = new AddClientFormcs();
            frm.Owner = this;
            frm.ShowDialog();
        }

        internal void AddClientList(Clients newClient)
        {
            clients.Add(newClient);
            comboBoxClients.SelectedIndex = clients.Count - 1;
        }

        private void buttonAddService_Click(object sender, EventArgs e)
        {
            if (int.TryParse(textBoxDuration.Text, out int n) && Convert.ToInt32(textBoxDuration.Text) > 0 && !string.IsNullOrWhiteSpace(textBoxDuration.Text))
            {
                var selectedService = comboBoxServices.SelectedItem as Services;
                buttonCreateOrder.Enabled = true;
                listBoxSelectedServices.Items.Add(selectedService);
                sum = sum + (selectedService.price * Convert.ToInt32(textBoxDuration.Text));
                labelPrice.Text = "Итог: " + Math.Round(sum, 2);
            }
            else
            {
                MessageBox.Show("Некорректный ввод", "Предупреждение", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void buttonClearForm_Click(object sender, EventArgs e)
        {
            id_order++;
            listBoxSelectedServices.Items.Clear();
            pictureBox2.Image = null;
            textBoxId.ReadOnly = false;
            textBoxDuration.Text = string.Empty;
            textBoxDuration.Enabled = false;
            textBoxId.Text = id_order.ToString();
            labelWarning.Visible = true;
            orderClick = false;
            buttonAddClient.Enabled = false;
            buttonAddService.Enabled = false;
            buttonSaveToPdf.Enabled = false;
            buttonCreateOrder.Enabled = false;
            sum = 0;
            labelPrice.Text = "Итог: ";
        }

        private async void buttonCreateOrder_Click(object sender, EventArgs e)
        {
            if (listBoxSelectedServices.Items.Count < 1)
            {
                MessageBox.Show("Выберите услуги", "Предупреждение", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            var dateTimeCreate = DateTime.Now;
            int rentalTime = Convert.ToInt32(textBoxDuration.Text);

            string querySelectIdOrder = "select max(id) from Orders";
            var resultSelectIdOrder = await db.SelectQuery(querySelectIdOrder);

            var newOrder = new Orders()
            {
                id = id_order,
                dateTimeCreate = dateTimeCreate,
                clientId = ((Clients)comboBoxClients.SelectedItem).id,
                statusId = 1,
                rentalTime = rentalTime,
            };
            try
            {
                string queryInsertOrder = $"insert Orders(id, datetime_create, id_client, id_status, rental_time, id_employee) values({newOrder.id},getdate(),{newOrder.clientId},{newOrder.statusId},{newOrder.rentalTime},{TransferUser.id})";
                await db.InsertQuery(queryInsertOrder);
                pictureBox2.Image.Save(Path.Combine(stringHrefSave, $"Заказ №{newOrder.id}.jpeg"), System.Drawing.Imaging.ImageFormat.Jpeg);
                MessageBox.Show("Заказ успешно сформирован", "Уведомление", MessageBoxButtons.OK, MessageBoxIcon.Information);
                buttonSaveToPdf.Enabled = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Не удалось загрузить в БД\n" + ex);
                throw;
            }
        }

        private void buttonSaveToPdf_Click(object sender, EventArgs e)
        {
            Word.Document doc = null;
            Word.Application app = new Word.Application();

            string source = AppDomain.CurrentDomain.BaseDirectory + "pattern.docx";
            doc = app.Documents.Open(source);
            doc.Activate();

            doc.SaveAs2(AppDomain.CurrentDomain.BaseDirectory + @"pattern2.docx");
            doc.Close();
            doc = null;

            doc = app.Documents.Open(AppDomain.CurrentDomain.BaseDirectory + @"pattern2.docx");
            doc.Activate();

            Word.Bookmarks wBookmarks = doc.Bookmarks;
            Word.Range wRange;

            var client = ((Clients)comboBoxClients.SelectedItem);

            int i = 0;
            string[] data = new string[4] { $"{id_order}", $"{DateTime.Now.ToString("f")}", $"{client.id}", $"{client}" };

            foreach (Word.Bookmark mark in wBookmarks)
            {

                wRange = mark.Range;
                wRange.Text = data[i];
                var d = wRange.InlineShapes;
                i++;
                if (i >= data.Length)
                {
                    break;
                }
            }

            wRange = wBookmarks[5].Range;
            wRange.Text = Math.Round(sum, 2).ToString();

            Word.Range range = app.Selection.Range;
            Object behiavor = Word.WdDefaultTableBehavior.wdWord9TableBehavior;
            Object autoFitBehiavor = Word.WdAutoFitBehavior.wdAutoFitFixed;

            int columns = 2;
            int rows = listBoxSelectedServices.Items.Count;
            doc.Bookmarks.get_Item("s6").Range.Tables.Add(doc.Bookmarks.get_Item("s6").Range, rows + 1, columns, ref behiavor, ref autoFitBehiavor);
            doc.Tables[1].Cell(1, 1).Range.Text = "Наименование";
            doc.Tables[1].Cell(1, 2).Range.Text = "Стоимость";
            for (int j = 0; j < rows; j++)
            {
                doc.Tables[1].Cell(j + 2, 1).Range.Text = ((Services)listBoxSelectedServices.Items[j]).name;
                doc.Tables[1].Cell(j + 2, 2).Range.Text = Math.Round(((Services)listBoxSelectedServices.Items[j]).price, 2).ToString();
            }

            doc.SaveAs2(AppDomain.CurrentDomain.BaseDirectory + "test.docx");
            string test = Environment.CurrentDirectory + $"\\Заказ №{id_order}.pdf";
            doc.SaveAs2(test, WdSaveFormat.wdFormatPDF);
            doc.Close();
            doc = null;

            MessageBox.Show("Чек сохранен", "Уведомление", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private async void buttonAcceptOrder_Click(object sender, EventArgs e)
        {
            var selectedRow = dataGridView1.SelectedRows[0];
            int selectedCell = Convert.ToInt32(selectedRow.Cells[0].Value);

            string queryUpdateOrder = $"update Orders set id_status = 3 where id = {selectedCell}";
            await db.UpdateQuery(queryUpdateOrder);
            MessageBox.Show("Заказ принят", "Уведомление", MessageBoxButtons.OK, MessageBoxIcon.Information);

            string query = @"SELECT a.id as 'Номер заказа', a.datetime_create as 'Дата создания', b.surname as 'Фамилия', b.name as 'Имя', b.patronymic as 'Отчество' from Orders as a inner join Clients as b on a.id_client = b.id where a.id_status = 2 or a.id_status = 1";
            var result = await db.SelectQuery(query);
            dataGridView1.DataSource = result;
        }
    }
}
