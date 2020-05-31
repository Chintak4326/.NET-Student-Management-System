Imports System.Data.SqlClient
Partial Class Admin_ForgotPassword
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Dim dt As Data.DataTable
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand

    Dim str As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Chintak\Desktop\Sakar Group Tuition\StudentManagement\App_Data\sms.mdf;Integrated Security=True;User Instance=True"
        cn.Open()

    End Sub
    Protected Sub btnForgotPassword_ServerClick(sender As Object, e As EventArgs) Handles btnForgotPassword.ServerClick

    
        cmd.CommandText = "Select Admin_email_id from Admin"
        cmd.Connection = cn
        str = cmd.ExecuteScalar
        If txtEmail.Text = str Then
            dt = dm.getdata("Select * from Admin where Admin_email_id='" & txtEmail.Text & "'")
            dm.sendmail(txtEmail.Text, "Password", "<b>Your Password is:" & dt.Rows(0).Item(2).ToString & "</b>")
            MsgBox("Mail send successfully", MsgBoxStyle.OkOnly, "Success")
            Response.Redirect("Login.aspx")
        Else
            MsgBox("Invalid Account Details!", MsgBoxStyle.Exclamation, "Alert")
        End If
    End Sub

End Class
