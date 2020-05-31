Imports Microsoft.VisualBasic

Public Class Assignment
    Private _Assignment_id, _Assignment_date, _Submission_date, _Batch_id, _Assignment_url As String
    Public Property Assignment_id() As String
        Get
            Return _Assignment_id
        End Get
        Set(value As String)
            _Assignment_id = value
        End Set
    End Property
    Public Property Assignment_date() As String
        Get
            Return _Assignment_date
        End Get
        Set(value As String)
            _Assignment_date = value
        End Set
    End Property
    Public Property Submission_date() As String
        Get
            Return _Submission_date
        End Get
        Set(value As String)
            _Submission_date = value
        End Set
    End Property

    Public Property Batch_id() As String
        Get
            Return _Batch_id
        End Get
        Set(value As String)
            _Batch_id = value
        End Set
    End Property

    Public Property Assignment_url() As String
        Get
            Return _Assignment_url
        End Get
        Set(value As String)
            _Assignment_url = value
        End Set
    End Property
End Class
