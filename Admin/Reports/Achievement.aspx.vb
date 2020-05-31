
Partial Class Admin_Achievement
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            If FileUpload1.HasFile Then
                If FileUpload1.FileName.EndsWith(".jpg") Or FileUpload1.FileName.EndsWith(".png") Or FileUpload1.FileName.EndsWith(".jpeg") Then
                    FileUpload1.SaveAs(Server.MapPath("~\ProductImages\" & FileUpload1.FileName))
                    dm.setdata("Insert into Achievement(Achievement_year,Description,Photo_url)values('" & txtAreaName.Text & "','" & TextBox2.Text & "','" & FileUpload1.FileName & "')")
                    MultiView1.ActiveViewIndex = 0
                    GridView1.DataBind()
                Else
                    MsgBox("Select Image File")
                End If
            Else
                MsgBox("Select File to Upload")
            End If
        Else
            If FileUpload1.HasFile Then
                If FileUpload1.FileName.EndsWith(".jpg") Or FileUpload1.FileName.EndsWith(".png") Or FileUpload1.FileName.EndsWith(".jpeg") Then
                    FileUpload1.SaveAs(Server.MapPath("~\ProductImages\" & FileUpload1.FileName))
                    dm.setdata("update Achievement set Achievement_year='" & txtAreaName.Text & "',Description='" & TextBox2.Text & "',Photo_url ='" & FileUpload1.FileName & "' where Achievement_id=" & GridView1.SelectedValue)
                    MultiView1.ActiveViewIndex = 0
                    GridView1.DataBind()
                Else
                    MsgBox("Select Image File")
                End If
            Else
                MsgBox("Select File to Upload")
            End If
            
        End If
    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        'txtImageurl.Text = ""
         btnInsert.Text = "Insert"

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Achievement where Achievement_id=" & GridView1.SelectedValue)
        'txtImageurl.Text = dt.Rows(0).Item(1).ToString()
        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1

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
