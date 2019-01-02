using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class Homepage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loginName.Visible = false;
            MembershipUser currentUser= Membership.GetUser();
            if (currentUser != null)
            {
                loginName.Visible = true;
                lblLoggedUser.Text = currentUser.ToString();
            }
        }

        protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            loginName.Visible = false;
        }
    }
}