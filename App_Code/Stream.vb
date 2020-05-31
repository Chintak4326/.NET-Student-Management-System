Imports Microsoft.VisualBasic

Public Class Stream
    Private _Stream_id, _Stream_type As String
    Public Property Stream_id() As String
        Get
            Return _Stream_id
        End Get
        Set(value As String)
            _Stream_id = value
        End Set
    End Property
    Public Property Stream_type() As String
        Get
            Return _Stream_type
        End Get
        Set(value As String)
            _Stream_type = value
        End Set
    End Property
End Class
