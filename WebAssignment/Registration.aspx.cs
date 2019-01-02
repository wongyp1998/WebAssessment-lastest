using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data.Entity;
using System.Data;
using System.Data.Entity.Core.EntityClient;
using System.Configuration;

namespace prototype1
{
    public partial class Registration : System.Web.UI.Page
    {
        public static String efConnectionString = "metadata=res://*/Model1.csdl|res://*/Model1.ssdl|res://*/Model1.msl;provider=System.Data.SqlClient;provider connection string=\"Data Source=(LocalDB)\\MSSQLLocalDB;attachdbfilename=|DataDirectory|\\taruc.mdf;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework\"";
        public static EntityConnectionStringBuilder builder = new EntityConnectionStringBuilder(efConnectionString);
        public String regularConnectionString = builder.ProviderConnectionString;

        private String ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            StudentRegister.Visible = false;
            LecturerRegister.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Your registeration is successful");
        }

        protected void ddlAccType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlAccType.SelectedValue.Equals("Lecturer"))
            {
                LecturerRegister.Visible = true;
                StudentRegister.Visible = false;
            }
            else if (ddlAccType.SelectedValue.Equals("Student"))
            {
                StudentRegister.Visible = true;
                LecturerRegister.Visible = false;
            }
            else
            {
                StudentRegister.Visible = false;
                LecturerRegister.Visible = false;
            }
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            if (!Roles.RoleExists("Lecturer"))
                Roles.CreateRole("Lecturer");

            Roles.AddUserToRole(CreateUserWizard1.UserName, "Lecturer");

            //String insertString = "INSERT INTO Lecturer(LecturerID, Name, Faculty, Major) VALUES (@param1, @param2, @param3, @param4)";

            //SqlConnection con = new SqlConnection(ConnectionString);
            //SqlCommand cmd = new SqlCommand(insertString, con);

            //String createdID = Membership.GetUser((sender as CreateUserWizard).UserName).ProviderUserKey.ToString();

            //cmd.Parameters.AddWithValue("@param1", createdID);
            //cmd.Parameters.AddWithValue("@param2", null);
            //cmd.Parameters.AddWithValue("@param3", null);
            //cmd.Parameters.AddWithValue("@param4", null);

            //con.Open();

            //int a = cmd.ExecuteNonQuery();

            //con.Close();
        }

        protected void CreateUserWizard2_CreatedUser1(object sender, EventArgs e)
        {
            if (!Roles.RoleExists("Student"))
                Roles.CreateRole("Student");

            Roles.AddUserToRole(CreateUserWizard2.UserName, "Student");

            //String insertString = "INSERT INTO Student(StudentID, Name, Faculty) VALUES (@param1, @param2, @param3)";

            //SqlConnection con = new SqlConnection(ConnectionString);
            //SqlCommand cmd = new SqlCommand(insertString, con);

            //String createdID = Membership.GetUser((sender as CreateUserWizard).UserName).ProviderUserKey.ToString();

            //cmd.Parameters.AddWithValue("@param1", createdID);
            //cmd.Parameters.AddWithValue("@param2", null);
            //cmd.Parameters.AddWithValue("@param3", null);


            //con.Open();

            //int a = cmd.ExecuteNonQuery();

            //con.Close();
        }
    }
}