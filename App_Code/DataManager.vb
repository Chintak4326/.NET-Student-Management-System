Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class DataManager
    Private cn As New SqlConnection
    Private Sub getConnection()
        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Chintak\Desktop\Sakar Group Tuition\StudentManagement\App_Data\sms.mdf;Integrated Security=True;User Instance=True"
        cn.Open()
    End Sub
    Public Sub setdata(ByVal query As String)
        Try
            getConnection()
            Dim cmd As New SqlCommand(query, cn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            cn.Close()
        End Try
    End Sub
    Public Function getdata(ByVal query As String) As Data.DataTable
        Dim ds As New Data.DataSet
        Try
            getConnection()
            Dim da As New SqlDataAdapter(query, cn)
            da.Fill(ds)
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            cn.Close()
        End Try
        Return ds.Tables(0)
    End Function
    Public Function getValue(ByVal query As String) As String
        Dim result As String = ""
        Try
            getConnection()
            Dim cmd As New SqlCommand(query, cn)
            result = cmd.ExecuteScalar.ToString
        Catch ex As Exception

        Finally
            cn.Close()
        End Try
        Return result
    End Function
    Public Sub sendmail(ByVal toid As String, ByVal subject As String, ByVal body As String)
        Try
            Dim mailmsg As New MailMessage("sakartuition@gmail.com", toid, subject, body)
            mailmsg.IsBodyHtml = True
            Dim smtp As New SmtpClient("smtp.gmail.com", 587)
            smtp.EnableSsl = True
            smtp.Credentials = New Net.NetworkCredential("sakar.sms@gmail.com", "sakar@123")
            smtp.Send(mailmsg)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
