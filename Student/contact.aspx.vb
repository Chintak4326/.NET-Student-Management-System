
Partial Class Student_contact
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
       
        dm.setdata("Insert into Contact(c_fname,c_lname,c_subject,c_email,c_message)values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "')")
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""


    End Sub
End Class
