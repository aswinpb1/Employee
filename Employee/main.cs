using System;
using System.Data;
using System.Data.SqlClient;

namespace Employee
{
    public class main
    {
        SqlCommand cmd;
        SqlDataReader rdr;
        public SqlConnection connect()
        {
            SqlConnection con = new SqlConnection("Data Source=ASWIN\\SQLEXPRESS;Initial Catalog=employee;Integrated Security=True");
            con.Open();
            return con;
        }
        public void insupdel(string sql)
        {
            cmd = new SqlCommand(sql, connect());
            cmd.ExecuteNonQuery();
        }
        public SqlDataReader getdata(string sql)
        {
            cmd = new SqlCommand(sql, connect());
            rdr = cmd.ExecuteReader();
            return rdr;
        }
        public DataSet GetDataSet(string sql)
        {
            SqlDataAdapter adp = new SqlDataAdapter(sql, connect());
            DataSet ds = new DataSet();
            adp.Fill(ds);
            return ds;
        }
    }
}
