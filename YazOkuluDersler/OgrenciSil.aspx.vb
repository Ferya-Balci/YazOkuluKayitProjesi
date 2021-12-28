Imports EntityLayer
Imports DataAccessLayer
Imports BusinessLogicLayer

Public Class OgrenciSil
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim x As Integer = Convert.ToInt32(Request.QueryString("OGRID"))
        Response.Write(x)

    End Sub

    Private Function rdr(v As String) As Object
        Throw New NotImplementedException()
    End Function
End Class