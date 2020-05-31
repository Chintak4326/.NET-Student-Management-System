Imports Microsoft.VisualBasic

Public Class Board
    Private _Board_id, _Board_name As String
    Public Property Board_id() As String
        Get
            Return _Board_id
        End Get
        Set(value As String)
            _Board_id = value
        End Set
    End Property
    Public Property Board_name() As String
        Get
            Return _Board_name
        End Get
        Set(value As String)
            _Board_name = value
        End Set
    End Property
End Class
