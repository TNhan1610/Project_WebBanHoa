﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebBanHoa.Models
{
    public class HoaDAO
    {
        public DataTable tracuuTheoGia (int tu, int den)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Hoa where gia>=@tu and gia<=@den", conn);
            cmd.Parameters.AddWithValue("@tu", tu);
            cmd.Parameters.AddWithValue("@den", den);
            SqlDataAdapter dat = new SqlDataAdapter(cmd);
            dat.Fill(dt);
            return dt;
        }
        public int Them(string tenhoa, int gia, string hinh, int maloai, DateTime ngaydang, int soluotxem)

        {//Tạo đối tượng đẻ kết nói CSDL
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into hoa (tenhoa, gia, hinh, maloai, ngaydang, soluotxem)" +
                                    "value (@tenhoa, @gia,@hinh,@maloai,@ngaydang,@soluotxem)", conn);
            cmd.Parameters.AddWithValue("@tenhoa", tenhoa);
            cmd.Parameters.AddWithValue("@gia", gia);
            cmd.Parameters.AddWithValue("@hinh", hinh);
            cmd.Parameters.AddWithValue("@maloai", maloai);
            cmd.Parameters.AddWithValue("@ngaydang", ngaydang);
            cmd.Parameters.AddWithValue("@soluotxem", soluotxem);
            return cmd.ExecuteNonQuery();
        }
    }
}