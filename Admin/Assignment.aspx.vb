Imports System.Data.SqlClient
Partial Class Admin_Assignment
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dm As New DataManager
    Dim ds As New System.Data.DataSet
    Dim pos As Integer
    Dim cmdbldr As New SqlCommandBuilder
    Dim da As New SqlDataAdapter("Select * from Assignment", cn)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Chintak\Desktop\Sakar Group Tuition\StudentManagement\App_Data\sms.mdf;Integrated Security=True;User Instance=True"
        cn.Open()
        da.Fill(ds, "Assignment")
    End Sub
    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            If FileUpload1.HasFile Then
                If FileUpload1.FileName.EndsWith(".txt") Or FileUpload1.FileName.EndsWith(".docx") Or FileUpload1.FileName.EndsWith(".pdf") Then
                    FileUpload1.SaveAs(Server.MapPath("~\Assignment\" & FileUpload1.FileName))
                    dm.setdata("Insert into Assignment(Assignment_date,Submission_date,Batch_id,Assignment_url)values('" & txtAreaName.Text & "','" & TextBox1.Text & "'," & txtCity.SelectedValue & ",'" & FileUpload1.FileName & "')")
                    MultiView1.ActiveViewIndex = 0
                    GridView1.DataBind()
                Else
                    MsgBox("Select  File")
                End If
            Else
                MsgBox("Select File to Upload")
            End If
        Else
            If FileUpload1.HasFile Then
                If FileUpload1.FileName.EndsWith(".txt") Or FileUpload1.FileName.EndsWith(".docx") Or FileUpload1.FileName.EndsWith(".pdf") Then
                    FileUpload1.SaveAs(Server.MapPath("~\Assignment\" & FileUpload1.FileName))
                    dm.setdata("update Assignment set Assignment_date='" & txtAreaName.Text & "',Submission_date='" & TextBox1.Text & "',Batch_id=" & txtCity.SelectedValue & ",Assignment_url='" & FileUpload1.FileName & "' where Assignment_id=" & GridView1.SelectedValue)
                    MultiView1.ActiveViewIndex = 0
                    GridView1.DataBind()
                Else
                    MsgBox("Select  File")
                End If
            Else
                MsgBox("Select File to Upload")
            End If
        End If
    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        'txtImageurl.Text = ""
        txtCity.DataBind()
        txtAreaName.Text = ""
        TextBox1.Text = ""
        txtCity.Items.Insert(0, New ListItem("--Select Batch--", 0))
        btnInsert.Text = "Insert"

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from Assignment where Assignment_id=" & GridView1.SelectedValue)
        'txtImageurl.Text = dt.Rows(0).Item(1).ToString()
        txtCity.SelectedValue = dt.Rows(0).Item(2).ToString()
        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1

    End Sub
    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As EventArgs)

        If MsgBox("Are you sure to Delete?", MsgBoxStyle.YesNo, "Confirm Delete") = MsgBoxResult.Yes Then
            sender.CommandName = "Delete"
            ds.Tables(0).Rows(pos).Delete()
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
