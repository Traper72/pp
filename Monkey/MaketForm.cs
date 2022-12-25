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

namespace Monkey
{
    public partial class MaketForm : Form
    {
        private const string imgHref = "..\\..\\imgUser";
        private Timer timerSesstion;
        private int sesDuration = 600;

        public readonly Color ColorOne = Color.FromArgb(118, 227, 131);
        public readonly Color ColorTwo = Color.FromArgb(73, 140, 81);
        public MaketForm()
        {
            InitializeComponent();

            panelMain.BorderStyle = BorderStyle.None;
            panelMain.BackColor = ColorOne;
        }

        private void MaketForm_Load(object sender, EventArgs e)
        {
            labelFIO.Text = $"{TransferUser.surname} {TransferUser.name[0]} {TransferUser.patronymic[0]}";
            pictureUser.ImageLocation = Path.Combine(imgHref, TransferUser.imgHref);
            timerSession.Start();
        }

        private void MaketForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (Owner is Form1 owner)
            {
                owner.Show();
            }
            else
            {
                Application.Exit();
            }
        }

        private void timerSession_Tick(object sender, EventArgs e)
        {
            sesDuration--;
            labelSessionTime.Text = "Конец сеанса через: " + TimeSpan.FromMinutes(sesDuration).ToString(@"hh\:mm");

            if (sesDuration == 300)
            {
                MessageBox.Show("Сеанс закончится через 5 минут", "Предупреждение", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            if (sesDuration < 1)
            {
                if (Owner is Form1 owner)
                {
                    owner.Show();
                }
                this.Close();
            }
        }
    }
}
