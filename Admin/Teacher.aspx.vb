
Partial Class Admin_Teacher
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from Teacher where UPPER(Teacher_name) like '" & txtAreaName.Text.ToUpper & "' and UPPER(Address) like '" & TextBox1.Text.ToUpper & "' and UPPER(Contact_no) like '" & TextBox2.Text.ToUpper & "' and UPPER(Email_id) like '" & TextBox3.Text.ToUpper & "' and UPPER(Qualification) like '" & TextBox4.Text.ToUpper & "' and Area_id=" & txtCity.SelectedValue)

            dm.setdata("Insert into Teacher(Teacher_name,Address,Contact_no,Email_id,Qualification,Area_id)values('" & txtAreaName.Text & "','" & TextBox1.Text & "'," & TextBox2.Text & ",'" & TextBox3.Text & "','" & TextBox4.Text & "'," & txtCity.SelectedValue & ")")
        Else
            dm.setdata("Update Teacher set Teacher_name='" & txtAreaName.Text & "',Address='" & TextBox1.Text & "',Contact_no='" & TextBox2.Text & "',Email_id='" & TextBox3.Text & "',Qualification='" & TextBox4.Text & "',Area_id='" & txtCity.SelectedValue & "' where Teacher_id=" & GridView1.SelectedValue)
        End If

        MultiView1.ActiveViewIndex = 0
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Teacher where Teacher_id=" & GridView1.SelectedValue)
        txtAreaName.Text = dt.Rows(0).Item(1).ToString()
        TextBox1.Text = dt.Rows(0).Item(2).ToString()
        TextBox2.Text = dt.Rows(0).Item(3).ToString()
        TextBox3.Text = dt.Rows(0).Item(4).ToString()
        TextBox4.Text = dt.Rows(0).Item(5).ToString()
        txtCity.SelectedValue = dt.Rows(0).Item(6).ToString()
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
        txtCity.Items.Insert(0, New ListItem("--Select Area--", 0))
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
