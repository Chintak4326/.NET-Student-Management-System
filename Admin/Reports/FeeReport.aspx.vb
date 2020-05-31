
Partial Class Admin_Reports_FeeReport
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
 
    
  

    Protected Sub btnShowData_Click(sender As Object, e As EventArgs) Handles btnShowData.Click

        Dim dt As Data.DataTable = dm.getdata("Select * from Fees where Enrollment_id=" & DropDownList1.SelectedValue)
        Dim str As New StringBuilder
        For Each dr As Data.DataRow In dt.Rows
            str.Append("<tr>")

            str.Append("<td>")
            str.Append(dr.Item(0))
            str.Append("</td>")

            str.Append("<td>")
            str.Append("Rs." & dr.Item(1))
            str.Append("</td>")



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
            str.Append(CDate(dr.Item(5)).ToString("dd-MM-yy"))
            str.Append("</td>")
            str.Append("<td>")
            str.Append(dm.getValue("Select Course_name from Course where Course_id=" & dr.Item(6)))
            str.Append("</td>")

           


            str.Append("</tr>")
        Next
        Literal1.Text = str.ToString
        label1.visible = False
        DropDownList1.Visible = False

      
        btnShowData.Visible = False
        Label3.Text = DropDownList1.SelectedItem.ToString

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label4.Text = Date.Today

        If Not Page.IsPostBack Then
            DropDownList1.DataBind()
            DropDownList1.Items.Insert(0, New ListItem("--Select Enrollment No--", 0))
             End If
    End Sub
End Class
