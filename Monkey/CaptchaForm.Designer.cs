namespace Monkey
{
    partial class CaptchaForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CaptchaForm));
            this.buttonCheck = new System.Windows.Forms.Button();
            this.buttonUpdate = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.pictureBoxCapcha = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxCapcha)).BeginInit();
            this.SuspendLayout();
            // 
            // buttonCheck
            // 
            this.buttonCheck.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonCheck.Font = new System.Drawing.Font("Comic Sans MS", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonCheck.Location = new System.Drawing.Point(153, 247);
            this.buttonCheck.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.buttonCheck.Name = "buttonCheck";
            this.buttonCheck.Size = new System.Drawing.Size(125, 37);
            this.buttonCheck.TabIndex = 8;
            this.buttonCheck.Text = "Ок";
            this.buttonCheck.UseVisualStyleBackColor = true;
            this.buttonCheck.Click += new System.EventHandler(this.buttonCheck_Click);
            // 
            // buttonUpdate
            // 
            this.buttonUpdate.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonUpdate.Font = new System.Drawing.Font("Comic Sans MS", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonUpdate.Location = new System.Drawing.Point(11, 247);
            this.buttonUpdate.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.buttonUpdate.Name = "buttonUpdate";
            this.buttonUpdate.Size = new System.Drawing.Size(125, 37);
            this.buttonUpdate.TabIndex = 7;
            this.buttonUpdate.Text = "Изменить";
            this.buttonUpdate.UseVisualStyleBackColor = true;
            this.buttonUpdate.Click += new System.EventHandler(this.buttonUpdate_Click);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(11, 206);
            this.textBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(266, 26);
            this.textBox1.TabIndex = 6;
            // 
            // pictureBoxCapcha
            // 
            this.pictureBoxCapcha.Location = new System.Drawing.Point(11, 12);
            this.pictureBoxCapcha.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pictureBoxCapcha.Name = "pictureBoxCapcha";
            this.pictureBoxCapcha.Size = new System.Drawing.Size(266, 188);
            this.pictureBoxCapcha.TabIndex = 5;
            this.pictureBoxCapcha.TabStop = false;
            // 
            // CaptchaForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(286, 290);
            this.Controls.Add(this.buttonCheck);
            this.Controls.Add(this.buttonUpdate);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.pictureBoxCapcha);
            this.Font = new System.Drawing.Font("Comic Sans MS", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "CaptchaForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "CaptchaForm";
            this.Load += new System.EventHandler(this.CaptchaForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxCapcha)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buttonCheck;
        private System.Windows.Forms.Button buttonUpdate;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.PictureBox pictureBoxCapcha;
    }
}