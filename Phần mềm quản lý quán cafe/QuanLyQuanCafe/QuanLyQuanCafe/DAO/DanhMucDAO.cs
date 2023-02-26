using QuanLyQuanCafe.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DAO
{
    public class DanhMucDAO
    {
        private static DanhMucDAO instance;

        public static DanhMucDAO Instance
        {
            get
            {
                if (instance == null)
                    instance = new DanhMucDAO();
                return DanhMucDAO.instance;
            }
            private set { DanhMucDAO.instance = value; }
        }

        private DanhMucDAO() { }

        public List<DanhMucSanPham> GetListCategory()
        {
            List<DanhMucSanPham> listDanhMuc = new List<DanhMucSanPham>();

            string query = "Select * from dbo.LoaiSanPham";

            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                DanhMucSanPham category = new DanhMucSanPham(item);
                listDanhMuc.Add(category);
            }

            return listDanhMuc;
        }
        
    }
}
