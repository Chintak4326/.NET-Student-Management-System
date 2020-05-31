Imports Microsoft.VisualBasic

Public Class Branch
    Private _Branch_id, _Branch_name, _Receptionist_name, _Contact_no, _Address, _Area_id, _Institute_id As String
    Public Property Branch_id() As String
        Get
            Return _Branch_id
        End Get
        Set(value As String)
            _Branch_id = value
        End Set
    End Property
    Public Property Branch_name() As String
        Get
            Return _Branch_name
        End Get
        Set(value As String)
            _Branch_name = value
        End Set
    End Property
    Public Property Receptionist_name() As String
        Get
            Return _Receptionist_name
        End Get
        Set(value As String)
            _Receptionist_name = value
        End Set
    End Property
    Public Property Contact_no() As String
        Get
            Return _Contact_no
        End Get
        Set(value As String)
            _Contact_no = value
        End Set
    End Property
    Public Property Address() As String
        Get
            Return _Address
        End Get
        Set(value As String)
            _Address = value
        End Set
    End Property
    Public Property Area_id() As String
        Get
            Return _Area_id
        End Get
        Set(value As String)
            _Area_id = value
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

End Class
