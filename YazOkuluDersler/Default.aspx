<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="Default.aspx.vb" Inherits="YazOkuluDersler._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtAd"  runat="server" Text="Öğrenci Adı" style="font-weight: 700"></asp:Label>
                <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

             <div>
                <asp:Label for="TxtSoyad"  runat="server" Text="Öğrenci Soyadı" style="font-weight: 700"></asp:Label>
                <asp:TextBox ID="TxtSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

             <div>
                <asp:Label for="TxtNumara"  runat="server" Text="Öğrenci Numara" style="font-weight: 700"></asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

             <div>
                <asp:Label for="TxtSifre"  runat="server" Text="Öğrenci Şifre" style="font-weight: 700"></asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

             <div>
                <asp:Label for="TxtMail"  runat="server" Text="Öğrenci Mail" style="font-weight: 700"></asp:Label>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>
        

        <asp:Button ID="Button1" runat="server"  Text="KAYDET" CssClass="btn btn-info" />
    </form>
   
</asp:Content>
