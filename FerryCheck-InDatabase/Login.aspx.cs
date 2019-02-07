using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FerryCheck_InDatabase
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var Db = new FerryEntities())
            {
                 
                
                var filteredusers = from u in Db.Users
                                     where u.Username == Username.Text.Trim() && u.Password == Password.Text.Trim()
                                     select u;                           

                if (filteredusers.Count() > 0)
                {
                    Label3.Visible = true;
                    Label3.Text = "sucessful";
                    Label3.ForeColor = System.Drawing.Color.Blue;
                    Response.Redirect("Passenger.aspx");
                }
                else
                {
                    Label3.Visible = true;
                    Label3.Text = "Invalid username or password";
                    Label3.ForeColor = System.Drawing.Color.Red;
                    //Response.Redirect("Passenger.aspx");
                }

            }

        }
    }
}