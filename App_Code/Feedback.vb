Imports Microsoft.VisualBasic

Public Class Feedback
    Private _Feedback_id, _Feedback_description, _Feedback_date, _User_id As String
    Public Property Feedback_id() As String
        Get
            Return _Feedback_id
        End Get
        Set(value As String)
            _Feedback_id = value
        End Set
    End Property
    Public Property Feedback_description() As String
        Get
            Return _Feedback_description
        End Get
        Set(value As String)
            _Feedback_description = value
        End Set
    End Property
    Public Property Feedback_date() As String
        Get
            Return _Feedback_date
        End Get
        Set(value As String)
            _Feedback_date = value
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
End Class
