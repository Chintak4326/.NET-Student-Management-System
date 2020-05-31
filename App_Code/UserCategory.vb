Imports Microsoft.VisualBasic

Public Class UserCategory
    Private _User_category_id, _Category_name As String
    Public Property User_category_id() As String
        Get
            Return _User_category_id
        End Get
        Set(value As String)
            _User_category_id = value
        End Set
    End Property
    Public Property Category_name() As String
        Get
            Return _Category_name
        End Get
        Set(value As String)
            _Category_name = value
        End Set
    End Property
End Class
