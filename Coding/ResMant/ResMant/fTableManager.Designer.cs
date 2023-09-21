
namespace ResMant
{
    partial class fTableManager
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.adminToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.thôngTinTaiKhoanToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.thôngTinCaNhânToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.đăngXuâtToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.panel2 = new System.Windows.Forms.Panel();
            this.lsvBill = new System.Windows.Forms.ListView();
            this.panel3 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.btnSwitchTable = new System.Windows.Forms.Button();
            this.cboSwitchTable = new System.Windows.Forms.ComboBox();
            this.btnDiscountUp = new System.Windows.Forms.Button();
            this.btnDiscountDown = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtDiscount = new System.Windows.Forms.TextBox();
            this.btnCheckOut = new System.Windows.Forms.Button();
            this.btnAddFood = new System.Windows.Forms.Button();
            this.panel4 = new System.Windows.Forms.Panel();
            this.btnFoodUp = new System.Windows.Forms.Button();
            this.txtFoodCount = new System.Windows.Forms.TextBox();
            this.btnFoodDown = new System.Windows.Forms.Button();
            this.cboFood = new System.Windows.Forms.ComboBox();
            this.cboCategory = new System.Windows.Forms.ComboBox();
            this.menuStrip1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Location = new System.Drawing.Point(0, 27);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(600, 629);
            this.panel1.TabIndex = 0;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.adminToolStripMenuItem,
            this.thôngTinTaiKhoanToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1115, 29);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // adminToolStripMenuItem
            // 
            this.adminToolStripMenuItem.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.adminToolStripMenuItem.Name = "adminToolStripMenuItem";
            this.adminToolStripMenuItem.Size = new System.Drawing.Size(68, 25);
            this.adminToolStripMenuItem.Text = "Admin";
            this.adminToolStripMenuItem.Click += new System.EventHandler(this.adminToolStripMenuItem_Click);
            // 
            // thôngTinTaiKhoanToolStripMenuItem
            // 
            this.thôngTinTaiKhoanToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.thôngTinCaNhânToolStripMenuItem,
            this.đăngXuâtToolStripMenuItem});
            this.thôngTinTaiKhoanToolStripMenuItem.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.thôngTinTaiKhoanToolStripMenuItem.Name = "thôngTinTaiKhoanToolStripMenuItem";
            this.thôngTinTaiKhoanToolStripMenuItem.Size = new System.Drawing.Size(156, 25);
            this.thôngTinTaiKhoanToolStripMenuItem.Text = "Thông tin tài khoản";
            // 
            // thôngTinCaNhânToolStripMenuItem
            // 
            this.thôngTinCaNhânToolStripMenuItem.Name = "thôngTinCaNhânToolStripMenuItem";
            this.thôngTinCaNhânToolStripMenuItem.Size = new System.Drawing.Size(204, 26);
            this.thôngTinCaNhânToolStripMenuItem.Text = "Thông tin cá nhân";
            this.thôngTinCaNhânToolStripMenuItem.Click += new System.EventHandler(this.thôngTinCaNhânToolStripMenuItem_Click);
            // 
            // đăngXuâtToolStripMenuItem
            // 
            this.đăngXuâtToolStripMenuItem.Name = "đăngXuâtToolStripMenuItem";
            this.đăngXuâtToolStripMenuItem.Size = new System.Drawing.Size(204, 26);
            this.đăngXuâtToolStripMenuItem.Text = "Đăng xuất";
            this.đăngXuâtToolStripMenuItem.Click += new System.EventHandler(this.đăngXuâtToolStripMenuItem_Click);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.lsvBill);
            this.panel2.Location = new System.Drawing.Point(606, 99);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(376, 557);
            this.panel2.TabIndex = 2;
            // 
            // lsvBill
            // 
            this.lsvBill.HideSelection = false;
            this.lsvBill.Location = new System.Drawing.Point(3, 0);
            this.lsvBill.Name = "lsvBill";
            this.lsvBill.Size = new System.Drawing.Size(370, 554);
            this.lsvBill.TabIndex = 0;
            this.lsvBill.UseCompatibleStateImageBehavior = false;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.label1);
            this.panel3.Controls.Add(this.btnSwitchTable);
            this.panel3.Controls.Add(this.cboSwitchTable);
            this.panel3.Controls.Add(this.btnDiscountUp);
            this.panel3.Controls.Add(this.btnDiscountDown);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Controls.Add(this.label2);
            this.panel3.Controls.Add(this.txtDiscount);
            this.panel3.Controls.Add(this.btnCheckOut);
            this.panel3.Location = new System.Drawing.Point(980, 27);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(135, 629);
            this.panel3.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(3, 385);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(96, 21);
            this.label1.TabIndex = 12;
            this.label1.Text = "Chuyển bàn:";
            // 
            // btnSwitchTable
            // 
            this.btnSwitchTable.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnSwitchTable.Location = new System.Drawing.Point(78, 408);
            this.btnSwitchTable.Name = "btnSwitchTable";
            this.btnSwitchTable.Size = new System.Drawing.Size(50, 32);
            this.btnSwitchTable.TabIndex = 11;
            this.btnSwitchTable.Text = "OK";
            this.btnSwitchTable.UseVisualStyleBackColor = true;
            // 
            // cboSwitchTable
            // 
            this.cboSwitchTable.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.cboSwitchTable.FormattingEnabled = true;
            this.cboSwitchTable.Location = new System.Drawing.Point(4, 409);
            this.cboSwitchTable.Name = "cboSwitchTable";
            this.cboSwitchTable.Size = new System.Drawing.Size(71, 29);
            this.cboSwitchTable.TabIndex = 6;
            // 
            // btnDiscountUp
            // 
            this.btnDiscountUp.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnDiscountUp.Location = new System.Drawing.Point(88, 468);
            this.btnDiscountUp.Name = "btnDiscountUp";
            this.btnDiscountUp.Size = new System.Drawing.Size(41, 28);
            this.btnDiscountUp.TabIndex = 10;
            this.btnDiscountUp.UseVisualStyleBackColor = true;
            // 
            // btnDiscountDown
            // 
            this.btnDiscountDown.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnDiscountDown.Location = new System.Drawing.Point(88, 496);
            this.btnDiscountDown.Name = "btnDiscountDown";
            this.btnDiscountDown.Size = new System.Drawing.Size(41, 28);
            this.btnDiscountDown.TabIndex = 9;
            this.btnDiscountDown.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label3.Location = new System.Drawing.Point(47, 496);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(28, 25);
            this.label3.TabIndex = 8;
            this.label3.Text = "%";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label2.Location = new System.Drawing.Point(3, 465);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(75, 21);
            this.label2.TabIndex = 7;
            this.label2.Text = "Giám giá:";
            // 
            // txtDiscount
            // 
            this.txtDiscount.Font = new System.Drawing.Font("Segoe UI", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.txtDiscount.Location = new System.Drawing.Point(8, 491);
            this.txtDiscount.MaxLength = 2;
            this.txtDiscount.Name = "txtDiscount";
            this.txtDiscount.Size = new System.Drawing.Size(34, 30);
            this.txtDiscount.TabIndex = 6;
            this.txtDiscount.Text = "0";
            this.txtDiscount.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // btnCheckOut
            // 
            this.btnCheckOut.BackColor = System.Drawing.Color.SkyBlue;
            this.btnCheckOut.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnCheckOut.Location = new System.Drawing.Point(4, 555);
            this.btnCheckOut.Name = "btnCheckOut";
            this.btnCheckOut.Size = new System.Drawing.Size(128, 72);
            this.btnCheckOut.TabIndex = 0;
            this.btnCheckOut.Text = "Thanh toán";
            this.btnCheckOut.UseVisualStyleBackColor = false;
            // 
            // btnAddFood
            // 
            this.btnAddFood.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnAddFood.Location = new System.Drawing.Point(266, 33);
            this.btnAddFood.Name = "btnAddFood";
            this.btnAddFood.Size = new System.Drawing.Size(107, 34);
            this.btnAddFood.TabIndex = 2;
            this.btnAddFood.Text = "Thêm món";
            this.btnAddFood.UseVisualStyleBackColor = true;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.btnAddFood);
            this.panel4.Controls.Add(this.btnFoodUp);
            this.panel4.Controls.Add(this.txtFoodCount);
            this.panel4.Controls.Add(this.btnFoodDown);
            this.panel4.Controls.Add(this.cboFood);
            this.panel4.Controls.Add(this.cboCategory);
            this.panel4.Location = new System.Drawing.Point(606, 27);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(376, 70);
            this.panel4.TabIndex = 4;
            // 
            // btnFoodUp
            // 
            this.btnFoodUp.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnFoodUp.Location = new System.Drawing.Point(338, 2);
            this.btnFoodUp.Name = "btnFoodUp";
            this.btnFoodUp.Size = new System.Drawing.Size(35, 31);
            this.btnFoodUp.TabIndex = 5;
            this.btnFoodUp.UseVisualStyleBackColor = true;
            // 
            // txtFoodCount
            // 
            this.txtFoodCount.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.txtFoodCount.Location = new System.Drawing.Point(302, 3);
            this.txtFoodCount.MaxLength = 2;
            this.txtFoodCount.Name = "txtFoodCount";
            this.txtFoodCount.Size = new System.Drawing.Size(34, 29);
            this.txtFoodCount.TabIndex = 3;
            this.txtFoodCount.Text = "1";
            this.txtFoodCount.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // btnFoodDown
            // 
            this.btnFoodDown.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnFoodDown.Location = new System.Drawing.Point(265, 2);
            this.btnFoodDown.Name = "btnFoodDown";
            this.btnFoodDown.Size = new System.Drawing.Size(35, 31);
            this.btnFoodDown.TabIndex = 4;
            this.btnFoodDown.UseVisualStyleBackColor = true;
            // 
            // cboFood
            // 
            this.cboFood.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.cboFood.FormattingEnabled = true;
            this.cboFood.Location = new System.Drawing.Point(4, 37);
            this.cboFood.Name = "cboFood";
            this.cboFood.Size = new System.Drawing.Size(256, 29);
            this.cboFood.TabIndex = 1;
            // 
            // cboCategory
            // 
            this.cboCategory.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.cboCategory.FormattingEnabled = true;
            this.cboCategory.Location = new System.Drawing.Point(4, 4);
            this.cboCategory.Name = "cboCategory";
            this.cboCategory.Size = new System.Drawing.Size(256, 29);
            this.cboCategory.TabIndex = 0;
            // 
            // fTableManager
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1115, 657);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.MaximizeBox = false;
            this.Name = "fTableManager";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Anh Thu Coffee";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem adminToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem thôngTinTaiKhoanToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem thôngTinCaNhânToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem đăngXuâtToolStripMenuItem;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.ListView lsvBill;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtFoodCount;
        private System.Windows.Forms.Button btnAddFood;
        private System.Windows.Forms.ComboBox cboFood;
        private System.Windows.Forms.ComboBox cboCategory;
        private System.Windows.Forms.Button btnFoodDown;
        private System.Windows.Forms.Button btnFoodUp;
        private System.Windows.Forms.Button btnCheckOut;
        private System.Windows.Forms.Button btnDiscountUp;
        private System.Windows.Forms.Button btnDiscountDown;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtDiscount;
        private System.Windows.Forms.Button btnSwitchTable;
        private System.Windows.Forms.ComboBox cboSwitchTable;
    }
}