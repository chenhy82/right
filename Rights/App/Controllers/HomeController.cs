using Common;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Langben.IBLL;
using Langben.BLL;
using Langben.DAL;

namespace Langben.App.Controllers
{
    public class HomeController : BaseController
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            Account account = GetCurrentAccount();
            if (account == null)
            {  
                RedirectToAction("Index", "Account");
            }
            else
            {

                //IHomeBLL home = new HomeBLL();
                ViewData["Menu"] = App.Codes.MenuCaching.GetMenu(ref account); //home.GetMenuByAccount(ref account);// 获取菜单
                Utils.WriteCookie("account", account, 7);
            }


            return View();
        }
        /// <summary>
        /// 保存皮肤
        /// </summary>
        /// <param name="theme"></param>
        [HttpGet]
        public void SaveTheme(string theme)
        {
            bool isSuccess=false;
            if (!string.IsNullOrEmpty(theme))
            {
                Account account = GetCurrentAccount();
                SysPersonBLL bll = new SysPersonBLL();
               isSuccess= bll.SaveTheme(theme, account.Id);
            }
            if (isSuccess)
            {
                
            }
        }
        /// <summary>
        /// 获取列表中的按钮导航
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult GetToolbar(string id)
        {
            if (string.IsNullOrWhiteSpace(id) && id == "undefined")
            {
                return null;
            }
            Account account = GetCurrentAccount();
            if (account == null)
            {
                return Content(" <script type='text/javascript'> window.top.location='Account'; </script>");

            }
            ISysMenuSysRoleSysOperationBLL sro = new SysMenuSysRoleSysOperationBLL();
            List<SysOperation> sysOperations = sro.GetByRefSysMenuIdAndSysRoleId(id, account.RoleIds);
            List<toolbar> toolbars = new List<toolbar>();
            foreach (SysOperation item in sysOperations)
            {
                toolbars.Add(new toolbar() { handler = item.Function, iconCls = item.Iconic, text = item.Name });
            }
            return Json(toolbars, JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// 根据父节点获取数据字典,绑定二级下拉框的时候使用
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult GetSysFieldByParent(string id, string parentid, string value)
        {
            if (string.IsNullOrWhiteSpace(value))
            {
                return null;
            }
            ISysFieldHander baseDDL = new SysFieldHander();
            return Json(new SelectList(baseDDL.GetSysFieldByParent(id, parentid, value), "MyTexts", "MyTexts"), JsonRequestBehavior.AllowGet);

        }
    }
}

