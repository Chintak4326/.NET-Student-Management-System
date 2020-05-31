
Partial Class Admin_Result
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from Result ")
            
            dm.setdata("Insert into Result(Enrollment_id,Exam_timetable_id,Obtain_marks)values(" & txtCity.SelectedValue & "," & DropDownList1.SelectedValue & ",'" & txtAreaName.Text & "')")
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()


        Else

            dm.setdata("Update Result set Enrollment_id='" & txtCity.SelectedValue & "',Exam_timetable_id='" & DropDownList1.SelectedValue & "',Obtain_marks='" & txtAreaName.Text & "' where Result_id=" & GridView1.SelectedValue)
            MultiView1.ActiveViewIndex = 0
            GridView1.DataBind()

        End If

    End Sub

    Protected Sub GridView1_SeltxectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Result where Result_id=" & GridView1.SelectedValue)
        txtCity.SelectedValue = dt.Rows(0).Item(1).ToString()
        DropDownList1.SelectedValue = dt.Rows(0).Item(2).ToString()
        txtAreaName.Text = dt.Rows(0).Item(3).ToString()

        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtCity.DataBind()
        txtCity.Items.Insert(0, New ListItem("--Select Enrollment--", 0))
        DropDownList1.DataBind()
        DropDownList1.Items.Insert(0, New ListItem("--Select Exam Timetable--", 0))
        txtAreaName.Text = ""
        
        btnInsert.Text = "Insert"
    End Sub

    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs)
        If MsgBox("Are you sure to Delete?", MsgBoxStyle.YesNo, "Confirm Delete") = MsgBoxResult.Yes Then
            sender.CommandName = "Delete"
        End If
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        MultiView1.ActiveViewIndex = 0
    End Sub
    Protected Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        If Session("Admin_id") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If

    End Sub
End Class
