using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Asp_Entity_Project
{
    public class Login_cl
    {
        VideoEntities3 context = new VideoEntities3();
        VideoEntities3 Db = new VideoEntities3();
        Register Reg = new Register();
        Login lg = new Login();
        public void Register(string Firstname, string Lastname, int age)
        {
            Reg.FirstName = Firstname;
            Reg.LastName  = Lastname;
            Reg.Age = age;

            context.Registers.Add(Reg);
            context.SaveChanges();

           

        }
        public void Login( string Password, string Username)
        {
            
            lg.UserName = Username;
            lg.Password = Password;

            context.Logins.Add(lg);
            context.SaveChanges();

        }
    }
}