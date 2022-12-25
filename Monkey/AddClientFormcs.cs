using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Monkey
{
    public partial class AddClientFormcs : Form
    {
        public readonly Color ColorOne = Color.FromArgb(118, 227, 131);
        public readonly Color ColorTwo = Color.FromArgb(73, 140, 81);
        private db db;
        public AddClientFormcs()
        {
            InitializeComponent();
            db = new db();

            button1.BackColor = ColorTwo;
            buttonAdd.BackColor = ColorTwo;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private async void buttonAdd_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrWhiteSpace(textBoxName.Text)
               || String.IsNullOrWhiteSpace(textBoxSurname.Text)
               || String.IsNullOrWhiteSpace(textBoxPatronymic.Text)
               || String.IsNullOrWhiteSpace(textBoxAdress.Text)
               || String.IsNullOrWhiteSpace(textBoxSeriesPassport.Text)
               || String.IsNullOrWhiteSpace(textBoxNumberPassport.Text)
               || String.IsNullOrWhiteSpace(textBoxEmail.Text))
            {
                MessageBox.Show("Заполните все поля");
                return;
            }

            string queryNewId = "select max(id) from Clients";
            var resultNewId = await db.SelectQuery(queryNewId);
            int newId = (int)resultNewId.Rows[0][0] + 1;

            var newClient = new Clients()
            {
                id = newId,
                name = textBoxName.Text,
                surname = textBoxSurname.Text,
                patronymic = textBoxPatronymic.Text,
                adress = textBoxAdress.Text,
                email = textBoxEmail.Text,
                seriesPassport = int.Parse(textBoxSeriesPassport.Text),
                numberPassport = int.Parse(textBoxNumberPassport.Text),
                birthOfDate = dateTimePickerDateOfBirth.Value,
            };

            string queryInsertClient = $@"insert Clients(id, name, surname, patronymic, series_passport, number_passport, birth_of_date, adress, email)
                                          values({newClient.id},'{newClient.name}','{newClient.surname}','{newClient.patronymic}','{newClient.seriesPassport}','{newClient.numberPassport}','{newClient.birthOfDate}','{newClient.adress}','{newClient.email}')";
            var resultInsertClient = await db.InsertQuery(queryInsertClient);

            if (Owner is SellerForm owner)
            {
                ((SellerForm)Owner).AddClientList(newClient);
                MessageBox.Show("Клиент добавлен", "Предупреждение", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            this.Close();
        }
    }
}
