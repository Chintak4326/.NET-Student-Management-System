Imports Microsoft.VisualBasic

Public Class Attendance
    Private _Attendance_id, _Enrollment_id, _Attendance_date, _Status_id As String
    Public Property Attendance_id() As String
        Get
            Return _Attendance_id
        End Get
        Set(value As String)
            _Attendance_id = value
        End Set
    End Property
    Public Property Enrollment_id() As String
        Get
            Return _Enrollment_id
        End Get
        Set(value As String)
            _Enrollment_id = value
        End Set
    End Property
    Public Property Attendance_date() As String
        Get
            Return _Attendance_date
        End Get
        Set(value As String)
            _Attendance_date = value
        End Set
    End Property

    Public Property Status_id() As String
        Get
            Return _Status_id
        End Get
        Set(value As String)
            _Status_id = value
        End Set
    End Property
End Class
