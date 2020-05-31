
Partial Class Admin_StudentEnrollment
    Inherits System.Web.UI.Page
   Dim dm As New DataManager
    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from Student_Enrollment")

            dm.setdata("Insert into Student_Enrollment(Enrollment_date,User_Email,Batch_id,User_id,Password)values('" & txtAreaName.Text & "' ,'" & TextBox3.Text & "'," & txtCity.SelectedValue & "," & DropDownList1.SelectedValue & ",'" & TextBox1.Text & "')")
            MultiView1.ActiveViewIndex = 0
            GridView1.DataBind()


        Else
            dm.setdata("Update Student_Enrollment set Enrollment_date='" & txtAreaName.Text & "', User_Email='" & TextBox3.Text & "',Batch_id='" & txtCity.SelectedValue & "',User_id='" & DropDownList1.SelectedValue & "',Password='" & TextBox1.Text & "' where Enrollment_id=" & GridView1.SelectedValue)
            MultiView1.ActiveViewIndex = 0
            GridView1.DataBind()

        End If

    End Sub

    Protected Sub GridView1_SeltxectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Student_Enrollment where Enrollment_id=" & GridView1.SelectedValue)
        txtAreaName.Text = dt.Rows(0).Item(1).ToString()
        TextBox3.Text = dt.Rows(0).Item(2).ToString()
        txtCity.SelectedValue = dt.Rows(0).Item(3).ToString()
        DropDownList1.SelectedValue = dt.Rows(0).Item(4).ToString()
        TextBox1.Text = dt.Rows(0).Item(5).ToString()
        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtAreaName.Text = ""
        TextBox3.Text = ""
        txtCity.DataBind()
        txtCity.Items.Insert(0, New ListItem("--Select Batch--", 0))
        DropDownList1.DataBind()
        DropDownList1.Items.Insert(0, New ListItem("--Select User--", 0))
        TextBox1.Text = ""
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
