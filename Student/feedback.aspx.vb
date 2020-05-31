
Partial Class Student_feedback
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim thisDate As Date
        thisDate = Today
        dm.setdata("Insert into Feedback(Feedback_description,Feedback_date,Enrollment_id)values('" & TextBox1.Text & "','" & thisDate & "','" & Session("Enrollment_id") & "')")
        TextBox1.Text = ""
    End Sub
End Class
