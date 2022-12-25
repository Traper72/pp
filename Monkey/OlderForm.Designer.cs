namespace Monkey
{
    partial class OlderForm
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
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.buttonAcceptOrder = new System.Windows.Forms.Button();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Font = new System.Drawing.Font("Comic Sans MS", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.tabControl1.Location = new System.Drawing.Point(0, 71);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(685, 563);
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
            this.tabPage1.Size = new System.Drawing.Size(677, 526);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Новый заказ";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(21, 103);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(163, 24);
            this.label5.TabIndex = 48;
            this.label5.Text = "Выберите клиента";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(22, 222);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(153, 24);
            this.label4.TabIndex = 47;
            this.label4.Text = "Выберите услуги";
            // 
            // labelPrice
            // 
            this.labelPrice.AutoSize = true;
            this.labelPrice.Location = new System.Drawing.Point(22, 480);
            this.labelPrice.Margin = new System.Windows.Forms.Padding(3, 5, 3, 0);
            this.labelPrice.Name = "labelPrice";
            this.labelPrice.Size = new System.Drawing.Size(54, 24);
            this.labelPrice.TabIndex = 44;
            this.labelPrice.Text = "Итог:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(466, 14);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(96, 24);
            this.label3.TabIndex = 46;
            this.label3.Text = "Штрих код";
            // 
            // listBoxSelectedServices
            // 
            this.listBoxSelectedServices.FormattingEnabled = true;
            this.listBoxSelectedServices.ItemHeight = 24;
            this.listBoxSelectedServices.Location = new System.Drawing.Point(25, 324);
            this.listBoxSelectedServices.Name = "listBoxSelectedServices";
            this.listBoxSelectedServices.Size = new System.Drawing.Size(399, 148);
            this.listBoxSelectedServices.TabIndex = 42;
            // 
            // pictureBox2
            // 
            this.pictureBox2.Location = new System.Drawing.Point(461, 54);
            this.pictureBox2.Margin = new System.Windows.Forms.Padding(20);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(191, 158);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox2.TabIndex = 33;
            this.pictureBox2.TabStop = false;
            // 
            // buttonAddService
            // 
            this.buttonAddService.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonAddService.Font = new System.Drawing.Font("Comic Sans MS", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonAddService.Location = new System.Drawing.Point(26, 287);
            this.buttonAddService.Name = "buttonAddService";
            this.buttonAddService.Size = new System.Drawing.Size(97, 31);
            this.buttonAddService.TabIndex = 37;
            this.buttonAddService.Text = "Добавить";
            this.buttonAddService.UseVisualStyleBackColor = true;
            this.buttonAddService.Click += new System.EventHandler(this.buttonAddService_Click);
            // 
            // buttonAddClient
            // 
            this.buttonAddClient.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonAddClient.Location = new System.Drawing.Point(24, 172);
            this.buttonAddClient.Name = "buttonAddClient";
            this.buttonAddClient.Size = new System.Drawing.Size(200, 40);
            this.buttonAddClient.TabIndex = 38;
            this.buttonAddClient.Text = "Добавить клиента";
            this.buttonAddClient.UseVisualStyleBackColor = true;
            this.buttonAddClient.Click += new System.EventHandler(this.buttonAddClient_Click);
            // 
            // comboBoxServices
            // 
            this.comboBoxServices.FormattingEnabled = true;
            this.comboBoxServices.Location = new System.Drawing.Point(25, 249);
            this.comboBoxServices.Margin = new System.Windows.Forms.Padding(10, 20, 3, 3);
            this.comboBoxServices.Name = "comboBoxServices";
            this.comboBoxServices.Size = new System.Drawing.Size(399, 32);
            this.comboBoxServices.TabIndex = 32;
            // 
            // buttonClearForm
            // 
            this.buttonClearForm.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonClearForm.Location = new System.Drawing.Point(442, 451);
            this.buttonClearForm.Name = "buttonClearForm";
            this.buttonClearForm.Size = new System.Drawing.Size(210, 53);
            this.buttonClearForm.TabIndex = 45;
            this.buttonClearForm.Text = "Очистить форму";
            this.buttonClearForm.UseVisualStyleBackColor = true;
            this.buttonClearForm.Click += new System.EventHandler(this.buttonClearForm_Click);
            // 
            // comboBoxClients
            // 
            this.comboBoxClients.FormattingEnabled = true;
            this.comboBoxClients.Location = new System.Drawing.Point(24, 130);
            this.comboBoxClients.Margin = new System.Windows.Forms.Padding(20, 3, 3, 3);
            this.comboBoxClients.Name = "comboBoxClients";
            this.comboBoxClients.Size = new System.Drawing.Size(300, 32);
            this.comboBoxClients.TabIndex = 39;
            // 
            // buttonSaveToPdf
            // 
            this.buttonSaveToPdf.Enabled = false;
            this.buttonSaveToPdf.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonSaveToPdf.Location = new System.Drawing.Point(442, 329);
            this.buttonSaveToPdf.Name = "buttonSaveToPdf";
            this.buttonSaveToPdf.Size = new System.Drawing.Size(210, 53);
            this.buttonSaveToPdf.TabIndex = 43;
            this.buttonSaveToPdf.Text = "Сохранить в PDF";
            this.buttonSaveToPdf.UseVisualStyleBackColor = true;
            this.buttonSaveToPdf.Click += new System.EventHandler(this.buttonSaveToPdf_Click);
            // 
            // textBoxDuration
            // 
            this.textBoxDuration.Enabled = false;
            this.textBoxDuration.Location = new System.Drawing.Point(461, 259);
            this.textBoxDuration.MaxLength = 2;
            this.textBoxDuration.Name = "textBoxDuration";
            this.textBoxDuration.Size = new System.Drawing.Size(155, 31);
            this.textBoxDuration.TabIndex = 41;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(457, 222);
            this.label2.Margin = new System.Windows.Forms.Padding(15, 30, 5, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(195, 24);
            this.label2.TabIndex = 40;
            this.label2.Text = "Введите кол-во часов:";
            // 
            // buttonCreateOrder
            // 
            this.buttonCreateOrder.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonCreateOrder.Location = new System.Drawing.Point(442, 390);
            this.buttonCreateOrder.Name = "buttonCreateOrder";
            this.buttonCreateOrder.Size = new System.Drawing.Size(210, 53);
            this.buttonCreateOrder.TabIndex = 36;
            this.buttonCreateOrder.Text = "Оформить заказ";
            this.buttonCreateOrder.UseVisualStyleBackColor = true;
            this.buttonCreateOrder.Click += new System.EventHandler(this.buttonCreateOrder_Click);
            // 
            // labelWarning
            // 
            this.labelWarning.AutoSize = true;
            this.labelWarning.ForeColor = System.Drawing.Color.LimeGreen;
            this.labelWarning.Location = new System.Drawing.Point(26, 70);
            this.labelWarning.Margin = new System.Windows.Forms.Padding(10, 0, 3, 0);
            this.labelWarning.Name = "labelWarning";
            this.labelWarning.Size = new System.Drawing.Size(234, 24);
            this.labelWarning.TabIndex = 35;
            this.labelWarning.Text = "Подтвердите номер заказа!";
            // 
            // textBoxId
            // 
            this.textBoxId.Location = new System.Drawing.Point(174, 27);
            this.textBoxId.Name = "textBoxId";
            this.textBoxId.Size = new System.Drawing.Size(150, 31);
            this.textBoxId.TabIndex = 34;
            this.textBoxId.KeyDown += new System.Windows.Forms.KeyEventHandler(this.textBoxId_KeyDown);
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.dataGridView1);
            this.tabPage2.Controls.Add(this.buttonAcceptOrder);
            this.tabPage2.Location = new System.Drawing.Point(4, 33);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(677, 526);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Принять заказ";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.InactiveCaption;
            this.dataGridView1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dataGridView1.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.GridColor = System.Drawing.Color.LimeGreen;
            this.dataGridView1.Location = new System.Drawing.Point(0, 2);
            this.dataGridView1.MultiSelect = false;
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersVisible = false;
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(674, 469);
            this.dataGridView1.TabIndex = 5;
            // 
            // buttonAcceptOrder
            // 
            this.buttonAcceptOrder.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonAcceptOrder.Font = new System.Drawing.Font("Comic Sans MS", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonAcceptOrder.Location = new System.Drawing.Point(469, 474);
            this.buttonAcceptOrder.Name = "buttonAcceptOrder";
            this.buttonAcceptOrder.Size = new System.Drawing.Size(205, 49);
            this.buttonAcceptOrder.TabIndex = 4;
            this.buttonAcceptOrder.Text = "Принять заказ";
            this.buttonAcceptOrder.UseVisualStyleBackColor = true;
            this.buttonAcceptOrder.Click += new System.EventHandler(this.buttonAcceptOrder_Click);
            // 
            // OlderForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(685, 634);
            this.Controls.Add(this.tabControl1);
            this.Name = "OlderForm";
            this.Text = "Форма старшего смены";
            this.Load += new System.EventHandler(this.OlderForm_Load);
            this.Controls.SetChildIndex(this.tabControl1, 0);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.tabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
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
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button buttonAcceptOrder;
    }
}