Imports Microsoft.VisualBasic

Public Class Achievement
    Private _Achievement_id, _Achievement_year, _Description, _Enrollment_id, _Photo_url As String
    Public Property Achievement_id() As String
        Get
            Return _Achievement_id
        End Get
        Set(value As String)
            _Achievement_id = value
        End Set
    End Property
    Public Property Achievement_year() As String
        Get
            Return _Achievement_year
        End Get
        Set(value As String)
            _Achievement_year = value
        End Set
    End Property
    Public Property Description() As String
        Get
            Return _Description
        End Get
        Set(value As String)
            _Description = value
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
    Public Property Photo_url() As String
        Get
            Return _Photo_url
        End Get
        Set(value As String)
            _Photo_url = value
        End Set
    End Property
End Class
