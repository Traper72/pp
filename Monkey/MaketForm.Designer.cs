namespace Monkey
{
    partial class MaketForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MaketForm));
            this.panelMain = new System.Windows.Forms.Panel();
            this.labelFIO = new System.Windows.Forms.Label();
            this.pictureUser = new System.Windows.Forms.PictureBox();
            this.labelSessionTime = new System.Windows.Forms.Label();
            this.timerSession = new System.Windows.Forms.Timer(this.components);
            this.panelMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureUser)).BeginInit();
            this.SuspendLayout();
            // 
            // panelMain
            // 
            this.panelMain.Controls.Add(this.labelFIO);
            this.panelMain.Controls.Add(this.pictureUser);
            this.panelMain.Controls.Add(this.labelSessionTime);
            this.panelMain.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelMain.Font = new System.Drawing.Font("Comic Sans MS", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.panelMain.Location = new System.Drawing.Point(0, 0);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(1065, 71);
            this.panelMain.TabIndex = 0;
            // 
            // labelFIO
            // 
            this.labelFIO.AutoSize = true;
            this.labelFIO.Dock = System.Windows.Forms.DockStyle.Right;
            this.labelFIO.Font = new System.Drawing.Font("Comic Sans MS", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelFIO.Location = new System.Drawing.Point(937, 0);
            this.labelFIO.Name = "labelFIO";
            this.labelFIO.Padding = new System.Windows.Forms.Padding(0, 15, 0, 0);
            this.labelFIO.Size = new System.Drawing.Size(53, 54);
            this.labelFIO.TabIndex = 2;
            this.labelFIO.Text = "fio";
            // 
            // pictureUser
            // 
            this.pictureUser.Dock = System.Windows.Forms.DockStyle.Right;
            this.pictureUser.Location = new System.Drawing.Point(990, 0);
            this.pictureUser.Name = "pictureUser";
            this.pictureUser.Size = new System.Drawing.Size(75, 71);
            this.pictureUser.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureUser.TabIndex = 1;
            this.pictureUser.TabStop = false;
            // 
            // labelSessionTime
            // 
            this.labelSessionTime.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.labelSessionTime.AutoSize = true;
            this.labelSessionTime.Font = new System.Drawing.Font("Comic Sans MS", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelSessionTime.Location = new System.Drawing.Point(13, 26);
            this.labelSessionTime.Name = "labelSessionTime";
            this.labelSessionTime.Size = new System.Drawing.Size(226, 24);
            this.labelSessionTime.TabIndex = 0;
            this.labelSessionTime.Text = "Конец сеанса через: 10:00";
            // 
            // timerSession
            // 
            this.timerSession.Interval = 1000;
            this.timerSession.Tick += new System.EventHandler(this.timerSession_Tick);
            // 
            // MaketForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1065, 537);
            this.Controls.Add(this.panelMain);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MaketForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "MaketForm";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.MaketForm_FormClosed);
            this.Load += new System.EventHandler(this.MaketForm_Load);
            this.panelMain.ResumeLayout(false);
            this.panelMain.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureUser)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.Label labelFIO;
        private System.Windows.Forms.PictureBox pictureUser;
        private System.Windows.Forms.Label labelSessionTime;
        private System.Windows.Forms.Timer timerSession;
    }
}