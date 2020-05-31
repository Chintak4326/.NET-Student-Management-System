Imports Microsoft.VisualBasic

Public Class Area
    Private _Area_id, _Area_name, _city_id As String
    Public Property Area_id() As String
        Get
            Return _Area_id
        End Get
        Set(value As String)
            _Area_id = value
        End Set
    End Property
    Public Property Area_name() As String
        Get
            Return _Area_name
        End Get
        Set(value As String)
            _Area_name = value
        End Set
    End Property
    Public Property city_id() As String
        Get
            Return _city_id
        End Get
        Set(value As String)
            _city_id = value
        End Set
    End Property
End Class
