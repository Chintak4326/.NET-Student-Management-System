
Partial Class Admin_Medium
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from Medium where UPPER(Medium_type) like '" & txtCityName.Text.ToUpper & "'")
            If (dt.Rows.Count > 0) Then
                MsgBox("Medium Already Exists", MsgBoxStyle.Exclamation, "Alert")
            Else

                dm.setdata("Insert into Medium(Medium_type)values('" & txtCityName.Text & "')")
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()
            End If

        Else
            'Dim dt As Data.DataTable = dm.getdata("Select * from City where UPPER(city_name) like ='" & txtCityName.Text.ToUpper & "' ")
            'If (dt.Rows.Count > 0) Then
            '    MsgBox("City Already Exists")
            'Else
            '    dm.setdata("Update City set city_name='" & txtCityName.Text & "' where city_id=" & GridView1.SelectedValue)
            Dim dt As Data.DataTable = dm.getdata("Select * from Medium where UPPER(Medium_type) like '" & txtCityName.Text.ToUpper & "'")
            If (dt.Rows.Count > 0) Then
                MsgBox("Medium Already Exists", MsgBoxStyle.Exclamation, "Alert")
            Else
                dm.setdata("Update Medium set Medium_type='" & txtCityName.Text & "' where Medium_id=" & GridView1.SelectedValue)
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()
            End If
        End If


    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Medium where Medium_id=" & GridView1.SelectedValue)
        txtCityName.Text = dt.Rows(0).Item(1).ToString()
        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtCityName.Text = ""
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
