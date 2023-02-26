using QuanLyQuanCafe.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DAO
{
    public class SanPhamDAO
    {
        private static SanPhamDAO instance;

        public static SanPhamDAO Instance
        {
            get
            {
                if (instance == null)
                    instance = new SanPhamDAO();
                return SanPhamDAO.instance;
            }
            private set { SanPhamDAO.instance = value; }
        }

        private SanPhamDAO() { }

        public List<Food> GetFoodBycategoryId(int id)
        {
            List<Food> listFood = new List<Food>();

            string query = "SELECT * FROM dbo.SanPham WHERE ID_LoaiSanPham = " + id;

            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                Food food = new Food(item);
                listFood.Add(food);
            }

            return listFood;
        }
    }
}
