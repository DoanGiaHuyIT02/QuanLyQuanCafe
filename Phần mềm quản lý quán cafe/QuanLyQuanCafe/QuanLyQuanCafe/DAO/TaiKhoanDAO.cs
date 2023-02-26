using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DAO
{
    public class TaiKhoanDAO
    {
        private static TaiKhoanDAO instance;

        public static TaiKhoanDAO Instance 
        {
            get
            {
                if (instance == null)
                    instance = new TaiKhoanDAO();
                return TaiKhoanDAO.instance;
            }
            private set { TaiKhoanDAO.instance = value; }
        }

        private TaiKhoanDAO() { }

        public bool Login(string username, string password)
        {
            string query = "USP_Login @username , @password";

            DataTable result = DataProvider.Instance.ExecuteQuery(query, new object[] {username, password});

            return result.Rows.Count > 0;
        }

       
    }
}
