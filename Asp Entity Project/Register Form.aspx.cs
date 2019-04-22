using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Entity_Project
{
    public partial class Register_Form : System.Web.UI.Page
    { Login_cl lg = new Login_cl ();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginpage_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");// this directs to login page
        }

        protected void Rg_btn_Click(object sender, EventArgs e)
        {
            
            int age = Convert.ToInt32(Age_txt.Text);
            String First = First_txt.Text;
            String Last = Last_txt .Text;
            String pass = Password_txt.Text;
            String user = lg_txt.Text;
            lg.Login( pass, user);//this add the data to login table
            lg.Register(First, Last, age);//this add the data to register table

        }
    }
}