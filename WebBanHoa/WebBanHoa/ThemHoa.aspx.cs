using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanHoa.Models;

namespace WebBanHoa
{
    public partial class ThemHoa : System.Web.UI.Page
    {
        LoaiDAO loaiDAO= new LoaiDAO();
        HoaDAO hoaDAO = new HoaDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                ddLoai.DataSource = loaiDAO.docTatCa();
                ddLoai.DataTextField = "tenloai";
                ddLoai.DataValueField = "maloai";
                ddLoai.DataBind();
            }
        }
        protected void btnXuLy_Click(object sender, EventArgs e)
        {
            string tenhoa = txtTenHoa.Text;
            int gia = int.Parse(txtGia.Text);
            string hinh = "";
            if (FHinh.HasFile)//Nếu người dùng cung cấp hình ảnh của hoa
            {
                string path = Server.MapPath("~/Uploads/hinh_san_pham") + "/" + FHinh.FileName;
                FHinh.SaveAs(path);
                hinh = FHinh.FileName;
            }
            else
            {
                hinh = "no_image.ing";
            }
            int maloai = int.Parse(ddLoai.SelectedValue);
            DateTime ngaydang = clNgayCapNhat.SelectedDate;

            int ketqua = hoaDAO.Them(tenhoa, gia, hinh, maloai, ngaydang, 0);
            if (ketqua >0)
            {
                string  msg = "swal('Thành công', 'Đã thêm một sản phẩm hoa', 'success')";
                ClientScript.RegisterStartupScript(this.GetType(), "thongbao", msg, true);
                /*lbThongbao.Text = "Đã thêm 1 sản phẩm (Hoa) thành công";*/
            }
            else
            {
                lbThongbao.Text = "Thêm hoa thất bại";
            }
        }
    }
}