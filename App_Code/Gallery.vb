Imports Microsoft.VisualBasic

Public Class Gallery
    Private _Gallery_id, _Institute_id, _Photos, _Event_name As String
    Public Property Gallery_id() As String
        Get
            Return _Gallery_id
        End Get
        Set(value As String)
            _Gallery_id = value
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
    Public Property Photos() As String
        Get
            Return _Photos
        End Get
        Set(value As String)
            _Photos = value
        End Set
    End Property
    Public Property Event_name() As String
        Get
            Return _Event_name
        End Get
        Set(value As String)
            _Event_name = value
        End Set
    End Property
End Class
