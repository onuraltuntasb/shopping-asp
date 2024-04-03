using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Onur_Altuntas_HW2
{
    

    public partial class MovieInfo : System.Web.UI.Page
    {
        ArrayList SelectedMovieIndices = new ArrayList();

        protected void Page_Load(object sender, EventArgs e)
        {

            dynamic movie1 = Session["movie1"];
            dynamic movie2 = Session["movie2"];
            dynamic movie3 = Session["movie3"];
            dynamic movie4 = Session["movie4"];
            dynamic movie5 = Session["movie5"];

            if (Int32.Parse(Request.QueryString["id"]) == 1) 
            {
                imgShow.ImageUrl = "~/images/The God Father.jpg";
                lbName.Text = movie1.Title;
                lbWriter.Text = movie1.Writer;
                lbDirector.Text = movie1.Director;
                lbYear.Text = Convert.ToString(movie1.Year);
            }
            else if (Int32.Parse(Request.QueryString["id"]) == 2)
            {
                imgShow.ImageUrl = "~/images/The shawshank redemption.jpg";
                lbName.Text = movie2.Title;
                lbWriter.Text = movie2.Writer;
                lbDirector.Text = movie2.Director;
                lbYear.Text = Convert.ToString(movie2.Year);
            }
            else if (Int32.Parse(Request.QueryString["id"]) == 3)
            {
                imgShow.ImageUrl = "~/images/The Dark Night.jpg";
                lbName.Text = movie3.Title;
                lbWriter.Text = movie3.Writer;
                lbDirector.Text = movie3.Director;
                lbYear.Text = Convert.ToString(movie3.Year);
            }
            else if (Int32.Parse(Request.QueryString["id"]) == 4)
            {
                imgShow.ImageUrl = "~/images/12 Angry Men.jpg";
                lbName.Text = movie4.Title;
                lbWriter.Text = movie4.Writer;
                lbDirector.Text = movie4.Director;
                lbYear.Text = Convert.ToString(movie4.Year);
            }
            else if (Int32.Parse(Request.QueryString["id"]) == 5)
            {
                imgShow.ImageUrl = "~/images/The Lord of the Rings The Return of the King.jpg";
                lbName.Text = movie5.Title;
                lbWriter.Text = movie5.Writer;
                lbDirector.Text = movie5.Director;
                lbYear.Text = Convert.ToString(movie5.Year);
            }


        }

        protected void btnAddtoCard_Click(object sender, EventArgs e)
        {

            dynamic shoppingCard = Session["selectedArray"];

            if (shoppingCard != null)
            {
                foreach (var item in shoppingCard)
                {
                    SelectedMovieIndices.Add(item);
                }
            }


            if (SelectedMovieIndices.Contains((Request.QueryString["id"])))
            {
                string script = "alert(\"item already exist in shopping card!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else
            {
                SelectedMovieIndices.Add((Request.QueryString["id"]));
                Session.Add("selectedArray", SelectedMovieIndices);
            }

         


            lbisAdded.Text = "Movie is added to the shopping card";
        }

        protected void btnGotoCard_Click(object sender, EventArgs e)
        {
            if (SelectedMovieIndices == null)
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "myscript", "alert('" + "Your shopping list is empty pls add something!" + "');location.href ='../Default.aspx';", true);
            }
            Response.Redirect("Card.aspx");
        }

        protected void btnReturntoMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}