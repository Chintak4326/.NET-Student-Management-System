Imports System.Data.SqlClient
Partial Class Student_Forgot_Password
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
    Protected Sub btnForgotPassword_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnForgotPassword.Click

        cmd.CommandText = "Select User_email from Student_Enrollment"
        cmd.Connection = cn
        str = cmd.ExecuteScalar
        If TextBox1.Text = str Then
            dt = dm.getdata("Select * from Student_Enrollment where User_Email='" & TextBox1.Text & "'")
            dm.sendmail(TextBox1.Text, "Password", "<b>Your Password is:" & dt.Rows(0).Item(5).ToString & "</b>")
            MsgBox("Mail send successfully", MsgBoxStyle.OkOnly, "success")
            Response.Redirect("Login.aspx")
        Else
            MsgBox("Invalid Email id", MsgBoxStyle.Exclamation, "Alert")
        End If

    End Sub

    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
    '    Response.Redirect("Login.aspx")
    'End Sub
End Class
