using QuanLyQuanCafe.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DAO
{
    public class HoaDonDAO
    {
        private static HoaDonDAO instance;

        public static HoaDonDAO Instance
        {
            get
            {
                if (instance == null)
                    instance = new HoaDonDAO();
                return HoaDonDAO.instance;
            }
            private set { HoaDonDAO.instance = value; }
        }

        private HoaDonDAO() { }

        public int GetIdByTableId(int id)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("select * from dbo.HoaDon where SoBanDaDung =" + id + " AND TrangThai = 0");
            if (data.Rows.Count > 0)
            {
                Bill bill = new Bill(data.Rows[0]);
                return bill.Id;
            }

            return -1;
        }

        public void InsertBill(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("USP_InsertBill @idTable", new object[] { id });
        } 

        public int GetMaxBill()
        {
            try
            {
                return (int)DataProvider.Instance.ExecuteScala(" SELECT MAX(HoaDonID) FROM dbo.HoaDon");
            }
            catch
            {
                return 1;
            }
        }

        public void checkOutBill(int id)
        {
            string query = "UPDATE dbo.HoaDon SET TrangThai = 1 WHERE HoaDonID = " + id;
            DataProvider.Instance.ExecuteNonQuery(query);
        }
    }
}
