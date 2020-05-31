Imports Microsoft.VisualBasic

Public Class Institute
    Private _Institute_id, _Institute_name, _Owner_name, _Owner_contact_no, _Email_id As String
    Public Property Institute_id() As String
        Get
            Return _Institute_id
        End Get
        Set(value As String)
            _Institute_id = value
        End Set
    End Property
    Public Property Institute_name() As String
        Get
            Return _Institute_name
        End Get
        Set(value As String)
            _Institute_name = value
        End Set
    End Property
    Public Property Owner_name() As String
        Get
            Return _Owner_name
        End Get
        Set(value As String)
            _Owner_name = value
        End Set
    End Property
    Public Property Owner_contact_no() As String
        Get
            Return _Owner_contact_no
        End Get
        Set(value As String)
            _Owner_contact_no = value
        End Set
    End Property
    Public Property Email_id() As String
        Get
            Return _Email_id
        End Get
        Set(value As String)
            _Email_id = value
        End Set
    End Property
End Class
