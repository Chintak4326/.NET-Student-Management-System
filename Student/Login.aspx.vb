
Partial Class Student_Login
    Inherits System.Web.UI.Page
    Dim dm As New DataManager

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click
        'If txtPassword.Text = "" Then
        '    MsgBox("please fill out login details")
        'End If

        'If txtUserEmail.Text = "" And txtPassword.Text = "" Then
        '    MsgBox("please fill out login details")
        'End If

        Dim dt As Data.DataTable = dm.getdata("Select * from Student_Enrollment where Enrollment_id='" & txtUserEmail.Text & "' and Password='" & txtPassword.Text & "' ")
        If dt.Rows.Count > 0 Then
            Session("Enrollment_id") = dt.Rows(0).Item(0).ToString
            Session("Password") = dt.Rows(0).Item(5).ToString
            'Response.Redirect("~\Student\index.aspx")

            If (Request.QueryString("Pro_id") = "") Then
                Response.Redirect("~\Student\index.aspx")
            Else
                Response.Redirect("~\Attendance.aspx?Pro_id=" & Request.QueryString("Pro_id"))

            End If
        Else
            MsgBox("Invalid Login Details", MsgBoxStyle.Exclamation, "Alert")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
