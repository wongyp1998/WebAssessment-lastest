using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAssignment
{
    public partial class Homepage : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button btn = (Button)fvQuestion.FindControl("Button4");
            if (fvQuestion.FindControl("quizlist").Visible)
            {
               
                fvQuestion.FindControl("quizname").Visible = true;
                fvQuestion.FindControl("quizlist").Visible = false;
                btn.Text = "Existing quiz";

            }
            else
            {
                fvQuestion.FindControl("quizname").Visible = false;
                fvQuestion.FindControl("quizlist").Visible = true;
                btn.Text = "New Quiz";
            }
        }

        public void fvQuestion_InsertItem()
        {
            question item = new question();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                tarucEntities _db = new tarucEntities();
                _db.questions.Add(item);
                _db.SaveChanges();
                Response.Redirect("/viewQuestion.aspx");
            }
        }

        protected void fvQuestion_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
                Response.Redirect("/HomepageAnon.aspx");
        }

        protected void quizlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox btn = (TextBox)fvQuestion.FindControl("quizname");
            DropDownList dropdown = (DropDownList)fvQuestion.FindControl("quizlist");
            btn.Text = dropdown.SelectedValue;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}