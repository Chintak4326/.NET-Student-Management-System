Imports Microsoft.VisualBasic

Public Class ExamTimetable
    Private _Exam_timetable_id, _Exam_name, _Exam_date, _Start_time, _End_time, _Batch_id, _Total_marks, _Passing_marks, _Subject_id, _Standard_id As String
    Public Property Exam_timetable_id() As String
        Get
            Return _Exam_timetable_id
        End Get
        Set(value As String)
            _Exam_timetable_id = value
        End Set
    End Property
    Public Property Exam_name() As String
        Get
            Return _Exam_name
        End Get
        Set(value As String)
            _Exam_name = value
        End Set
    End Property
    Public Property Exam_date() As String
        Get
            Return _Exam_date
        End Get
        Set(value As String)
            _Exam_date = value
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
    Public Property Batch_id() As String
        Get
            Return _Batch_id
        End Get
        Set(value As String)
            _Batch_id = value
        End Set
    End Property
    Public Property Total_marks() As String
        Get
            Return _Total_marks
        End Get
        Set(value As String)
            _Total_marks = value
        End Set
    End Property
    Public Property Passing_marks() As String
        Get
            Return _Passing_marks
        End Get
        Set(value As String)
            _Passing_marks = value
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
    Public Property Standard_id() As String
        Get
            Return _Standard_id
        End Get
        Set(value As String)
            _Standard_id = value
        End Set
    End Property
End Class
