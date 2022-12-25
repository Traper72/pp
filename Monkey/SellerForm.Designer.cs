namespace Monkey
{
    partial class SellerForm
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
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.labelPrice = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.listBoxSelectedServices = new System.Windows.Forms.ListBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.buttonAddService = new System.Windows.Forms.Button();
            this.buttonAddClient = new System.Windows.Forms.Button();
            this.comboBoxServices = new System.Windows.Forms.ComboBox();
            this.buttonClearForm = new System.Windows.Forms.Button();
            this.comboBoxClients = new System.Windows.Forms.ComboBox();
            this.buttonSaveToPdf = new System.Windows.Forms.Button();
            this.textBoxDuration = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.buttonCreateOrder = new System.Windows.Forms.Button();
            this.labelWarning = new System.Windows.Forms.Label();
            this.textBoxId = new System.Windows.Forms.TextBox();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Font = new System.Drawing.Font("Comic Sans MS", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.tabControl1.Location = new System.Drawing.Point(0, 71);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(673, 564);
            this.tabControl1.TabIndex = 1;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.label5);
            this.tabPage1.Controls.Add(this.label4);
            this.tabPage1.Controls.Add(this.labelPrice);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Controls.Add(this.listBoxSelectedServices);
            this.tabPage1.Controls.Add(this.pictureBox2);
            this.tabPage1.Controls.Add(this.buttonAddService);
            this.tabPage1.Controls.Add(this.buttonAddClient);
            this.tabPage1.Controls.Add(this.comboBoxServices);
            this.tabPage1.Controls.Add(this.buttonClearForm);
            this.tabPage1.Controls.Add(this.comboBoxClients);
            this.tabPage1.Controls.Add(this.buttonSaveToPdf);
            this.tabPage1.Controls.Add(this.textBoxDuration);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.buttonCreateOrder);
            this.tabPage1.Controls.Add(this.labelWarning);
            this.tabPage1.Controls.Add(this.textBoxId);
            this.tabPage1.Location = new System.Drawing.Point(4, 33);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(665, 527);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Новый заказ";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(17, 97);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(163, 24);
            this.label5.TabIndex = 31;
            this.label5.Text = "Выберите клиента";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(18, 216);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(153, 24);
            this.label4.TabIndex = 30;
            this.label4.Text = "Выберите услуги";
            // 
            // labelPrice
            // 
            this.labelPrice.AutoSize = true;
            this.labelPrice.Location = new System.Drawing.Point(18, 474);
            this.labelPrice.Margin = new System.Windows.Forms.Padding(3, 5, 3, 0);
            this.labelPrice.Name = "labelPrice";
            this.labelPrice.Size = new System.Drawing.Size(54, 24);
            this.labelPrice.TabIndex = 27;
            this.labelPrice.Text = "Итог:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(462, 8);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(96, 24);
            this.label3.TabIndex = 29;
            this.label3.Text = "Штрих код";
            // 
            // listBoxSelectedServices
            // 
            this.listBoxSelectedServices.FormattingEnabled = true;
            this.listBoxSelectedServices.ItemHeight = 24;
            this.listBoxSelectedServices.Location = new System.Drawing.Point(21, 318);
            this.listBoxSelectedServices.Name = "listBoxSelectedServices";
            this.listBoxSelectedServices.Size = new System.Drawing.Size(399, 148);
            this.listBoxSelectedServices.TabIndex = 25;
            // 
            // pictureBox2
            // 
            this.pictureBox2.Location = new System.Drawing.Point(457, 48);
            this.pictureBox2.Margin = new System.Windows.Forms.Padding(20);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(191, 158);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox2.TabIndex = 16;
            this.pictureBox2.TabStop = false;
            // 
            // buttonAddService
            // 
            this.buttonAddService.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonAddService.Font = new System.Drawing.Font("Comic Sans MS", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonAddService.Location = new System.Drawing.Point(22, 281);
            this.buttonAddService.Name = "buttonAddService";
            this.buttonAddService.Size = new System.Drawing.Size(97, 31);
            this.buttonAddService.TabIndex = 20;
            this.buttonAddService.Text = "Добавить";
            this.buttonAddService.UseVisualStyleBackColor = true;
            this.buttonAddService.Click += new System.EventHandler(this.buttonAddService_Click);
            // 
            // buttonAddClient
            // 
            this.buttonAddClient.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonAddClient.Location = new System.Drawing.Point(20, 166);
            this.buttonAddClient.Name = "buttonAddClient";
            this.buttonAddClient.Size = new System.Drawing.Size(200, 40);
            this.buttonAddClient.TabIndex = 21;
            this.buttonAddClient.Text = "Добавить клиента";
            this.buttonAddClient.UseVisualStyleBackColor = true;
            this.buttonAddClient.Click += new System.EventHandler(this.buttonAddClient_Click);
            // 
            // comboBoxServices
            // 
            this.comboBoxServices.FormattingEnabled = true;
            this.comboBoxServices.Location = new System.Drawing.Point(21, 243);
            this.comboBoxServices.Margin = new System.Windows.Forms.Padding(10, 20, 3, 3);
            this.comboBoxServices.Name = "comboBoxServices";
            this.comboBoxServices.Size = new System.Drawing.Size(399, 32);
            this.comboBoxServices.TabIndex = 15;
            // 
            // buttonClearForm
            // 
            this.buttonClearForm.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonClearForm.Location = new System.Drawing.Point(438, 445);
            this.buttonClearForm.Name = "buttonClearForm";
            this.buttonClearForm.Size = new System.Drawing.Size(210, 53);
            this.buttonClearForm.TabIndex = 28;
            this.buttonClearForm.Text = "Очистить форму";
            this.buttonClearForm.UseVisualStyleBackColor = true;
            this.buttonClearForm.Click += new System.EventHandler(this.buttonClearForm_Click);
            // 
            // comboBoxClients
            // 
            this.comboBoxClients.FormattingEnabled = true;
            this.comboBoxClients.Location = new System.Drawing.Point(20, 124);
            this.comboBoxClients.Margin = new System.Windows.Forms.Padding(20, 3, 3, 3);
            this.comboBoxClients.Name = "comboBoxClients";
            this.comboBoxClients.Size = new System.Drawing.Size(300, 32);
            this.comboBoxClients.TabIndex = 22;
            // 
            // buttonSaveToPdf
            // 
            this.buttonSaveToPdf.Enabled = false;
            this.buttonSaveToPdf.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonSaveToPdf.Location = new System.Drawing.Point(438, 323);
            this.buttonSaveToPdf.Name = "buttonSaveToPdf";
            this.buttonSaveToPdf.Size = new System.Drawing.Size(210, 53);
            this.buttonSaveToPdf.TabIndex = 26;
            this.buttonSaveToPdf.Text = "Сохранить в PDF";
            this.buttonSaveToPdf.UseVisualStyleBackColor = true;
            this.buttonSaveToPdf.Click += new System.EventHandler(this.buttonSaveToPdf_Click);
            // 
            // textBoxDuration
            // 
            this.textBoxDuration.Enabled = false;
            this.textBoxDuration.Location = new System.Drawing.Point(457, 253);
            this.textBoxDuration.MaxLength = 2;
            this.textBoxDuration.Name = "textBoxDuration";
            this.textBoxDuration.Size = new System.Drawing.Size(155, 31);
            this.textBoxDuration.TabIndex = 24;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(453, 216);
            this.label2.Margin = new System.Windows.Forms.Padding(15, 30, 5, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(195, 24);
            this.label2.TabIndex = 23;
            this.label2.Text = "Введите кол-во часов:";
            // 
            // buttonCreateOrder
            // 
            this.buttonCreateOrder.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonCreateOrder.Location = new System.Drawing.Point(438, 384);
            this.buttonCreateOrder.Name = "buttonCreateOrder";
            this.buttonCreateOrder.Size = new System.Drawing.Size(210, 53);
            this.buttonCreateOrder.TabIndex = 19;
            this.buttonCreateOrder.Text = "Оформить заказ";
            this.buttonCreateOrder.UseVisualStyleBackColor = true;
            this.buttonCreateOrder.Click += new System.EventHandler(this.buttonCreateOrder_Click);
            // 
            // labelWarning
            // 
            this.labelWarning.AutoSize = true;
            this.labelWarning.ForeColor = System.Drawing.Color.LimeGreen;
            this.labelWarning.Location = new System.Drawing.Point(22, 64);
            this.labelWarning.Margin = new System.Windows.Forms.Padding(10, 0, 3, 0);
            this.labelWarning.Name = "labelWarning";
            this.labelWarning.Size = new System.Drawing.Size(234, 24);
            this.labelWarning.TabIndex = 18;
            this.labelWarning.Text = "Подтвердите номер заказа!";
            // 
            // textBoxId
            // 
            this.textBoxId.Location = new System.Drawing.Point(170, 21);
            this.textBoxId.Name = "textBoxId";
            this.textBoxId.Size = new System.Drawing.Size(150, 31);
            this.textBoxId.TabIndex = 17;
            this.textBoxId.KeyDown += new System.Windows.Forms.KeyEventHandler(this.textBoxId_KeyDown);
            // 
            // SellerForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(673, 635);
            this.Controls.Add(this.tabControl1);
            this.Name = "SellerForm";
            this.Text = "Форма продавца";
            this.Load += new System.EventHandler(this.SellerForm_Load);
            this.Controls.SetChildIndex(this.tabControl1, 0);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label labelPrice;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ListBox listBoxSelectedServices;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.Button buttonAddService;
        private System.Windows.Forms.Button buttonAddClient;
        private System.Windows.Forms.ComboBox comboBoxServices;
        private System.Windows.Forms.Button buttonClearForm;
        private System.Windows.Forms.ComboBox comboBoxClients;
        private System.Windows.Forms.Button buttonSaveToPdf;
        private System.Windows.Forms.TextBox textBoxDuration;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button buttonCreateOrder;
        private System.Windows.Forms.Label labelWarning;
        private System.Windows.Forms.TextBox textBoxId;
    }
}