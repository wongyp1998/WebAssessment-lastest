using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAssignment
{
    public partial class ShowQuiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String date = DateTime.Now.ToString();
                Access.Text = "Accessed on " + date;
                DropDownList drop = (DropDownList)PreviousPage.FindControl("drop1");
                getquiz.Text = drop.SelectedValue;


                int count1 = 0;
                foreach (GridViewRow row in grdquestions.Rows)
                {
                    Label lb3 = (Label)row.FindControl("sequence");
                    count1++;
                    lb3.Text = count1.ToString();
                }
            }

        }

        protected void grdquestions_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
                ((Label)e.Row.FindControl("Label1") as Label).Text = getquiz.Text;

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            int Score = 0;
            int count = 0;
            int complete = 0;

            foreach (GridViewRow row in grdquestions.Rows)
            {
                RadioButton r1 = ((RadioButton)row.FindControl("rdOption1"));
                RadioButton r2 = ((RadioButton)row.FindControl("rdOption2"));
                RadioButton r3 = ((RadioButton)row.FindControl("rdOption3"));
                RadioButton r4 = ((RadioButton)row.FindControl("rdOption4"));
                Label status = (Label)row.FindControl("lbquestionstatus");
                Label ans = (Label)row.FindControl("lbAnswer");
                Label correctlb = (Label)row.FindControl("lbCorrect");
                count++;

                if (r1.Checked)
                    complete++;
                else if (r2.Checked)
                    complete++;
                else if (r3.Checked)
                    complete++;
                else if (r4.Checked)
                    complete++;

            }


            if (complete == count)
            {
                foreach (GridViewRow row in grdquestions.Rows)
                {
                    RadioButton r1 = ((RadioButton)row.FindControl("rdOption1"));
                    RadioButton r2 = ((RadioButton)row.FindControl("rdOption2"));
                    RadioButton r3 = ((RadioButton)row.FindControl("rdOption3"));
                    RadioButton r4 = ((RadioButton)row.FindControl("rdOption4"));
                    Label status = (Label)row.FindControl("lbquestionstatus");
                    Label ans = (Label)row.FindControl("lbAnswer");
                    Label correctlb = (Label)row.FindControl("lbCorrect");

                    if (r1.Checked)
                    {
                        if (ans.Text == "1")
                        {
                            Score = Score + 1;
                            status.Text = "Status : Correct Answer";
                        }
                        else
                        {
                            status.Text = "Status : Incorrect Answer";
                            correctlb.Text = "Correct Answer : " + r1.Text;
                        }
                    }
                    else if (r2.Checked)
                    {
                        if (ans.Text == "2")
                        {
                            Score = Score + 1;
                            status.Text = "Status : Correct Answer";
                        }
                        else
                        {
                            status.Text = "Status : Incorrect Answer";
                            correctlb.Text = "Correct Answer : " + r1.Text;
                        }
                    }
                    else if (r3.Checked)
                    {
                        if (ans.Text == "3")
                        {
                            Score = Score + 1;
                            status.Text = "Status : Correct Answer";
                        }
                        else
                        {
                            status.Text = "Status : Incorrect Answer";
                            correctlb.Text = "Correct Answer : " + r1.Text;
                        }
                    }
                    else if (r4.Checked)
                    {
                        if (ans.Text == "4")
                        {
                            Score = Score + 1;
                            status.Text = "Status : Correct Answer";
                        }
                        else
                        {
                            status.Text = "Status : Incorrect Answer";
                            correctlb.Text = "Correct Answer : " + r1.Text;
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please answer all the question to proceed!');", true);
                    }

                    result.Text = "Your Score : " + Score + "/" + count;
                    status.Visible = true;
                    btnSubmit.Visible = false;
                    btnBack.Visible = true;
                    r1.Enabled = false;
                    r2.Enabled = false;
                    r3.Enabled = false;
                    r4.Enabled = false;
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please answer all the question to proceed!');", true);

            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HomepageAnon.aspx");
        }
    }
}