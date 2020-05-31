
Partial Class Admin_Attendance
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        

        If (btnInsert.Text = "Insert") Then

            Dim dt As Data.DataTable = dm.getdata("Select * from Attendance where Attendance_date like '" & txtAreaName.Text & "' and Enrollment_id like '" & txtCity.SelectedValue & "'")
            If (dt.Rows.Count > 0) Then
                MsgBox("One Student  has One Attendance Per Day!!", MsgBoxStyle.Exclamation, "Alert")
            Else
                'Dim dt As Data.DataTable = dm.getdata("Select * from Attendance ")
                dm.setdata("Insert into Attendance(Enrollment_id,Attendance_date,Status_id)values(" & txtCity.SelectedValue & ",'" & txtAreaName.Text & "'," & DropDownList1.SelectedValue & ")")
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()
            End If

        Else
            Dim dt As Data.DataTable = dm.getdata("Select * from Attendance where Attendance_date like '" & txtAreaName.Text & "' and Enrollment_id like '" & txtCity.SelectedValue & "'")
            If (dt.Rows.Count > 0) Then
                MsgBox("One Student  has One Attendance Per Day!!", MsgBoxStyle.Exclamation, "Alert")
            Else
                dm.setdata("Update Attendance set Enrollment_id='" & txtCity.SelectedValue & "',Attendance_date='" & txtAreaName.Text & "',Status_id='" & DropDownList1.SelectedValue & "' where Attendance_id=" & GridView1.SelectedValue)
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()

            End If
        End If

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Attendance where Attendance_id=" & GridView1.SelectedValue)
        txtCity.SelectedValue = dt.Rows(0).Item(1).ToString()
        txtAreaName.Text = dt.Rows(0).Item(2).ToString()

        DropDownList1.SelectedValue = dt.Rows(0).Item(3).ToString()
        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtCity.DataBind()
        txtCity.Items.Insert(0, New ListItem("--Select Enrollment--", 0))

        txtAreaName.Text = ""
          DropDownList1.DataBind()
        DropDownList1.Items.Insert(0, New ListItem("--Select Status--", 0))

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
