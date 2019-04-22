using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Entity_Project
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Password_txt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register Form.aspx");//this directs to register page
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            String id = Login_txt.Text;

            VideoEntities3 db = new VideoEntities3();
            string query = (from c in db.Logins//this checks the login info from the database
                            where c.UserName  == id && c.Password  == Password_txt.Text
                            select c.UserName ).FirstOrDefault();
            if (query != null)
            {
                Response.Redirect("Video.aspx");//if login info is right this opens the video page
            }
            else
                Response.Write("Invalid User");//if login info is worng it shows the error

        }
    }
}