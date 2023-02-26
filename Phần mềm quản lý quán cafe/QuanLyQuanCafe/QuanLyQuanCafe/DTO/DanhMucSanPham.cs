using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class DanhMucSanPham
    {
        public DanhMucSanPham(int loaiSanPhamId, string tenDanhMucSanPham)
        {
            this.LoaiSanPhamId = loaiSanPhamId;
            this.TenDanhMucSanPham = tenDanhMucSanPham;
        }

        public DanhMucSanPham(DataRow row)
        {
            this.LoaiSanPhamId = (int)row["LoaiSanPhamID"];
            this.TenDanhMucSanPham = row["LoaiSanPham"].ToString();
        }

        private int loaiSanPhamId;
        private string tenDanhMucSanPham;

        public int LoaiSanPhamId { get => loaiSanPhamId; set => loaiSanPhamId = value; }
        public string TenDanhMucSanPham { get => tenDanhMucSanPham; set => tenDanhMucSanPham = value; }
    }
}
