Imports Microsoft.VisualBasic

Public Class Subject
    Private _Subject_id, _Subject_name As String
    Public Property Subject_id() As String
        Get
            Return _Subject_id
        End Get
        Set(value As String)
            _Subject_id = value
        End Set
    End Property
    Public Property Subject_name() As String
        Get
            Return _Subject_name
        End Get
        Set(value As String)
            _Subject_name = value
        End Set
    End Property
End Class
