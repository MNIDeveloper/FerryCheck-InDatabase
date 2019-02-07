using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FerryCheck_InDatabase
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

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
            //TextBox1.Text = "";
            //TextBox2.Text = "";
           Label3.Text = Sex.SelectedItem.Value;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FerryEntities Db = new FerryEntities();
            var person = new Person();
            person.Fname = TextBox1.Text;
            person.Lname = TextBox2.Text;
            person.Sex = Sex.SelectedItem.Value;
            person.DOB = Convert.ToDateTime(TextBox3.Text); 
            Db.People.Add(person);
            Db.SaveChanges();
            int Result = Db.SaveChanges();
            if (Result > 0)
            {
                Response.Write("</script>alert('Data inserted successfully')</script>");
            }
            else
            {
                Response.Write("</script>alert('Data not inserted successfully')</script>");
            }
            Response.Redirect("WebForm1.aspx");
        }
    }
}