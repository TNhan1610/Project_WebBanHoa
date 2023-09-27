using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanHoa.Models;

namespace WebBanHoa
{
    public partial class TraCuu : System.Web.UI.Page
    {
        HoaDAO hoaDAO = new HoaDAO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btTraCuu_Click(Object sender, EventArgs e)
        {
            int tu = int.Parse(txtGiaTu.Text);
            int den = int.Parse(txtGiaDen.Text);
            rpHoa.DataSource = hoaDAO.tracuuTheoGia(tu, den);
            rpHoa.DataBind();
        }
    }
}