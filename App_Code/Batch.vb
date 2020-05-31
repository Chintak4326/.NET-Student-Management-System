Imports Microsoft.VisualBasic

Public Class Batch
    Private _Batch_id, _Batch_name, _Batch_startdate, _Batch_enddate, _Branch_id, _Course_id, _Subject_id, _Teacher_id As String
    Public Property Batch_id() As String
        Get
            Return _Batch_id
        End Get
        Set(value As String)
            _Batch_id = value
        End Set
    End Property
    Public Property Batch_name() As String
        Get
            Return _Batch_name
        End Get
        Set(value As String)
            _Batch_name = value
        End Set
    End Property
    Public Property Batch_startdate() As String
        Get
            Return _Batch_startdate
        End Get
        Set(value As String)
            _Batch_startdate = value
        End Set
    End Property
    Public Property Batch_enddate() As String
        Get
            Return _Batch_enddate
        End Get
        Set(value As String)
            _Batch_enddate = value
        End Set
    End Property
    Public Property Branch_id() As String
        Get
            Return _Branch_id
        End Get
        Set(value As String)
            _Branch_id = value
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
    Public Property Subject_id() As String
        Get
            Return _Subject_id
        End Get
        Set(value As String)
            _Subject_id = value
        End Set
    End Property
    Public Property Teacher_id() As String
        Get
            Return _Teacher_id
        End Get
        Set(value As String)
            _Teacher_id = value
        End Set
    End Property
End Class
