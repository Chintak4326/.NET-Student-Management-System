Partial Class Admin_Reports_Course
    Inherits System.Web.UI.Page
    Dim dm As New DataManager

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim dt As Data.DataTable = dm.getdata("Select * from Course")
        Dim str As New StringBuilder
        For Each dr As Data.DataRow In dt.Rows
            str.Append("<tr>")

            str.Append("<td>")
            str.Append(dr.Item(0))
            str.Append("</td>")


            str.Append("<td>")
            str.Append(dr.Item(1))
            str.Append("</td>")


            str.Append("<td>")
            str.Append(dm.getValue("Select Standard_name from Standard where Standard_id=" & dr.Item(2)))
            str.Append("</td>")


            str.Append("<td>")
            str.Append(dm.getValue("Select Medium_type from Medium where Medium_id=" & dr.Item(3)))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dm.getValue("Select Board_name from Board where Board_id=" & dr.Item(4)))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(5))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(6))
            str.Append("</td>")


            str.Append("<td>")
            str.Append(dr.Item(7))
            str.Append("</td>")


            str.Append("<td>")
            str.Append(dr.Item(8))
            str.Append("</td>")


            str.Append("<td>")
            str.Append(dm.getValue("Select Stream_type from Stream where Stream_id=" & dr.Item(9)))
            str.Append("</td>")


            str.Append("</tr>")
        Next
        Literal1.Text = str.ToString
        Button1.Visible = False

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Label1.Text = Date.Today
    End Sub
End Class
