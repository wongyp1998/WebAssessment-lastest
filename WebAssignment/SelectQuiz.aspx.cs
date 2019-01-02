using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAssignment
{
    public partial class SelectQuiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["timeout"] != null)
            {
                lbstatus.Visible = true;
                lbstatus.Text = "You test time expired, please try again!";
            }

        }

        protected void drop1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}