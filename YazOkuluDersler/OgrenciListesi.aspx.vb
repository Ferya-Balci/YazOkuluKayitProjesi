Imports EntityLayer
Imports DataAccessLayer
Imports BusinessLogicLayer

Public Class OgrenciListesi
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim OgrList As List(Of EntityOgrenci) = BLLOgrenci.BllListele()
        Repeater1.DataSource = OgrList
        Repeater1.DataBind()



    End Sub

End Class