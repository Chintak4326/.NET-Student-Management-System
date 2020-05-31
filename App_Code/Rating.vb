Imports Microsoft.VisualBasic

Public Class Rating
    Private _Rating_id, _User_id, _Institute_id, _Rating, _Rating_date As String
    Public Property Rating_id() As String
        Get
            Return _Rating_id
        End Get
        Set(value As String)
            _Rating_id = value
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
    Public Property Institute_id() As String
        Get
            Return _Institute_id
        End Get
        Set(value As String)
            _Institute_id = value
        End Set
    End Property
    Public Property Rating() As String
        Get
            Return _Rating
        End Get
        Set(value As String)
            _Rating = value
        End Set
    End Property
    Public Property Rating_date() As String
        Get
            Return _Rating_date
        End Get
        Set(value As String)
            _Rating_date = value
        End Set
    End Property
End Class
