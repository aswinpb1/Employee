using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Employee
{
    public partial class employeeview : System.Web.UI.Page
    {
        main obj = new main();
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridselect();
            }
        }

        protected void gridselect()
        {
            sql = "SELECT id, name, description, gender, age, place FROM emp";
            DataSet ds = obj.GetDataSet(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridselect();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridselect();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string name = ((TextBox)row.FindControl("txtName")).Text;
            string description = ((TextBox)row.FindControl("txtDescription")).Text;
            string gender = ((TextBox)row.FindControl("txtGender")).Text;
            string age = ((TextBox)row.FindControl("txtAge")).Text;
            string place = ((TextBox)row.FindControl("txtPlace")).Text;

            sql = "UPDATE emp SET name='" + name + "', description='" + description + "', gender='" + gender + "', age='" + age + "', place='" + place + "' WHERE id=" + id;
            obj.insupdel(sql);

            GridView1.EditIndex = -1;
            gridselect();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            sql = "DELETE FROM emp WHERE id=" + id;
            obj.insupdel(sql);

            gridselect();
        }
    }
}
