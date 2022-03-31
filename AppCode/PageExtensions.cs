using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Twitter.AppCode
{
    public static class PageExtensions
    {
        public static void SetMessage(this Page page, string message)
        {
            var master = (SiteMaster)page.Master;

            var hfMessage = master.FindControl("hfMessage") as HiddenField;
            hfMessage.Value = message;
        }

        public static void SetMessageLogin(this Page page, string message)
        {
            var master = (Login)page.Page;

            var hfMessage = master.FindControl("hfMessage") as HiddenField;
            hfMessage.Value = message;
        }

    }
}