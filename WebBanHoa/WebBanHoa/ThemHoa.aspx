<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ThemHoa.aspx.cs" Inherits="WebBanHoa.ThemHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <div class="form-group">
        Danh mục <asp:DropDownList ID="ddLoai" runat="server" CssClass="form-control"></asp:DropDownList>
    </div>
    <div class="form-group">
        Tên hoa <asp:TextBox ID="txtTenHoa" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        Giá <asp:TextBox ID="txtGia" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        Ngày cập nhật <asp:Calendar ID="clNgayCapNhat" runat="server" ></asp:Calendar>
    </div>
    <div class="form-group">
        Hình <asp:FileUpload ID="FHinh" runat="server" CssClass="form-control"></asp:FileUpload>
    </div>
    <div class="form-group">
        <asp:Button ID="btnXuLy" runat="server" Text="Thêm mới" CssClass="btn btn-info" OnClick="btnXuLy_Click"></asp:Button>
    </div>
    <div>
        <asp:Label ID="lbThongbao" runat="server" Text="" ForeColor="Blue"></asp:Label>
    </div>
</asp:Content>
