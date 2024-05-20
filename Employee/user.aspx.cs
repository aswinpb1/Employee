using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee
{
    public partial class user : System.Web.UI.Page
    {
        main obj=new main();
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" )
            {
                Label7.Text = "field can't be blank!";
            }
            else
            {

               
                    
                    sql = "insert into emp(name,description,gender,age,place) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                    obj.insupdel(sql);
                    Response.Write("<script>alert('employee added successfully')</script>");
                    Response.Redirect("userhome.aspx");
                
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userhome.aspx");
        }
    }
}