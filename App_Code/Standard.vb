Imports Microsoft.VisualBasic

Public Class Standard
    Private _Standard_id, _Standard_name As String
    Public Property Standard_id() As String
        Get
            Return _Standard_id
        End Get
        Set(value As String)
            _Standard_id = value
        End Set
    End Property
    Public Property Standard_name() As String
        Get
            Return _Standard_name
        End Get
        Set(value As String)
            _Standard_name = value
        End Set
    End Property
End Class
