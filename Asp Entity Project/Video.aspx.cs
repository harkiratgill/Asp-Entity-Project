using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Entity_Project
{
    public partial class Video : System.Web.UI.Page
    {
        VideoEntities3 context = new VideoEntities3();
        VideoEntities3 Db = new VideoEntities3();
        Vid vidOBJ = new Vid();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            vid_grid.DataSource = Db.Movies .ToList();
            vid_grid.DataBind();//it puts the data from the database to the table
        }

        

        protected void Add_vid_Click(object sender, EventArgs e)
        {
            vidOBJ.VideoAdd(title_txt.Text, rate_txt.Text, Copies_txt.Text, genra_txt.Text, Plot_txt.Text, year_txt.Text);//this method add the movie
            vid_grid.DataSource = Db.Movies.ToList();//it refesh the data in table
            vid_grid.DataBind();
        }

        protected void Updatevid_btn_Click(object sender, EventArgs e)
        {
            vidOBJ.VideoUpdate(Convert.ToInt32(movid_txt.Text), title_txt.Text, rate_txt.Text, Copies_txt.Text, genra_txt.Text, Plot_txt.Text, year_txt.Text);//this method updates the movie
            vid_grid.DataSource = Db.Movies.ToList();// it refesh the data in table
            vid_grid.DataBind();
        }

        protected void Deletevid_btn_Click(object sender, EventArgs e)
        {
            vidOBJ.VideoDelte(Convert.ToInt32(movid_txt.Text));//this method delets the movie
            vid_grid.DataSource = Db.Movies.ToList();// it refesh the data in table
            vid_grid.DataBind();
        }

      

       

        

        protected void vid_grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            title_txt.Text = vid_grid.SelectedRow.Cells[3].Text;
            rate_txt.Text = vid_grid.SelectedRow.Cells[2].Text;
            genra_txt.Text = vid_grid.SelectedRow.Cells[6].Text;//it puts the data from the table to text boxes
            Plot_txt.Text = vid_grid.SelectedRow.Cells[5].Text;
            Copies_txt.Text = vid_grid.SelectedRow.Cells[7].Text;
            year_txt.Text = vid_grid.SelectedRow.Cells[4].Text;
            movid_txt.Text = vid_grid.SelectedRow.Cells[1].Text;
        }
    }
}