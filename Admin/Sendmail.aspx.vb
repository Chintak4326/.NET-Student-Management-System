
Partial Class Admin_Sendmail
    Inherits System.Web.UI.Page

    Dim dm As New DataManager
    Dim dt As Data.DataTable

    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
          

            dm.sendmail(TextBox3.Text, "Sakar Group Tution", "<b>We received your enquiry. Thank you so much for your interest! It would be a pleasure if we can meet with you to enable us discuss in more details.The meeting can hold at our office when it is convenient for you.  </b>")
        MsgBox("Mail send successfully", MsgBoxStyle.OkOnly, "Success")
            

    End Sub

    Protected Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        If Session("Admin_id") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If

    End Sub
End Class
