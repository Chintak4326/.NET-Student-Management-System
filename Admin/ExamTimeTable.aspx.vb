
Partial Class Admin_ExamTimeTable
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from Exam_Timetable where Batch_id ='" & txtCity.SelectedValue & "' and Standard_id=" & DropDownList2.SelectedValue)
            If (dt.Rows.Count > 0) Then
                MsgBox("Exam Timetable Already Exists", MsgBoxStyle.Exclamation, "Alert")
            Else

                dm.setdata("Insert into Exam_Timetable(Exam_name,Exam_date,Start_time,End_time,Total_marks,Passing_marks,Batch_id,Standard_id)values('" & txtName.Text & "','" & txtAreaName.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "'," & txtCity.SelectedValue & "," & DropDownList2.SelectedValue & ")")
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()
            End If

        Else
            Dim dt As Data.DataTable = dm.getdata("Select * from Exam_Timetable where Batch_id ='" & txtCity.SelectedValue & "' and Standard_id=" & DropDownList2.SelectedValue)
            If (dt.Rows.Count > 0) Then
                MsgBox("Exam Timetable Already Exists", MsgBoxStyle.Exclamation, "Alert")
            Else
                dm.setdata("Update Exam_Timetable set Exam_name='" & txtName.Text & "',Exam_date='" & txtAreaName.Text & "',Start_time='" & TextBox1.Text & "',End_time='" & TextBox2.Text & "',Total_marks='" & TextBox3.Text & "',Passing_marks='" & TextBox4.Text & "',Batch_id='" & txtCity.SelectedValue & "',Standard_id='" & DropDownList2.SelectedValue & "' where Exam_timetable_id=" & GridView1.SelectedValue)
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()
            End If
        End If

    End Sub

    Protected Sub GridView1_SeltxectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Exam_Timetable where Exam_timetable_id=" & GridView1.SelectedValue)
        txtName.Text = dt.Rows(0).Item(1).ToString()
        txtAreaName.Text = dt.Rows(0).Item(2).ToString()
        TextBox1.Text = dt.Rows(0).Item(3).ToString()
        TextBox2.Text = dt.Rows(0).Item(4).ToString()
        TextBox3.Text = dt.Rows(0).Item(6).ToString()
        TextBox4.Text = dt.Rows(0).Item(7).ToString()
        txtCity.SelectedValue = dt.Rows(0).Item(5).ToString()
        'DropDownList1.SelectedValue = dt.Rows(0).Item().ToString()
        DropDownList2.SelectedValue = dt.Rows(0).Item(8).ToString()
        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtName.Text = ""
        txtAreaName.Text = ""
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        txtCity.DataBind()
        txtCity.Items.Insert(0, New ListItem("--Select Batch--", 0))
        'DropDownList1.DataBind()
        'DropDownList1.Items.Insert(0, New ListItem("--Select Subject--", 0))
        DropDownList2.DataBind()
        DropDownList2.Items.Insert(0, New ListItem("--Select Standard--", 0))

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
