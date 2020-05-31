
Partial Class Admin_Login
    Inherits System.Web.UI.Page
    Dim dm As New DataManager

    Protected Sub btnLogin_ServerClick(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.ServerClick
        Dim dt As Data.DataTable = dm.getdata("Select * from Admin where Admin_email_id='" & txtEmail.Text & "' and Admin_password='" & txtPassword.Text & "' ")
        If dt.Rows.Count > 0 Then
            Session("Admin_id") = dt.Rows(0).Item(0).ToString
            Session("Admin_email_id") = dt.Rows(0).Item(1).ToString
            Response.Redirect("~/Admin/home.aspx")
        Else
            MsgBox("Invalid Login Details", MsgBoxStyle.Exclamation, "Alert")
        End If
    End Sub

End Class
