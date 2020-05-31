Imports Microsoft.VisualBasic

Public Class StudentReg
    Private _User_id, _User_name, _User_address, _User_email_id, _User_contact_no, _User_password, _Security_question, _Security_answer, _User_category_id, _Area_id As String
    Public Property User_id() As String
        Get
            Return _User_id
        End Get
        Set(value As String)
            _User_id = value
        End Set
    End Property
    Public Property User_name() As String
        Get
            Return _User_name
        End Get
        Set(value As String)
            _User_name = value
        End Set
    End Property
    Public Property User_address() As String
        Get
            Return _User_address
        End Get
        Set(value As String)
            _User_address = value
        End Set
    End Property
    Public Property User_email_id() As String
        Get
            Return _User_email_id
        End Get
        Set(value As String)
            _User_email_id = value
        End Set
    End Property
    Public Property User_contact_no() As String
        Get
            Return _User_contact_no
        End Get
        Set(value As String)
            _User_contact_no = value
        End Set
    End Property
    Public Property User_password() As String
        Get
            Return _User_password
        End Get
        Set(value As String)
            _User_password = value
        End Set
    End Property
    Public Property Security_question() As String
        Get
            Return _Security_question
        End Get
        Set(value As String)
            _Security_question = value
        End Set
    End Property
    Public Property Security_answer() As String
        Get
            Return _Security_answer
        End Get
        Set(value As String)
            _Security_answer = value
        End Set
    End Property
    Public Property User_category_id() As String
        Get
            Return _User_category_id
        End Get
        Set(value As String)
            _User_category_id = value
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
