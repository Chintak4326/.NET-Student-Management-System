Imports Microsoft.VisualBasic

Public Class Timetable
    Private _Timetable_id, _Day_id, _Batch_id, _Start_time, _End_time As String
    Public Property Timetable_id() As String
        Get
            Return _Timetable_id
        End Get
        Set(value As String)
            _Timetable_id = value
        End Set
    End Property
    Public Property Day_id() As String
        Get
            Return _Day_id
        End Get
        Set(value As String)
            _Day_id = value
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
    Public Property Start_time() As String
        Get
            Return _Start_time
        End Get
        Set(value As String)
            _Start_time = value
        End Set
    End Property
    Public Property End_time() As String
        Get
            Return _End_time
        End Get
        Set(value As String)
            _End_time = value
        End Set
    End Property
End Class
