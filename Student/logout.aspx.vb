
Partial Class Student_logout
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session.Abandon()
        Session.Clear()
        Session.RemoveAll()
        Response.Redirect("~\Student\Login.aspx")
    End Sub
End Class
