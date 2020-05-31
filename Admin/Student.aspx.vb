
Partial Class Admin_Student
    Inherits System.Web.UI.Page
    Dim dm As New DataManager
    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnInsert.Click
        If (btnInsert.Text = "Insert") Then
            Dim dt As Data.DataTable = dm.getdata("Select * from User1")
            dm.setdata("Insert into User1(Reg_date,User_name,User_address,User_email_id,User_contact_no,User_dob,School_name,Result,Father_name,F_qual,F_occupation,F_mobile,Mother_name,M_qual,M_occupation,M_mobile,Gender_id,Area_id,Medium_id,Branch_id,Standard_id)values('" & txtAreaName.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & TextBox9.Text & "','" & TextBox10.Text & "','" & TextBox11.Text & "','" & TextBox12.Text & "','" & TextBox13.Text & "','" & TextBox14.Text & "','" & TextBox15.Text & "'," & txtCity.SelectedValue & "," & DropDownList1.SelectedValue & "," & DropDownList2.SelectedValue & "," & DropDownList3.SelectedValue & "," & DropDownList4.SelectedValue & ")")
            MultiView1.ActiveViewIndex = 0
            GridView1.DataBind()

        Else

            dm.setdata("Update User1 set Reg_date='" & txtAreaName.Text & "',User_name='" & TextBox1.Text & "',User_address='" & TextBox2.Text & "',User_email_id='" & TextBox3.Text & "',User_contact_no='" & TextBox4.Text & "',User_dob='" & TextBox5.Text & "',School_name='" & TextBox6.Text & "',Result='" & TextBox7.Text & "',Father_name='" & TextBox8.Text & "',F_qual='" & TextBox9.Text & "',F_occupation='" & TextBox10.Text & "',F_mobile='" & TextBox11.Text & "',Mother_name='" & TextBox12.Text & "',M_qual='" & TextBox13.Text & "',M_occupation='" & TextBox14.Text & "',M_mobile='" & TextBox15.Text & "',Gender_id='" & txtCity.SelectedValue & "',Area_id='" & DropDownList1.SelectedValue & "',Medium_id='" & DropDownList2.SelectedValue & "',Branch_id='" & DropDownList3.SelectedValue & "',Standard_id='" & DropDownList4.SelectedValue & "' where User_id=" & GridView1.SelectedValue)
            MultiView1.ActiveViewIndex = 0
            GridView1.DataBind()

        End If

    End Sub

    Protected Sub GridView1_SeltxectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim dt As Data.DataTable = dm.getdata("Select * from User1 where User_id=" & GridView1.SelectedValue)
        txtAreaName.Text = dt.Rows(0).Item(1).ToString()
        TextBox1.Text = dt.Rows(0).Item(2).ToString()
        TextBox2.Text = dt.Rows(0).Item(3).ToString()
        TextBox3.Text = dt.Rows(0).Item(4).ToString()
        TextBox4.Text = dt.Rows(0).Item(5).ToString()
        TextBox5.Text = dt.Rows(0).Item(6).ToString()
        TextBox6.Text = dt.Rows(0).Item(7).ToString()
        TextBox7.Text = dt.Rows(0).Item(8).ToString()
        TextBox8.Text = dt.Rows(0).Item(9).ToString()
        TextBox9.Text = dt.Rows(0).Item(10).ToString()
        TextBox10.Text = dt.Rows(0).Item(11).ToString()
        TextBox11.Text = dt.Rows(0).Item(12).ToString()
        TextBox12.Text = dt.Rows(0).Item(13).ToString()

        TextBox13.Text = dt.Rows(0).Item(14).ToString()
        TextBox14.Text = dt.Rows(0).Item(15).ToString()
        TextBox15.Text = dt.Rows(0).Item(16).ToString()
        txtCity.SelectedValue = dt.Rows(0).Item(17).ToString()
        DropDownList1.SelectedValue = dt.Rows(0).Item(18).ToString()
        DropDownList2.SelectedValue = dt.Rows(0).Item(19).ToString()
        DropDownList3.SelectedValue = dt.Rows(0).Item(20).ToString()


        DropDownList4.SelectedValue = dt.Rows(0).Item(21).ToString()
        btnInsert.Text = "Update"
        MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAdd.Click
        MultiView1.ActiveViewIndex = 1
        txtAreaName.Text = ""
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""

        TextBox10.Text = ""
        TextBox11.Text = ""
        TextBox12.Text = ""
        TextBox13.Text = ""
        TextBox14.Text = ""
        TextBox15.Text = ""
        txtCity.DataBind()
        txtCity.Items.Insert(0, New ListItem("--Select Gender--", 0))
        DropDownList1.DataBind()
        DropDownList1.Items.Insert(0, New ListItem("--Select Area--", 0))
        DropDownList2.DataBind()
        DropDownList2.Items.Insert(0, New ListItem("--Select Medium--", 0))
        DropDownList3.DataBind()
        DropDownList3.Items.Insert(0, New ListItem("--Select Branch--", 0))
        DropDownList4.DataBind()
        DropDownList4.Items.Insert(0, New ListItem("--Select Standard--", 0))
        btnInsert.Text = "Insert"
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As EventArgs)
        If MsgBox("Are you sure to Delete?", MsgBoxStyle.YesNo, "Confirm Delete") = MsgBoxResult.Yes Then
            sender.CommandName = "Delete"
        End If
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnCancel.Click
        MultiView1.ActiveViewIndex = 0
    End Sub
    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreInit
        If Session("Admin_id") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If

    End Sub

   
End Class

   