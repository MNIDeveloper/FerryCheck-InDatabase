using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FerryCheck_InDatabase
{
    public partial class Passenger1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (FerryEntities DbModel = new FerryEntities())
                {
                    List<Country> country = new List<Country>();
                    country = DbModel.Countries.ToList();
                    var filteredcountry = from c in country
                                          select new { c.CountryName, c.ThreeCharCountryCode };
                    Nationality.DataSource = filteredcountry;
                    Nationality.DataTextField = "CountryName";
                    Nationality.DataValueField = "ThreeCharCountryCode";
                    Nationality.DataBind();
                    List<Sex> sex = new List<Sex>();
                    sex = DbModel.Sexes.ToList();
                    var filteredsexes = from s in sex
                                        select new { s.GenderName, s.GenderCode };
                    Sex.DataSource = filteredsexes;
                    Sex.DataTextField = "GenderName";
                    Sex.DataValueField = "GenderCode";
                    Sex.DataBind();
                    List<Destination> destination = new List<Destination>();
                    destination = DbModel.Destinations.ToList();
                    var filtereddes = from d in destination
                                      select new { d.CountryName, d.TwoCharCountryCode };
                    Destination.DataSource = filtereddes;
                    Destination.DataTextField = "CountryName";
                    Destination.DataValueField = "TwoCharCountryCode";
                    Destination.DataBind();
                   
                }
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Label6.Text = Sex.SelectedItem.Value;
            Label8.Text = Nationality.SelectedItem.Value;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
             FerryEntities Db = new FerryEntities();
        
            var passeneger = new Customer(); 
            passeneger.FirstName = Fname.Text;
            passeneger.MiddleName = Mname.Text;
            passeneger.LastName= Lname.Text;
            passeneger.Sex = Sex.SelectedItem.Value;
            passeneger.DOB = Convert.ToDateTime(DOB.Text);
            passeneger.Nationality = Nationality.SelectedItem.Value;
            passeneger.PassportNumber = Passport.Text;
            passeneger.DateOfIssue = Convert.ToDateTime(DateofIssue.Text);
            passeneger.DateOfExpire = Convert.ToDateTime(DateofExpire.Text);
            passeneger.Destination = Destination.SelectedItem.Value;
            passeneger.EntryDate = Convert.ToDateTime(DateofEntry.Text);
            passeneger.Period = Period.SelectedItem.Text;
            passeneger.VoyageNumber = Voyage.Text;
            Db.Customers.Add(passeneger);
            Db.SaveChanges();
            Response.Redirect("Passenger.aspx");
            
       }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }

    }
}