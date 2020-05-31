Imports Microsoft.VisualBasic

Public Class Day
    Private _Day_id, _Day As String
    Public Property Day_id() As String
        Get
            Return _Day_id
        End Get
        Set(value As String)
            _Day_id = value
        End Set
    End Property
    Public Property Day() As String
        Get
            Return _Day
        End Get
        Set(value As String)
            _Day = value
        End Set
    End Property
End Class
