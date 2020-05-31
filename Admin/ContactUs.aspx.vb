
Partial Class Admin_ContactUs
    Inherits System.Web.UI.Page
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Response.Redirect("Sendmail.aspx")
    End Sub
End Class

