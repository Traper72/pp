using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Monkey
{
    public partial class Form1 : Form
    {
        private readonly Color ColorOne = Color.FromArgb(118, 227, 131);
        private readonly Color ColorTwo = Color.FromArgb(73, 140, 81);
        private int failCount = 0;
        internal bool captchaPassed = false;
        private int countTimer = 10;
        private db db;
        public Form1()
        {
            InitializeComponent();

            textBoxPassword.UseSystemPasswordChar= true;
            labelTimer.Visible = false;
            db = new db();
        }

        private async void buttonSignIn_Click(object sender, EventArgs e)
        {
            string log = textBoxName.Text;
            string pass = textBoxPassword.Text;

            if (failCount > 1)
            {
                var frm = new CaptchaForm();
                frm.Owner= this;
                frm.ShowDialog();

                if (captchaPassed == false)
                {
                    ban.Start();
                    labelTimer.Visible = true;
                    buttonSignIn.Enabled = false;
                    return;
                }
            }

            if (string.IsNullOrWhiteSpace(log) || string.IsNullOrWhiteSpace(pass))
            {
                MessageBox.Show("Введите логин и пароль");
                return;
            }

            string query = $"select id from Employees where login = '{log}'";

            var result = await db.SelectQuery(query);

            if (result.Rows.Count < 1)
            {
                failCount++;
                MessageBox.Show("Пользователя с данным логином не существует", "Предупреждение", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            int userId = (int)result.Rows[0][0];

            query = $"select id, id_position, surname, name, patronymic, imgHref from Employees where login = '{log}' and password = '{pass}'";
            result = await db.SelectQuery(query);

            if (result.Rows.Count < 1)
            {
                failCount++;
                MessageBox.Show("Неверный пароль", "Предупреждение", MessageBoxButtons.OK, MessageBoxIcon.Information);

                string querySelect = "select max(id) FROM LoginHistory";
                var result1 = await db.SelectQuery(querySelect);
                int count = (int)result1.Rows[0][0];
                string queryInsert = $"insert LoginHistory (id, id_employee, login_date, id_type_login) values({count + 1}, {userId}, GETDATE(), 2)";
                await db.InsertQuery(queryInsert);
            }
            else
            {
                var userRow = result.Rows[0];
                TransferUser.id = (int)userRow[0];
                TransferUser.positionId= (int)userRow[1];
                TransferUser.surname = (string)userRow[2];
                TransferUser.name= (string)userRow[3];
                TransferUser.patronymic = (string)userRow[4];
                TransferUser.imgHref= (string)userRow[5];

                string querySelectPosition = $"select name from Positions where id = {TransferUser.positionId}";
                var resultPos = await db.SelectQuery(querySelectPosition);
                string namePosition = (string)resultPos.Rows[0][0];

                MessageBox.Show($"ФИО: {TransferUser.surname} {TransferUser.name} {TransferUser.patronymic}\nРоль: {namePosition}", "Информация о пользователе", MessageBoxButtons.OK, MessageBoxIcon.Information);

                switch (TransferUser.positionId)
                {
                    case 1:
                        var frm = new SellerForm();
                        frm.Owner = this;
                        frm.Show();
                        break;
                    case 2:
                        var frm1 = new OlderForm();
                        frm1.Owner = this;
                        frm1.Show();
                        break;
                    case 3:
                        var frm2 = new AdminForm();
                        frm2.Owner = this;
                        frm2.Show();
                        break;
                }

                captchaPassed = false;
                failCount= 0;
                textBoxName.Text = String.Empty;
                textBoxPassword.Text = String.Empty;
                this.Hide();
                //Вывод id из таблицы LoginHistory
                string querySelect = "select count(id) from LoginHistory";
                var result1 = await db.SelectQuery(querySelect);
                int count = (int)result1.Rows[0][0];
                //Добавление новой строки в таблицу LoginHistory
                string queryInsert = $"insert LoginHistory (id, id_employee, login_date, id_type_login) values({count + 1}, {userId}, GETDATE(), 1)";
                await db.InsertQuery(queryInsert);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBoxPassword.UseSystemPasswordChar == true)
            {
                textBoxPassword.UseSystemPasswordChar = false;
            }
            else
            {
                textBoxPassword.UseSystemPasswordChar = true;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            buttonSignIn.BackColor = ColorTwo;
            button1.BackColor = ColorTwo;
            textBoxName.Text = "shiryev@namecomp.ru";
            textBoxPassword.Text = "RSbvHv";
        }

        private void ban_Tick(object sender, EventArgs e)
        {
            countTimer--;
            labelTimer.Text = "Повторите попытку через: " + countTimer;
            if (countTimer < 1)
            {
                labelTimer.Visible = false;
                buttonSignIn.Enabled = true;
                ((Timer)sender).Stop();
                countTimer = 10;
                labelTimer.Text = "Повторите попытку через: " + countTimer;
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
