Imports System.IO
Partial Class Student_gallery
    Inherits System.Web.UI.Page
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        Dim di As New System.IO.DirectoryInfo(Server.MapPath("~/Admin/img/"))
        DataList1.DataSource = di.GetFiles
        DataList1.DataBind()

    End Sub
End Class
