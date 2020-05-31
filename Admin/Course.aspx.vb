
Partial Class Admin_Course
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from Course where UPPER(Course_name) like '" & txtName.Text.ToUpper & "' ")
            If (dt.Rows.Count > 0) Then
                MsgBox("Course Already Exists", MsgBoxStyle.Exclamation, "Alert")
            Else

                dm.setdata("Insert into Course(Course_name,Standard_id,Medium_id,Board_id,Yearly_fees,Advance_fees,Monthly_fees,Instalments,Stream_id)values('" & txtName.Text & "'," & txtCity.SelectedValue & "," & DropDownList1.SelectedValue & "," & DropDownList2.SelectedValue & ",'" & txtAreaName.Text & "','" & TextBox1.Text & "'," & TextBox2.Text & ",'" & TextBox3.Text & "'," & DropDownList3.SelectedValue & ")")
            End If
        Else
            Dim dt As Data.DataTable = dm.getdata("Select * from Course where UPPER(Course_name) like '" & txtName.Text.ToUpper & "' ")
            If (dt.Rows.Count > 0) Then
                MsgBox("Course Already Exists", MsgBoxStyle.Exclamation, "Alert")
            Else

                dm.setdata("Update Course set Course_name='" & txtName.Text & "',Standard_id='" & txtCity.SelectedValue & "',Medium_id='" & DropDownList1.SelectedValue & "',Board_id='" & DropDownList2.SelectedValue & "',Yearly_fees='" & txtAreaName.Text & "',Advance_fees='" & TextBox1.Text & "',Monthly_fees='" & TextBox2.Text & "',Instalments='" & TextBox3.Text & "',Stream_id='" & DropDownList3.SelectedValue & "' where Course_id=" & GridView1.SelectedValue)
            End If
        End If

        MultiView1.ActiveViewIndex = 0
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Course where Course_id=" & GridView1.SelectedValue)
        txtName.Text = dt.Rows(0).Item(1).ToString()
        txtCity.SelectedValue = dt.Rows(0).Item(2).ToString()
        DropDownList1.SelectedValue = dt.Rows(0).Item(3).ToString()
        DropDownList2.SelectedValue = dt.Rows(0).Item(4).ToString()


        txtAreaName.Text = dt.Rows(0).Item(5).ToString()
        TextBox1.Text = dt.Rows(0).Item(6).ToString()
        TextBox2.Text = dt.Rows(0).Item(7).ToString()
        TextBox3.Text = dt.Rows(0).Item(8).ToString()

        DropDownList3.SelectedValue = dt.Rows(0).Item(9).ToString()

        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtName.Text = ""
        txtCity.DataBind()
        txtCity.Items.Insert(0, New ListItem("--Select Standard--", 0))
        DropDownList1.DataBind()
        DropDownList1.Items.Insert(0, New ListItem("--Select Medium--", 0))
        DropDownList2.DataBind()
        DropDownList2.Items.Insert(0, New ListItem("--Select Board--", 0))
        txtAreaName.Text = ""
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        DropDownList3.DataBind()
        DropDownList3.Items.Insert(0, New ListItem("--Select Stream--", 0))

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
