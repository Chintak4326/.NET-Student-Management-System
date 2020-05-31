Imports Microsoft.VisualBasic

Public Class Medium
    Private _Medium_id, _Medium_type As String
    Public Property Medium_id() As String
        Get
            Return _Medium_id
        End Get
        Set(value As String)
            _Medium_id = value
        End Set
    End Property
    Public Property Medium_type() As String
        Get
            Return _Medium_type
        End Get
        Set(value As String)
            _Medium_type = value
        End Set
    End Property
End Class
