using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FerryCheck_InDatabase
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                GridView1.Visible = false;
                Label1.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;
                Calendar1.Visible = false;

                using (FerryEntities DbModel = new FerryEntities())
                {
                    List<Sex> sex = new List<Sex>();
                    sex = DbModel.Sexes.ToList();
                    var filteredsexes = from s in sex
                                        select new { s.GenderName, s.GenderCode };
                    this.Sex.DataSource = filteredsexes;
                    Sex.DataTextField = "GenderName";
                    Sex.DataValueField = "GenderCode";
                    Sex.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var DbModel = new FerryEntities())
            {
                List<Customer> Pass = new List<Customer>();
                Pass = DbModel.Customers.ToList();
                var FilteredPassengerList = (from p in Pass
                                             where p.Sex == Sex.SelectedItem.Value
                                             where p.EntryDate == Convert.ToDateTime(TextBox1.Text)
                                             select p).ToArray();
                Label1.Text = FilteredPassengerList.Count().ToString();
                GridView1.DataSource = FilteredPassengerList;
                GridView1.DataBind();
                GridView1.Visible = true;
                Label1.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label6.Text = Convert.ToString(DateTime.Now);
            }
        }

            protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible == false)
            {
                Calendar1.Visible = true;
            }
            else
            {
                Calendar1.Visible = false;
            }
        }

            protected void Calendar1_SelectionChanged(object sender, EventArgs e)
            {
                TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            }

            protected void Button2_Click(object sender, EventArgs e)
            {
                Response.Redirect("Passenger.aspx");
            }
    }
}