
Partial Class Admin_Branch
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from Branch where UPPER(Branch_name) like '" & txtAreaName.Text.ToUpper & "' ")
            If (dt.Rows.Count > 0) Then
                MsgBox("Branch Already Exists", MsgBoxStyle.Exclamation, "SMS")
            Else
                dm.setdata("Insert into Branch(Branch_name,Receptionist_name,Contact_no,Address,Area_id,Institute_id)values('" & txtAreaName.Text & "','" & TextBox1.Text & "'," & TextBox2.Text & ",'" & TextBox3.Text & "'," & txtCity.SelectedValue & "," & DropDownList1.SelectedValue & ")")
            End If
        Else
            'Dim dt As Data.DataTable = dm.getdata("Select * from Branch where  UPPER(Branch_name) like '" & txtAreaName.Text.ToUpper & "' and Address like '" & TextBox3.Text & "' ")
            'If (dt.Rows.Count > 0) Then
            '    MsgBox("Branch Already Exists", MsgBoxStyle.Exclamation, "SMS")
            'Else
            dm.setdata("Update Branch set Branch_name='" & txtAreaName.Text & "',Receptionist_name='" & TextBox1.Text & "',Contact_no='" & TextBox2.Text & "',Address='" & TextBox3.Text & "',Area_id='" & txtCity.SelectedValue & "',Institute_id='" & DropDownList1.SelectedValue & "' where Branch_id=" & GridView1.SelectedValue)
        End If
        MultiView1.ActiveViewIndex = 0
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Branch where Branch_id=" & GridView1.SelectedValue)
        txtAreaName.Text = dt.Rows(0).Item(1).ToString()
        TextBox1.Text = dt.Rows(0).Item(2).ToString()
        TextBox2.Text = dt.Rows(0).Item(3).ToString()
        TextBox3.Text = dt.Rows(0).Item(4).ToString()

        txtCity.SelectedValue = dt.Rows(0).Item(5).ToString()
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

        txtCity.DataBind()
        txtCity.Items.Insert(0, New ListItem("--Select Area--", 0))
        DropDownList1.DataBind()
        DropDownList1.Items.Insert(0, New ListItem("--Select Institute--", 0))
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
