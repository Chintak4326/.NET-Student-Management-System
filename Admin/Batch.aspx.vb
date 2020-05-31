
Partial Class Admin_Batch
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from  Batch")
           
            dm.setdata("Insert into Batch(Batch_name,Batch_startdate,Batch_enddate,Branch_id,Course_id,Subject_id,Teacher_id)values('" & txtName.Text & "','" & txtAreaName.Text & "','" & TextBox1.Text & "'," & txtCity.SelectedValue & "," & DropDownList1.SelectedValue & "," & DropDownList2.SelectedValue & "," & DropDownList3.SelectedValue & ")")
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()


        Else

            dm.setdata("Update Batch set Batch_name='" & txtName.Text & "',Batch_startdate='" & txtAreaName.Text & "',Batch_enddate='" & TextBox1.Text & "',Branch_id='" & txtCity.SelectedValue & "',Course_id='" & DropDownList1.SelectedValue & "',Subject_id='" & DropDownList2.SelectedValue & "',Teacher_id='" & DropDownList3.SelectedValue & "' where Batch_id=" & GridView1.SelectedValue)
            MultiView1.ActiveViewIndex = 0
            GridView1.DataBind()

        End If

    End Sub

    Protected Sub GridView1_SeltxectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Batch where Batch_id=" & GridView1.SelectedValue)
        txtName.Text = dt.Rows(0).Item(1).ToString()
        txtAreaName.Text = dt.Rows(0).Item(2).ToString()
        TextBox1.Text = dt.Rows(0).Item(3).ToString()
        txtCity.SelectedValue = dt.Rows(0).Item(4).ToString()
        DropDownList1.SelectedValue = dt.Rows(0).Item(5).ToString()
        DropDownList2.SelectedValue = dt.Rows(0).Item(6).ToString()
        DropDownList3.SelectedValue = dt.Rows(0).Item(7).ToString()
        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtName.Text = ""
        txtAreaName.Text = ""
        TextBox1.Text = ""
        txtCity.DataBind()
        txtCity.Items.Insert(0, New ListItem("--Select Branch--", 0))
        DropDownList1.DataBind()
        DropDownList1.Items.Insert(0, New ListItem("--Select Course--", 0))
        DropDownList2.DataBind()
        DropDownList2.Items.Insert(0, New ListItem("--Select Subject--", 0))
        DropDownList3.DataBind()
        DropDownList3.Items.Insert(0, New ListItem("--Select Teacher--", 0))

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
