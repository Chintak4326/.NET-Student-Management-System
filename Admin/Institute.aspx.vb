
Partial Class Admin_Institute
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click

        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from Institute where UPPER(Institute_name) like '" & txtCityName.Text.ToUpper & "' ")
            If (dt.Rows.Count > 0) Then
                MsgBox("Institute Already Exists", MsgBoxStyle.Exclamation, "Alert")
            Else
                dm.setdata("Insert into Institute(Institute_name,Owner_name,Owner_contact_no,Email_id)values('" & txtCityName.Text & "','" & TextBox1.Text & "'," & TextBox2.Text & ",'" & TextBox3.Text & "')")
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()
            End If
        Else
          
            Dim dt As Data.DataTable = dm.getdata("Select * from Institute where UPPER(Institute_name) like '" & txtCityName.Text.ToUpper & "'")
            If (dt.Rows.Count > 0) Then
                MsgBox("Institute Already Exists", MsgBoxStyle.Exclamation, "Alert")
            Else
                dm.setdata("Update Institute set Institute_name='" & txtCityName.Text & "',Owner_name='" & TextBox1.Text & "',Owner_contact_no='" & TextBox2.Text & "',Email_id='" & TextBox3.Text & "' where Institute_id=" & GridView1.SelectedValue)
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()
            End If
        End If
       
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged

        Dim dt As Data.DataTable = dm.getdata("Select * from Institute where Institute_id=" & GridView1.SelectedValue)
        txtCityName.Text = dt.Rows(0).Item(1).ToString()
        TextBox1.Text = dt.Rows(0).Item(2).ToString()
        TextBox2.Text = dt.Rows(0).Item(3).ToString()
        TextBox3.Text = dt.Rows(0).Item(4).ToString()

        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtCityName.Text = ""
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        
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
