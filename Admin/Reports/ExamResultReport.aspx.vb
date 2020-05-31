
Partial Class Admin_Reports_ExamResultReport
    Inherits System.Web.UI.Page
    Dim dm As New DataManager


    Protected Sub btnShowData_Click(sender As Object, e As EventArgs) Handles btnShowData.Click

        Dim dt As Data.DataTable = dm.getdata("Select * from Result where Enrollment_id=" & DropDownList1.SelectedValue)
        Dim str As New StringBuilder
        For Each dr As Data.DataRow In dt.Rows
            str.Append("<tr>")

            str.Append("<td>")
            str.Append(dr.Item(0))
            str.Append("</td>")


 str.Append("<td>")
            str.Append(dm.getValue("Select Exam_name from Exam_Timetable where Exam_timetable_id=" & dr.Item(2)))
            str.Append("</td>")


            str.Append("<td>")
            str.Append(dr.Item(1))
            str.Append("</td>")


            str.Append("<td>")
            str.Append(dr.Item(3))
            str.Append("</td>")


            str.Append("</tr>")
        Next
        Literal1.Text = str.ToString
        label1.visible = False
        DropDownList1.Visible = False


        btnShowData.Visible = False
        Label3.Visible = True
        Label3.Text = DropDownList1.SelectedItem.ToString

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label4.Text = Date.Today
        Label5.Visible = True
        Label5.Text = "StudentEnrollmentId:"
        'Label3.Visible = False
        If Not Page.IsPostBack Then
            DropDownList1.DataBind()
            DropDownList1.Items.Insert(0, New ListItem("--Select Enrollment No--", 0))
        End If
    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        If DropDownList1.SelectedIndex = 0 Then
            MsgBox("Please Select the Enrollment Id ", MsgBoxStyle.Exclamation, "Alert")
            Label3.Visible = False
        End If

    End Sub
   

  
End Class
