
Partial Class Admin_Register
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click

        dm.setdata("Insert into [User1](User_name, User_address, User_email_id, User_contact_no, User_password,Area_id)values('" & txtUserFname.Text & "','" & txtUserAddress.Text & "','" & txtUserEmail.Text & "','" & txtUserMobile.Text & "','" & txtPassword.Text & "','" & txtArea.SelectedValue & "')")
        Response.Redirect("~\Login.aspx")

    End Sub
End Class
