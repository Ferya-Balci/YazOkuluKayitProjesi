﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OgrenciListesi.aspx.cs" Inherits="Proje2YazOkulu.OgrenciListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover">
        <tr>
            <th>Öğrenci ID</th>
            <th>Öğrenci AD</th>
            <th>Öğrenci Soyad</th>
            <th>Öğrenci Numara</th>
            <th>Öğrenci Mail</th>
            <th>Öğrenci Şifre</th>
            <th>Öğrenci Bakiye</th>
            <th>İşlemler</th>      
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                <td><%#Eval("Id") %></td>
                <td><%#Eval("Ad") %></td>
                 <td><%#Eval("Soyad") %></td>
                <td><%#Eval("Numara") %></td>
                <td><%#Eval("Sifre") %></td>
                <td><%#Eval("Mail") %></td>
                <td><%#Eval("Bakiye") %></td>
                <td>
                    <asp:HyperLink NavigateUrl='<%# "~/OgrenciSil.aspx?OGRID=" + Eval("Id") %>' ID ="HyperLink1" 
                        runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                    <asp:HyperLink NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID=" + Eval("Id") %>' ID="HyperLink2"
                        runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                </td>
            </tr>
                </ItemTemplate>
            </asp:Repeater>
            
        </tbody>
    </table>
</asp:Content>
