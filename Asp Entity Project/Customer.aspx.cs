using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Entity_Project
{
    public partial class Customer1 : System.Web.UI.Page
    {
        Cust cs = new Cust();//this is the making the object of the class
        VideoEntities3 Db = new VideoEntities3();

        protected void Page_Load(object sender, EventArgs e)
        {
            Cust_grid.DataSource = Db.Customers.ToList();//this puts the data from the server to the table
            Cust_grid.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Cust_grid.DataSource = Db.Customers.ToList();
            Cust_grid.DataBind();
            firstname_txt.Text = Cust_grid.SelectedRow.Cells[2].Text;
            lastname_txt.Text = Cust_grid.SelectedRow.Cells[3].Text;//this pust the data from data grid to textbox
            phone_txt.Text = Cust_grid.SelectedRow.Cells[5].Text;
            address_txt.Text = Cust_grid.SelectedRow.Cells[4].Text;
            custid_txr.Text = Cust_grid.SelectedRow.Cells[1].Text;
        }

        protected void Custadd_Click(object sender, EventArgs e)
        {
            cs.Cust_add(firstname_txt.Text, lastname_txt.Text, phone_txt.Text, address_txt.Text);//this is method is used to add customer
            
            Cust_grid.DataSource = Db.Customers.ToList(); ;//this puts the data from the server to the table
            Cust_grid.DataBind();
        }

        protected void CustUP_Click(object sender, EventArgs e)
        {
            cs.CustUpdate(Convert.ToInt32(custid_txr.Text), firstname_txt.Text, lastname_txt.Text, phone_txt.Text, address_txt.Text);//this is used to update customer
            Cust_grid.DataSource = Db.Customers.ToList();
            Cust_grid.DataBind();
        }

        protected void CustDel_Click(object sender, EventArgs e)
        {
            cs.CustDelte(Convert.ToInt32(custid_txr.Text)); //this method is used to delet the customer
            Cust_grid.DataSource = Db.Customers.ToList(); //this puts the data from the server to the table
            Cust_grid.DataBind();
        }
    }
}