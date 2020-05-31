Imports Microsoft.VisualBasic

Public Class Fees
    Private _Fees_id, _Fees_amount, _Fees_type, _Fees_status, _Enrollment_id, _Fees_date, _Course_id, _Fees_discount As String
    Public Property Fees_id() As String
        Get
            Return _Fees_id
        End Get
        Set(value As String)
            _Fees_id = value
        End Set
    End Property
    Public Property Fees_amount() As String
        Get
            Return _Fees_amount
        End Get
        Set(value As String)
            _Fees_amount = value
        End Set
    End Property
    Public Property Fees_type() As String
        Get
            Return _Fees_type
        End Get
        Set(value As String)
            _Fees_type = value
        End Set
    End Property
    Public Property Fees_status() As String
        Get
            Return _Fees_status
        End Get
        Set(value As String)
            _Fees_status = value
        End Set
    End Property
    Public Property Enrollment_id() As String
        Get
            Return _Enrollment_id
        End Get
        Set(value As String)
            _Enrollment_id = value
        End Set
    End Property
    Public Property Fees_date() As String
        Get
            Return _Fees_date
        End Get
        Set(value As String)
            _Fees_date = value
        End Set
    End Property
    Public Property Course_id() As String
        Get
            Return _Course_id
        End Get
        Set(value As String)
            _Course_id = value
        End Set
    End Property
    Public Property Fees_discount() As String
        Get
            Return _Fees_discount
        End Get
        Set(value As String)
            _Fees_discount = value
        End Set
    End Property
End Class
