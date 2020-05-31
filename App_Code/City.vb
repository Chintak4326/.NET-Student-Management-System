Imports Microsoft.VisualBasic

Public Class City
    Private _city_id, _city_name As String
    Public Property city_id() As String
        Get
            Return _city_id
        End Get
        Set(value As String)
            _city_id = value
        End Set
    End Property
    Public Property city_name() As String
        Get
            Return _city_name
        End Get
        Set(value As String)
            _city_name = value
        End Set
    End Property

End Class
