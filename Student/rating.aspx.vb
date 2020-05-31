
Partial Class Student_rating
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim thisDate As Date
        thisDate = Today

        Dim dt As Data.DataTable = dm.getdata("Select * from Rating where Enrollment_id= '" & Session("Enrollment_id") & "'")
        If (dt.Rows.Count > 0) Then
            MsgBox("One student can give only one time rating", MsgBoxStyle.Exclamation, "Alert")
        Else
            dm.setdata("Insert into Rating(Enrollment_id,Rating,Rating_date)values('" & Session("Enrollment_id") & "'," & rating.SelectedValue & ",'" & thisDate & "')")
        End If
    End Sub
End Class
