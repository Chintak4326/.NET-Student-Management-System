Imports Microsoft.VisualBasic

Public Class Result
    Private _Result_id, _Enrollment_id, _Exam_timetable_id, _Obtain_marks As String
    Public Property Result_id() As String
        Get
            Return _Result_id
        End Get
        Set(value As String)
            _Result_id = value
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
    Public Property Exam_timetable_id() As String
        Get
            Return _Exam_timetable_id
        End Get
        Set(value As String)
            _Exam_timetable_id = value
        End Set
    End Property

    Public Property Obtain_marks() As String
        Get
            Return _Obtain_marks
        End Get
        Set(value As String)
            _Obtain_marks = value
        End Set
    End Property
End Class
