
Partial Class Admin_Reports_AchievementsReport
    Inherits System.Web.UI.Page
    Dim dm As New DataManager

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dt As Data.DataTable = dm.getdata("Select * from Achievement")
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
            str.Append(dr.Item(2))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(3))
            str.Append("</td>")


           


            str.Append("</tr>")
        Next
        Literal1.Text = str.ToString
        Button1.Visible = False

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = Date.Today
    End Sub
End Class
