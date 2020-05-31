
Partial Class Admin_Fees
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from Fees")
           
            dm.setdata("Insert into Fees(Fees_amount,Fees_type,Fees_status,Fees_date,Fees_discount,Enrollment_id,Course_id)values('" & txtAreaName.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "'," & txtCity.SelectedValue & "," & DropDownList1.SelectedValue & ")")
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()


        Else

            dm.setdata("Update Fees set Fees_amount='" & txtAreaName.Text & "',Fees_type='" & TextBox1.Text & "',Fees_status='" & TextBox2.Text & "',Fees_date='" & TextBox3.Text & "',Fees_discount='" & TextBox4.Text & "',Enrollment_id='" & txtCity.SelectedValue & "',Course_id='" & DropDownList1.SelectedValue & "' where Fees_id=" & GridView1.SelectedValue)
            MultiView1.ActiveViewIndex = 0
            GridView1.DataBind()

        End If

    End Sub

    Protected Sub GridView1_SeltxectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Fees where Fees_id=" & GridView1.SelectedValue)
        txtAreaName.Text = dt.Rows(0).Item(1).ToString()
        TextBox1.Text = dt.Rows(0).Item(2).ToString()
        TextBox2.Text = dt.Rows(0).Item(3).ToString()
        TextBox3.Text = dt.Rows(0).Item(5).ToString()
        TextBox4.Text = dt.Rows(0).Item(7).ToString()
        txtCity.SelectedValue = dt.Rows(0).Item(4).ToString()
        DropDownList1.SelectedValue = dt.Rows(0).Item(6).ToString()
        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtAreaName.Text = ""
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        txtCity.DataBind()
        txtCity.Items.Insert(0, New ListItem("--Select Enrollment--", 0))
        DropDownList1.DataBind()
        DropDownList1.Items.Insert(0, New ListItem("--Select Course--", 0))

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
