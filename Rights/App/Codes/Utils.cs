using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
 
using System.Text;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization.Json;
using System.IO;
 
using System.Text.RegularExpressions;
using Common;

namespace Models
{
    public abstract class Utils
    {

        #region 读写删cookie

        /// <summary>
        /// 写cookie
        /// </summary>
        /// <param name="strname">cookie名称</param>
        /// <param name="strvalue">cookie值</param>
        /// <param name="days">保存天数</param>
        public static void WriteCookie(string strname, string strvalue, int days)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[strname];
            if (cookie == null)
                cookie = new HttpCookie(strname);
            cookie.Value = UrlEncode(strvalue);
            if (days > 0)
                cookie.Expires = DateTime.Now.AddDays(days);
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        /// <summary>
        /// 写cookie
        /// </summary>
        /// <param name="strname"></param>
        /// <param name="mycookie"></param>
        /// <param name="days"></param>
        public static void WriteCookie(string strname, Common.Account mycookie, int days)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[strname];
            if (cookie == null)
                cookie = new HttpCookie(strname);
            cookie.Value = UrlEncode(SerializeObject(mycookie));
            if (days > 0)
                cookie.Expires = DateTime.Now.AddDays(days);
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        /// <summary>
        /// 读取cookie值
        /// </summary>
        /// <param name="strname"></param>
        /// <returns></returns>
        public static string ReadCookie(string strname)
        {
            if (HttpContext.Current.Request.Cookies != null && HttpContext.Current.Request.Cookies[strname] != null)
            {
                return UrlDecode(HttpContext.Current.Request.Cookies[strname].Value.ToString());
            }
            return "";
        }

        /// <summary>
        /// 读取cookie并返回CookieEntity
        /// </summary>
        /// <param name="strname"></param>
        /// <returns></returns>
        public static Account ReadCookieAsObj(string strname)
        {
            Account cookie = null;
            if (HttpContext.Current.Request.Cookies != null && HttpContext.Current.Request.Cookies[strname] != null)
            {
                return DSerializeToObject<Account>(UrlDecode(HttpContext.Current.Request.Cookies[strname].Value.ToString()));
            }
            return cookie;
        }

        /// <summary>
        /// 删除cookie
        /// </summary>
        /// <param name="strname"></param>
        public static void DeleteCookie(string strname)
        {
            if (HttpContext.Current.Request.Cookies != null && HttpContext.Current.Request.Cookies[strname] != null)
            {
                HttpCookie cookie = HttpContext.Current.Request.Cookies[strname];
                cookie.Expires = DateTime.Now.AddDays(-1);
                HttpContext.Current.Response.AppendCookie(cookie);
            }
        }
        #endregion

        #region URL处理

        /// <summary>
        /// url编码
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string UrlEncode(string str)
        {
            if (string.IsNullOrEmpty(str))
                return "";
            str = str.Replace("'", "");
            return HttpContext.Current.Server.UrlEncode(str);
        }

        /// <summary>
        /// url解码
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string UrlDecode(string str)
        {
            if (string.IsNullOrEmpty(str))
                return "";
            return HttpContext.Current.Server.UrlDecode(str);
        }
        #endregion

        #region 序列化反序列化对象
        /// <summary>
        /// 序列化为字节流
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static string SerializeObject(object obj)
        {
            string result = string.Empty;
            BinaryFormatter bf = new BinaryFormatter();
            try
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bf.Serialize(ms, obj);
                    byte[] byt = new byte[ms.Length];
                    byt = ms.ToArray();
                    result = Convert.ToBase64String(byt);
                    ms.Flush();
                }
            }
            catch (Exception ex)
            {

            }
            return result;
        }

        /// <summary>
        /// 反序列化字节流
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="str"></param>
        /// <returns></returns>
        public static T DSerializeToObject<T>(string str) where T : class
        {
            T t = default(T);
            BinaryFormatter bf = new BinaryFormatter();
            try
            {
                byte[] byt = Convert.FromBase64String(str);
                using (MemoryStream ms = new MemoryStream(byt, 0, byt.Length))
                {
                    t = bf.Deserialize(ms) as T;
                }
            }
            catch (Exception ex)
            {

            }
            return t;
        }

        /// <summary>
        /// 对象序列化为json串
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="t"></param>
        /// <returns></returns>
        public static string ObjToJsonstr<T>(T t) where T : class
        {
            string jsonResult = string.Empty;
            DataContractJsonSerializer dcjs = new DataContractJsonSerializer(typeof(T));

            using (MemoryStream ms = new MemoryStream())
            {
                dcjs.WriteObject(ms, t);
                jsonResult = Encoding.UTF8.GetString(ms.ToArray());
            }
            return jsonResult;
        }

        /// <summary>
        /// json串反序列化为对象
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="jsonstr"></param>
        /// <returns></returns>
        public static T JsonstrToObj<T>(string jsonstr) where T : class
        {
            T resultObj = default(T);
            DataContractJsonSerializer dcjs = new DataContractJsonSerializer(typeof(T));
            using (MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(jsonstr)))
            {
                resultObj = dcjs.ReadObject(ms) as T;
            }
            return resultObj;
        }

        #endregion

        #region 清除HTML标记
        public static string DropHTML(string Htmlstring)
        {
            if (string.IsNullOrEmpty(Htmlstring)) return "";
            //删除脚本  
            Htmlstring = Regex.Replace(Htmlstring, @"<script[^>]*?>.*?</script>", "", RegexOptions.IgnoreCase);
            //删除HTML  
            Htmlstring = Regex.Replace(Htmlstring, @"<(.[^>]*)>", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"([\r\n])[\s]+", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"-->", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"<!--.*", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(quot|#34);", "\"", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(amp|#38);", "&", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(lt|#60);", "<", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(gt|#62);", ">", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(nbsp|#160);", " ", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(iexcl|#161);", "\xa1", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(cent|#162);", "\xa2", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(pound|#163);", "\xa3", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(copy|#169);", "\xa9", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&#(\d+);", "", RegexOptions.IgnoreCase);
            Htmlstring.Replace("<", "");
            Htmlstring.Replace(">", "");
            Htmlstring.Replace("\r\n", "");
            Htmlstring = HttpContext.Current.Server.HtmlEncode(Htmlstring).Trim();
            return Htmlstring;
        }
        #endregion
        #region 获取当前星期

        /// <summary>
        /// 获取当前星期用中文格式显示
        /// </summary>
        /// <returns></returns>
        public static string GetCurCnWeek()
        {
            string cnWeek = string.Empty;
            string enWeek = DateTime.Now.DayOfWeek.ToString();
            switch (enWeek)
            {
                case "Monday":
                    cnWeek = "星期一";
                    break;
                case "Tuesday":
                    cnWeek = "星期二";
                    break;
                case "Wednesday":
                    cnWeek = "星期三";
                    break;
                case "Thursday":
                    cnWeek = "星期四";
                    break;
                case "Friday":
                    cnWeek = "星期五";
                    break;
                case "Saturday":
                    cnWeek = "星期六";
                    break;
                case "Sunday":
                    cnWeek = "星期日";
                    break;
            }
            return cnWeek;
        }


        #endregion
    }
}
