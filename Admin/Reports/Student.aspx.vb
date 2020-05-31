
Partial Class Admin_Reports_Student
    Inherits System.Web.UI.Page
    Dim dm As New DataManager

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dt As Data.DataTable = dm.getdata("Select * from User1")
        Dim str As New StringBuilder
        For Each dr As Data.DataRow In dt.Rows
            str.Append("<tr>")

            str.Append("<td>")
            str.Append(dr.Item(0))
            str.Append("</td>")


            str.Append("<td>")
            str.Append(dr.Item(1))
            str.Append("</td>")

            'str.Append("<td>")
            'str.Append(CDate(dr.Item(1)).ToString("dd-MM-yy"))
            'str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(2))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(3))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(4))
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
            str.Append(dr.Item(9))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(10))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(11))
            str.Append("</td>")


            str.Append("<td>")
            str.Append(dr.Item(12))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(13))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(14))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(15))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dr.Item(16))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dm.getValue("Select Gender_name from Gender where Gender_id=" & dr.Item(17)))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dm.getValue("Select Area_name from Area where Area_id=" & dr.Item(18)))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dm.getValue("Select Medium_type from Medium where Medium_id=" & dr.Item(19)))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dm.getValue("Select Branch_name from Branch where Branch_id=" & dr.Item(20)))
            str.Append("</td>")

            str.Append("<td>")
            str.Append(dm.getValue("Select Standard_name from Standard where Standard_id=" & dr.Item(21)))
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
