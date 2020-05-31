Imports System.Data.Sql
Imports System.Data.SqlClient

Partial Class Student_feesstatus
   

    Inherits System.Web.UI.Page
    Dim dm As New DataManager
   
 
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim dt As Data.DataTable = dm.getdata("Select * from Fees where Enrollment_id=" & Session("Enrollment_id"))
        Dim sum As Integer = 0
        Dim rem1 As Integer
        Dim ans As Integer
        For Each dr As Data.DataRow In dt.Rows
            sum = sum + dr.Item(1)
        Next
        Label1.Text = sum

        Label2.Text = CInt(GridView1.Rows(0).Cells(7).Text)

        rem1 = Label2.Text
        ans = rem1 - sum
        Label3.Text = ans

       

    End Sub

End Class
