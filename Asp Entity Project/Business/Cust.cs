using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Asp_Entity_Project
{
    public class Cust
    {
        VideoEntities3 context = new VideoEntities3();
        VideoEntities3 Db = new VideoEntities3();
        Customer cust = new Customer();
        public void Cust_add(string Firstname, string lastname, string phone, string address)
        {
            cust.FirstName = Firstname;
            cust.LastName = lastname;
            cust.Phone = phone;//this puts the value of variable to databse
            cust.Address = address;

            context.Customers.Add(cust);
            context.SaveChanges();//this save the changes to databse




        }
        public void CustDelte(int CustID)
        {

            using (VideoEntities3 context = new VideoEntities3())
            {


                Customer  obj = context.Customers .First(x => x.CustID == CustID);//this delete the cust id if it matches the varable
                context.Customers .Remove(obj);
                context.SaveChanges();//this saves the changes


            }

        }
        public void CustUpdate(int CustID, string Firstname, string lastname, string phone, string address)
        {
            using (var db = new VideoEntities3())
            {
                var result = db.Customers.SingleOrDefault(b => b.CustID == CustID);//this updates the whole row where cust id is same as varable
                if (result != null)
                {
                    result.FirstName  = Firstname ;
                    result.LastName  = lastname ;
                    result.Phone  = phone ;
                    result.Address  = address ;
                    

                    db.SaveChanges();//this saves the changes

                }



            }
        }
    }
}