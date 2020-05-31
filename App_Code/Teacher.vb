Imports Microsoft.VisualBasic

Public Class Teacher
    Private _Teacher_id, _Teacher_name, _Address, _Contact_no, _Email_id, _Qualification, _Area_id As String
    Public Property Teacher_id() As String
        Get
            Return _Teacher_id
        End Get
        Set(value As String)
            _Teacher_id = value
        End Set
    End Property
    Public Property Teacher_name() As String
        Get
            Return _Teacher_name
        End Get
        Set(value As String)
            _Teacher_name = value
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
    Public Property Contact_no() As String
        Get
            Return _Contact_no
        End Get
        Set(value As String)
            _Contact_no = value
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
  Public Property Qualification() As String
        Get
            Return _Qualification
        End Get
        Set(value As String)
            _Qualification = value
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
   
End Class
