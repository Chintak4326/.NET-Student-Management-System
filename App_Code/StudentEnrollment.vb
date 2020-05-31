Imports Microsoft.VisualBasic

Public Class StudentEnrollment
    Private _Enrollment_id, _Enrollment_date, _Batch_id, _User_id As String
    Public Property Enrollment_id() As String
        Get
            Return _Enrollment_id
        End Get
        Set(value As String)
            _Enrollment_id = value
        End Set
    End Property
    Public Property Enrollment_date() As String
        Get
            Return _Enrollment_date
        End Get
        Set(value As String)
            _Enrollment_date = value
        End Set
    End Property
    Public Property Batch_id() As String
        Get
            Return _Batch_id
        End Get
        Set(value As String)
            _Batch_id = value
        End Set
    End Property

    Public Property User_id() As String
        Get
            Return _User_id
        End Get
        Set(value As String)
            _User_id = value
        End Set
    End Property
End Class
