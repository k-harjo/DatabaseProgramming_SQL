Public Class Validator
    Private Shared m_Title As String = "Entry Error"

    Public Shared Property Title As String
        Get
            Return m_Title
        End Get
        Set(ByVal value As String)
            m_Title = value
        End Set
    End Property

    Public Shared Function IsPresent(ByVal textBox As TextBox) As Boolean
        If textBox.Text = "" Then
            MessageBox.Show(textBox.Tag.ToString & " is a required field.", Title)
            textBox.Select()
            Return False
        Else
            Return True
        End If
    End Function

    Public Shared Function IsInt32(ByVal textBox As TextBox) As Boolean
        Dim number As Integer = 0
        If Int32.TryParse(textBox.Text, number) Then
            Return True
        Else
            MessageBox.Show(textBox.Tag.ToString & " must be an integer value.", Title)
            textBox.Select()
            textBox.SelectAll()
            Return False
        End If
    End Function

End Class
