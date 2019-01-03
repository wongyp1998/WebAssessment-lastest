using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity.Core.EntityClient;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAssignment.Lecturer
{
    public partial class Written : System.Web.UI.Page
    {
        public static String efConnectionString = "metadata=res://*/Model1.csdl|res://*/Model1.ssdl|res://*/Model1.msl;provider=System.Data.SqlClient;provider connection string=\"Data Source=(LocalDB)\\MSSQLLocalDB;attachdbfilename=|DataDirectory|\\taruc.mdf;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework\"";
        public static EntityConnectionStringBuilder builder = new EntityConnectionStringBuilder(efConnectionString);

        private String ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String insertString = "INSERT INTO written(wquiz_name,written_desc,points,answer,remarks) VALUES (@param1,@param2,@param3,@param4,@param5)";
            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(insertString, con);
            String name = writtenquiz.Text;
            String desc = writtendesc.Text;
            String point = marks.Text;
            String answer = sanswer.Text;
            String remark = remarks.Text;

            cmd.Parameters.AddWithValue("@param1", name);
            cmd.Parameters.AddWithValue("@param2", desc);
            cmd.Parameters.AddWithValue("@param3", point);
            cmd.Parameters.AddWithValue("@param4", answer);
            cmd.Parameters.AddWithValue("@param5", remark);

            con.Open();

            int a = cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("/viewWritten.aspx");


        }

        protected void wquizlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            writtenquiz.Text = wquizlist.SelectedValue;
        }

        protected void quizbtn_Click(object sender, EventArgs e)
        {
            if (wquizlist.Visible)
            {

                writtenquiz.Visible = true;
                wquizlist.Visible = false;
                quizbtn.Text = "Existing quiz";

            }
            else
            {
                writtenquiz.Visible = false;
                wquizlist.Visible = true;
               quizbtn.Text = "New Quiz";
            }
        }
    }
}