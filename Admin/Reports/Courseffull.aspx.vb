Imports System.Data.SqlClient
Imports CrystalDecisions.CrystalReports.Engine
Partial Class Admin_Reports_Courseffull
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Chintak\Desktop\Sakar Group Tuition\StudentManagement\App_Data\sms.mdf;Integrated Security=True;User Instance=True"
        cn.Open()

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim crystalReport As New ReportDocument
        crystalReport.Load(Server.MapPath("~/Admin/Reports/course.rpt"))
        Dim dt As New System.Data.DataTable
        Dim da As New SqlDataAdapter("select * from Course c,Standard s,Medium m,Board b,Stream s1 where c.Standard_id=s.Standard_id and c.Medium_id=m.Medium_id and c.Board_id=b.Board_id and c.Stream_id=s1.Stream_id", cn)
        da.Fill(dt)
        crystalReport.SetDataSource(dt)
        CrystalReportViewer1.ReportSource = crystalReport
        crystalReport.ExportToHttpResponse(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat, Response, False, "CourseReport")
    End Sub
End Class
