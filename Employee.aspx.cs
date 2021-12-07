using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data; 

namespace Employee_data_collection
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-LKTB3BK;Initial Catalog=Employee_info;Persist Security Info=True;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Employee_Info values('"+Convert.ToInt32(txtid.Text)+"','"+txtfname.Text+"','"+txtlname.Text+"','"+txtadd.Text+"', '"+Convert.ToInt64(txtcontact.Text)+"', '"+txtdept.Text+"', '"+Convert.ToInt64(txtsalary.Text)+"')",con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Record inserted Successfully";
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-LKTB3BK;Initial Catalog=Employee_info;Persist Security Info=True;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("update Employee_Info set fname=@fname,lname=@lname,address=@address,contact=@contact,department=@department,salary=@salary where empid='" + txtid.Text + "'",con);
            cmd.Parameters.AddWithValue("@fname", txtfname.Text);
            cmd.Parameters.AddWithValue("@lname", txtlname.Text);
            cmd.Parameters.AddWithValue("@address", txtadd.Text);
            cmd.Parameters.AddWithValue("@contact", txtcontact.Text);
            cmd.Parameters.AddWithValue("@department", txtdept.Text);
            cmd.Parameters.AddWithValue("@salary", txtsalary.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Records updated";
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            txtid.Text = "";
            txtfname.Text = "";
            txtlname.Text = "";
            txtadd.Text = "";
            txtcontact.Text = "";
            txtdept.Text = "";
            txtsalary.Text = "";
            Label1.Text = "Reset Completed";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-LKTB3BK;Initial Catalog=Employee_info;Persist Security Info=True;User ID=sa;Password=admin123");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Employee_Info", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-LKTB3BK;Initial Catalog=Employee_info;Persist Security Info=True;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Employee_Info where empid='"+txtid.Text+"'",con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Record deleted.....";
            con.Close();
            
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-LKTB3BK;Initial Catalog=Employee_info;Persist Security Info=True;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Employee_info where empid='" + txtid.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtfname.Text = dr["fname"].ToString();
                txtlname.Text = dr["lname"].ToString();
                txtadd.Text = dr["address"].ToString();
                txtcontact.Text = dr["contact"].ToString();
                txtdept.Text = dr["department"].ToString();
                txtsalary.Text = dr["salary"].ToString();
            }
            dr.Close();
            con.Close();

        }
    }
}