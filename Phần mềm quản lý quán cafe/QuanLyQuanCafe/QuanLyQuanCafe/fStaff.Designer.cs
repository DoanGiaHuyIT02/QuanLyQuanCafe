
namespace QuanLyQuanCafe
{
    partial class fStaff
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.trangChủToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.thôngTinTàiKhoảnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.thôngTinCáNhânToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.đăngXuấtToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pnGoiMon = new System.Windows.Forms.Panel();
            this.nudSoLuong = new System.Windows.Forms.NumericUpDown();
            this.lbSoLuong = new System.Windows.Forms.Label();
            this.cbSanPham = new System.Windows.Forms.ComboBox();
            this.cbLoaiSanPham = new System.Windows.Forms.ComboBox();
            this.btnThemMon = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.lvBill = new System.Windows.Forms.ListView();
            this.TenMonAn = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.DonVi = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.size = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.price = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SoLuong = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.ThanhTien = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.panel2 = new System.Windows.Forms.Panel();
            this.nudGiamGia = new System.Windows.Forms.NumericUpDown();
            this.txtTongTien = new System.Windows.Forms.TextBox();
            this.btnChuyenban = new System.Windows.Forms.Button();
            this.btnGiamGia = new System.Windows.Forms.Button();
            this.btnThanhToan = new System.Windows.Forms.Button();
            this.flpDanhSachBan = new System.Windows.Forms.FlowLayoutPanel();
            this.cbChuyenban = new System.Windows.Forms.ComboBox();
            this.menuStrip1.SuspendLayout();
            this.pnGoiMon.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudSoLuong)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudGiamGia)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.trangChủToolStripMenuItem,
            this.thôngTinTàiKhoảnToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1413, 28);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // trangChủToolStripMenuItem
            // 
            this.trangChủToolStripMenuItem.Name = "trangChủToolStripMenuItem";
            this.trangChủToolStripMenuItem.Size = new System.Drawing.Size(87, 24);
            this.trangChủToolStripMenuItem.Text = "Trang chủ";
            // 
            // thôngTinTàiKhoảnToolStripMenuItem
            // 
            this.thôngTinTàiKhoảnToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.thôngTinCáNhânToolStripMenuItem,
            this.đăngXuấtToolStripMenuItem});
            this.thôngTinTàiKhoảnToolStripMenuItem.Name = "thôngTinTàiKhoảnToolStripMenuItem";
            this.thôngTinTàiKhoảnToolStripMenuItem.Size = new System.Drawing.Size(151, 24);
            this.thôngTinTàiKhoảnToolStripMenuItem.Text = "Thông tin tài khoản";
            // 
            // thôngTinCáNhânToolStripMenuItem
            // 
            this.thôngTinCáNhânToolStripMenuItem.Name = "thôngTinCáNhânToolStripMenuItem";
            this.thôngTinCáNhânToolStripMenuItem.Size = new System.Drawing.Size(210, 26);
            this.thôngTinCáNhânToolStripMenuItem.Text = "Thông tin cá nhân";
            this.thôngTinCáNhânToolStripMenuItem.Click += new System.EventHandler(this.thôngTinCáNhânToolStripMenuItem_Click);
            // 
            // đăngXuấtToolStripMenuItem
            // 
            this.đăngXuấtToolStripMenuItem.Name = "đăngXuấtToolStripMenuItem";
            this.đăngXuấtToolStripMenuItem.Size = new System.Drawing.Size(210, 26);
            this.đăngXuấtToolStripMenuItem.Text = "Đăng xuất";
            this.đăngXuấtToolStripMenuItem.Click += new System.EventHandler(this.đăngXuấtToolStripMenuItem_Click);
            // 
            // pnGoiMon
            // 
            this.pnGoiMon.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnGoiMon.Controls.Add(this.nudSoLuong);
            this.pnGoiMon.Controls.Add(this.lbSoLuong);
            this.pnGoiMon.Controls.Add(this.cbSanPham);
            this.pnGoiMon.Controls.Add(this.cbLoaiSanPham);
            this.pnGoiMon.Controls.Add(this.btnThemMon);
            this.pnGoiMon.Location = new System.Drawing.Point(564, 31);
            this.pnGoiMon.Name = "pnGoiMon";
            this.pnGoiMon.Size = new System.Drawing.Size(837, 73);
            this.pnGoiMon.TabIndex = 2;
            // 
            // nudSoLuong
            // 
            this.nudSoLuong.Location = new System.Drawing.Point(559, 8);
            this.nudSoLuong.Minimum = new decimal(new int[] {
            100,
            0,
            0,
            -2147483648});
            this.nudSoLuong.Name = "nudSoLuong";
            this.nudSoLuong.Size = new System.Drawing.Size(120, 22);
            this.nudSoLuong.TabIndex = 4;
            this.nudSoLuong.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.nudSoLuong.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // lbSoLuong
            // 
            this.lbSoLuong.AutoSize = true;
            this.lbSoLuong.Location = new System.Drawing.Point(489, 10);
            this.lbSoLuong.Name = "lbSoLuong";
            this.lbSoLuong.Size = new System.Drawing.Size(64, 17);
            this.lbSoLuong.TabIndex = 3;
            this.lbSoLuong.Text = "Số lượng";
            // 
            // cbSanPham
            // 
            this.cbSanPham.FormattingEnabled = true;
            this.cbSanPham.Location = new System.Drawing.Point(210, 43);
            this.cbSanPham.Name = "cbSanPham";
            this.cbSanPham.Size = new System.Drawing.Size(236, 24);
            this.cbSanPham.TabIndex = 2;
            // 
            // cbLoaiSanPham
            // 
            this.cbLoaiSanPham.FormattingEnabled = true;
            this.cbLoaiSanPham.Location = new System.Drawing.Point(210, 3);
            this.cbLoaiSanPham.Name = "cbLoaiSanPham";
            this.cbLoaiSanPham.Size = new System.Drawing.Size(236, 24);
            this.cbLoaiSanPham.TabIndex = 1;
            this.cbLoaiSanPham.SelectedIndexChanged += new System.EventHandler(this.cbLoaiSanPham_SelectedIndexChanged);
            // 
            // btnThemMon
            // 
            this.btnThemMon.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemMon.Location = new System.Drawing.Point(48, 0);
            this.btnThemMon.Name = "btnThemMon";
            this.btnThemMon.Size = new System.Drawing.Size(117, 70);
            this.btnThemMon.TabIndex = 0;
            this.btnThemMon.Text = "Thêm món";
            this.btnThemMon.UseVisualStyleBackColor = true;
            this.btnThemMon.Click += new System.EventHandler(this.btnThemMon_Click);
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.Controls.Add(this.lvBill);
            this.panel1.Location = new System.Drawing.Point(564, 110);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(837, 280);
            this.panel1.TabIndex = 3;
            // 
            // lvBill
            // 
            this.lvBill.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lvBill.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.TenMonAn,
            this.DonVi,
            this.size,
            this.price,
            this.SoLuong,
            this.ThanhTien});
            this.lvBill.GridLines = true;
            this.lvBill.HideSelection = false;
            this.lvBill.Location = new System.Drawing.Point(6, 3);
            this.lvBill.Name = "lvBill";
            this.lvBill.Size = new System.Drawing.Size(831, 274);
            this.lvBill.TabIndex = 0;
            this.lvBill.UseCompatibleStateImageBehavior = false;
            this.lvBill.View = System.Windows.Forms.View.Details;
            // 
            // TenMonAn
            // 
            this.TenMonAn.Text = "Tên món ăn";
            this.TenMonAn.Width = 244;
            // 
            // DonVi
            // 
            this.DonVi.Text = "Đơn vị ";
            this.DonVi.Width = 58;
            // 
            // size
            // 
            this.size.Text = "Size";
            this.size.Width = 57;
            // 
            // price
            // 
            this.price.Text = "Đơn giá";
            this.price.Width = 112;
            // 
            // SoLuong
            // 
            this.SoLuong.Text = "Số lượng";
            this.SoLuong.Width = 70;
            // 
            // ThanhTien
            // 
            this.ThanhTien.Text = "Thành tiền";
            this.ThanhTien.Width = 219;
            // 
            // panel2
            // 
            this.panel2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel2.Controls.Add(this.cbChuyenban);
            this.panel2.Controls.Add(this.nudGiamGia);
            this.panel2.Controls.Add(this.txtTongTien);
            this.panel2.Controls.Add(this.btnChuyenban);
            this.panel2.Controls.Add(this.btnGiamGia);
            this.panel2.Controls.Add(this.btnThanhToan);
            this.panel2.Location = new System.Drawing.Point(565, 396);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(836, 123);
            this.panel2.TabIndex = 4;
            // 
            // nudGiamGia
            // 
            this.nudGiamGia.Location = new System.Drawing.Point(192, 64);
            this.nudGiamGia.Name = "nudGiamGia";
            this.nudGiamGia.Size = new System.Drawing.Size(157, 22);
            this.nudGiamGia.TabIndex = 4;
            // 
            // txtTongTien
            // 
            this.txtTongTien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTongTien.Location = new System.Drawing.Point(500, 53);
            this.txtTongTien.Multiline = true;
            this.txtTongTien.Name = "txtTongTien";
            this.txtTongTien.ReadOnly = true;
            this.txtTongTien.Size = new System.Drawing.Size(178, 33);
            this.txtTongTien.TabIndex = 3;
            this.txtTongTien.Text = "0";
            this.txtTongTien.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // btnChuyenban
            // 
            this.btnChuyenban.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnChuyenban.Location = new System.Drawing.Point(16, 11);
            this.btnChuyenban.Name = "btnChuyenban";
            this.btnChuyenban.Size = new System.Drawing.Size(157, 42);
            this.btnChuyenban.TabIndex = 2;
            this.btnChuyenban.Text = "Chuyển bàn";
            this.btnChuyenban.UseVisualStyleBackColor = true;
            this.btnChuyenban.Click += new System.EventHandler(this.btnChuyenban_Click);
            // 
            // btnGiamGia
            // 
            this.btnGiamGia.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGiamGia.Location = new System.Drawing.Point(192, 14);
            this.btnGiamGia.Name = "btnGiamGia";
            this.btnGiamGia.Size = new System.Drawing.Size(157, 39);
            this.btnGiamGia.TabIndex = 1;
            this.btnGiamGia.Text = "Giảm giá";
            this.btnGiamGia.UseVisualStyleBackColor = true;
            // 
            // btnThanhToan
            // 
            this.btnThanhToan.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnThanhToan.BackColor = System.Drawing.Color.LightGreen;
            this.btnThanhToan.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThanhToan.ForeColor = System.Drawing.Color.White;
            this.btnThanhToan.Location = new System.Drawing.Point(704, 28);
            this.btnThanhToan.Name = "btnThanhToan";
            this.btnThanhToan.Size = new System.Drawing.Size(129, 73);
            this.btnThanhToan.TabIndex = 0;
            this.btnThanhToan.Text = "Thanh toán";
            this.btnThanhToan.UseVisualStyleBackColor = false;
            this.btnThanhToan.Click += new System.EventHandler(this.btnThanhToan_Click);
            // 
            // flpDanhSachBan
            // 
            this.flpDanhSachBan.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.flpDanhSachBan.AutoScroll = true;
            this.flpDanhSachBan.Location = new System.Drawing.Point(12, 31);
            this.flpDanhSachBan.Name = "flpDanhSachBan";
            this.flpDanhSachBan.Size = new System.Drawing.Size(546, 485);
            this.flpDanhSachBan.TabIndex = 5;
            // 
            // cbChuyenban
            // 
            this.cbChuyenban.FormattingEnabled = true;
            this.cbChuyenban.Location = new System.Drawing.Point(16, 60);
            this.cbChuyenban.Name = "cbChuyenban";
            this.cbChuyenban.Size = new System.Drawing.Size(157, 24);
            this.cbChuyenban.TabIndex = 5;
            // 
            // fStaff
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1413, 531);
            this.Controls.Add(this.flpDanhSachBan);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pnGoiMon);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "fStaff";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "fStaff";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.pnGoiMon.ResumeLayout(false);
            this.pnGoiMon.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudSoLuong)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudGiamGia)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem trangChủToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem thôngTinTàiKhoảnToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem thôngTinCáNhânToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem đăngXuấtToolStripMenuItem;
        private System.Windows.Forms.Panel pnGoiMon;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button btnThanhToan;
        private System.Windows.Forms.ListView lvBill;
        private System.Windows.Forms.FlowLayoutPanel flpDanhSachBan;
        private System.Windows.Forms.ColumnHeader TenMonAn;
        private System.Windows.Forms.ColumnHeader DonVi;
        private System.Windows.Forms.Button btnThemMon;
        private System.Windows.Forms.Button btnChuyenban;
        private System.Windows.Forms.Button btnGiamGia;
        private System.Windows.Forms.ColumnHeader size;
        private System.Windows.Forms.ColumnHeader price;
        private System.Windows.Forms.ColumnHeader SoLuong;
        private System.Windows.Forms.ColumnHeader ThanhTien;
        private System.Windows.Forms.TextBox txtTongTien;
        private System.Windows.Forms.NumericUpDown nudSoLuong;
        private System.Windows.Forms.Label lbSoLuong;
        private System.Windows.Forms.ComboBox cbSanPham;
        private System.Windows.Forms.ComboBox cbLoaiSanPham;
        private System.Windows.Forms.NumericUpDown nudGiamGia;
        private System.Windows.Forms.ComboBox cbChuyenban;
    }
}