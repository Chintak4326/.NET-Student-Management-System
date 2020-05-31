
Partial Class Student_Changepassword
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        Dim dt As Data.DataTable = dm.getdata("Select * from Student_Enrollment where Enrollment_id=" & Session("Enrollment_id"))
        If dt.Rows(0).Item(5).ToString = txtUserEmail.Text Then
            dm.setdata("Update Student_Enrollment set Password='" & txtPassword.Text & "' where Enrollment_id=" & Session("Enrollment_id"))
            MsgBox("Password Changed Successfully", MsgBoxStyle.OkOnly, "SMS")
        Else
            MsgBox("Old Password do not match", MsgBoxStyle.Exclamation, "SMS")
        End If
    End Sub

End Class
