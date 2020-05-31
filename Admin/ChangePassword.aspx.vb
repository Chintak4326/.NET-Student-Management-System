
Partial Class Admin_Changepassword
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        Dim dt As Data.DataTable = dm.getdata("Select * from Admin where Admin_id=" & Session("Admin_id"))
        If dt.Rows(0).Item(2).ToString = txtOldPassword.Text Then
            dm.setdata("Update Admin set Admin_password='" & txtNewPassword.Text & "' where Admin_id=" & Session("Admin_id"))
            MsgBox("Password Changed Successfully", MsgBoxStyle.OkOnly, "Success")
        Else
            MsgBox("Old Password do not match", MsgBoxStyle.Exclamation, "Alert")
        End If
    End Sub
    Protected Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        If Session("Admin_id") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If

    End Sub
End Class
