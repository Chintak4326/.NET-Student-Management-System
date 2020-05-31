Imports Microsoft.VisualBasic

Public Class Course
    Private _Course_id, _Course_name, _Standard_id, _Medium_id, _Board_id, _Yearly_fees, _Advance_fees, _Monthly_fees, _Instalments, _Stream_id As String
    Public Property Course_id() As String
        Get
            Return _Course_id
        End Get
        Set(value As String)
            _Course_id = value
        End Set
    End Property
    Public Property Course_name() As String
        Get
            Return _Course_name
        End Get
        Set(value As String)
            _Course_name = value
        End Set
    End Property
    Public Property Standard_id() As String
        Get
            Return _Standard_id
        End Get
        Set(value As String)
            _Standard_id = value
        End Set
    End Property
    Public Property Medium_id() As String
        Get
            Return _Medium_id
        End Get
        Set(value As String)
            _Medium_id = value
        End Set
    End Property
    Public Property Board_id() As String
        Get
            Return _Board_id
        End Get
        Set(value As String)
            _Board_id = value
        End Set
    End Property
    Public Property Yearly_fees() As String
        Get
            Return _Yearly_fees
        End Get
        Set(value As String)
            _Yearly_fees = value
        End Set
    End Property
    Public Property Advance_fees() As String
        Get
            Return _Advance_fees
        End Get
        Set(value As String)
            _Advance_fees = value
        End Set
    End Property
    Public Property Monthly_fees() As String
        Get
            Return _Monthly_fees
        End Get
        Set(value As String)
            _Monthly_fees = value
        End Set
    End Property
    Public Property Instalments() As String
        Get
            Return _Instalments
        End Get
        Set(value As String)
            _Instalments = value
        End Set
    End Property
    Public Property Stream_id() As String
        Get
            Return _Stream_id
        End Get
        Set(value As String)
            _Stream_id = value
        End Set
    End Property
End Class
