Imports System.Data.SqlClient
Partial Class Admin_Area
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dm As New DataManager
    Dim ds As New System.Data.DataSet
    Dim pos As Integer
    Dim cmdbldr As New SqlCommandBuilder
    Dim da As New SqlDataAdapter("Select * from Area", cn)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Chintak\Desktop\Sakar Group Tuition\StudentManagement\App_Data\sms.mdf;Integrated Security=True;User Instance=True"
        cn.Open()
        da.Fill(ds, "Area")
    End Sub


    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from Area where UPPER(Area_name) like '" & txtAreaName.Text.ToUpper & "' and City_id=" & txtCity.SelectedValue)
            If (dt.Rows.Count > 0) Then
                MsgBox("Area Already Exists", MsgBoxStyle.Exclamation, "Alert")
            Else
                dm.setdata("Insert into Area(Area_name,City_id)values('" & txtAreaName.Text & "'," & txtCity.SelectedValue & ")")
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()
            End If

        Else
            Dim dt As Data.DataTable = dm.getdata("Select * from Area where UPPER(Area_name) like '" & txtAreaName.Text.ToUpper & "' and City_id=" & txtCity.SelectedValue)
            If (dt.Rows.Count > 0) Then
                MsgBox("Area Already Exists", MsgBoxStyle.Exclamation, "Alert")
            Else
                dm.setdata("Update Area set Area_name='" & txtAreaName.Text & "',City_id='" & txtCity.SelectedValue & "' where Area_id=" & GridView1.SelectedValue)
                MultiView1.ActiveViewIndex = 0
                GridView1.DataBind()

            End If
        End If

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Area where Area_id=" & GridView1.SelectedValue)
        txtAreaName.Text = dt.Rows(0).Item(1).ToString()
        txtCity.SelectedValue = dt.Rows(0).Item(2).ToString()
        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtAreaName.Text = ""
        txtCity.DataBind()
        txtCity.Items.Insert(0, New ListItem("--Select City--", 0))
        btnInsert.Text = "Insert"
    End Sub
    'Dim pos As Integer
    'Dim dt As Data.DataTable = dm.getdata("DELETE FROM  Area WHERE Area_id=" & GridView1.SelectedValue)
    'dt.Rows(pos).Delete()
    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs)
        If MsgBox("Are you sure to Delete?", MsgBoxStyle.YesNo, "Confirm Delete") = MsgBoxResult.Yes Then
            sender.CommandName = "Delete"
            
            ds.Tables(0).Rows(pos).Delete()
        End If
        'da.Update(ds, "Area")
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
