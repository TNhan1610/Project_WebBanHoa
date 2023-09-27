<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemHoa.aspx.cs" Inherits="WebBanHoa.XemHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <div class="form-inline">
        Danh mục loại: <asp:DropDownList ID="ddlLoai" runat="server" CssClass="form-control"
            AutoPostBack="true" DataSourceID="dsLoai" DataTextField="TenLoai" DataValueField="MaLoai"></asp:DropDownList>
    </div>
    
    <asp:SqlDataSource ID="dsLoai" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Loai]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsHoa" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Hoa] WHERE ([MaLoai] = @MaLoai)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlLoai" DefaultValue="1" Name="MaLoai" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="row">
        <asp:Repeater ID="rpHoa" runat="server" DataSourceID="dsHoa">
            <ItemTemplate>
                <div class="col-md-3 col-sm-6 item">
                    <div class="i">
                        <a href="#">
                            <img src='<%# Eval("Hinh","Uploads/hinh_san_pham/{0}") %>' />
                        </a>
                    </div>
                    <div class="t">
                        <asp:Label ID="lbTenHoa" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label> <br />
                        Giá bán: <asp:Label ID="lbGia" CssClass="vn" runat="server" Text='<%# Eval("Gia","{0: #,##0} đồng") %>'></asp:Label>
                        <asp:Button ID="btAddToCart" runat="server" Text="Add To Cart" CssClass="btn btn-success" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
