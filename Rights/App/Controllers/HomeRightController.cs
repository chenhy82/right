using Common;
using Langben.BLL;
using Langben.DAL;
using Langben.IBLL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Langben.App.Controllers
{
    public class HomeRightController : BaseController
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {

            Account account = GetCurrentAccount();
            if (account == null)
            {
                return Content(" <script type='text/javascript'> window.top.location='Account'; </script>");

            }
            ViewBag.LogonNum = account.LogonNum;
            ViewBag.IP = Common.IP.GetIP();            
            ViewBag.LastLogonIP = account.LastLogonIP;
            ViewBag.LastLogonTime = account.LastLogonTime;
            ViewBag.PersonName = account.PersonName;

            ISysAnnouncementBLL announcementBLL = new SysAnnouncementBLL();
            SysAnnouncement announcement = announcementBLL.GetTop(1);
            if (announcement != null)
            {
                ViewBag.Title = announcement.Title;
                ViewBag.Announcement = announcement.Message;
            }
            else
            {
                ViewBag.Title = "暂无公告";
                ViewBag.Announcement = "暂无公告";
            }


            return View();
        }

    }
}

