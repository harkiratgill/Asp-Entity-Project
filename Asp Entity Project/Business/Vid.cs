using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Asp_Entity_Project
{
    public class Vid
    {
        VideoEntities3 context = new VideoEntities3();
        VideoEntities3 Db = new VideoEntities3();
        Movy vid = new Movy();
        public void VideoAdd(string Title, string Rateing, string copies, string Genre, string Plot, string Year)
        {
            vid.Title = Title;
            vid.Rating = Rateing;//it adds the value of variable to the the database
            vid.Genre = Genre;
            vid.Plot = Plot;
            vid.Copies = copies;
            vid.Year = Year;
            int rentalcost = Convert.ToInt32(Year);
            vid.Rental_Cost = rentalcost <= 2014 ? 2 : 5;

            context.Movies.Add(vid);
            context.SaveChanges();//this saves the changes

            


        }
        public void VideoDelte(int movieID)
        {

            using (VideoEntities3 context = new VideoEntities3())
            {


                Movy obj = context.Movies.First(x => x.MovieID == movieID);//this delte the row where movie id matches with variable
                context.Movies.Remove(obj);
                context.SaveChanges();//this saves the changes


            }

        }
        public void VideoUpdate(int movieID, string Title, string Rateing, string copies, string Genre, string Plot, string Year)
        {
            using (var db = new VideoEntities3())
            {
                var result = db.Movies.SingleOrDefault(b => b.MovieID == movieID);//this updates the roe where movie id matches with variable
                if (result != null)
                {
                    result.Title = Title;
                    result.Rating = Rateing;
                    result.Genre = Genre;
                    result.Plot = Plot;
                    result.Copies = copies;
                    result.Year = Year;

                    db.SaveChanges();//this saves the changes

                }



            }
        }
    }
}
