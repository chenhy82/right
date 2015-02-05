using Langben.DAL;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Linq;
namespace Langben.BLL
{
    /// <summary>
    /// 基于system.net.mail发送邮件，支持附件
    /// </summary>
    public class NetSendMail
    {

        public static void SendSMTPEMail(string strSmtpServer, int port, string strFrom, string strFromName, string maiFromlAccount, string strFromPass, string strto, string strSubject, string strBody)
        {
            System.Net.Mail.SmtpClient client = new SmtpClient(strSmtpServer);
            client.Port = port;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential(maiFromlAccount, strFromPass);
            client.DeliveryMethod = SmtpDeliveryMethod.Network;

            System.Net.Mail.MailMessage message = new MailMessage(maiFromlAccount, strto, strSubject, strBody);
            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.IsBodyHtml = true;
            MailAddress reply = new MailAddress(strFrom, strFromName);
            message.ReplyToList.Add(reply);
            client.Send(message);
        }
        public static void MailSendChangePassword(SysEntities db, string mailTo, string name, string psw)
        {
            string tempName = "修改密码发送的邮件通知";
            var data = db.SysEmailTemp.Where(w => w.Mail_name == tempName).FirstOrDefault();
            if (data != null)
            { 
                SysEmail email = new SysEmail();
                email.CreateTime = DateTime.Now;
                email.Id = Common.Result.GetNewId();
                email.SysMailId = data.Id;
                email.Subject = data.Subject.Replace("{{用户名}}", name).Replace("{{密码}}", psw);
                email.Content = data.Content.Replace("{{用户名}}", name).Replace("{{密码}}", psw);
                email.Mail_type = mailTo;
                email.Reply_email = data.Reply_email;
                db.SysEmail.Add(email);

                string mailFromPwd = "langben123",
                  mailSmtpServer = "smtp.exmail.qq.com";

                SendSMTPEMail(mailSmtpServer, 25, email.Reply_email, "服务", "service@langben.com", mailFromPwd, mailTo, email.Subject, email.Content);

            }
        }
    }
}
