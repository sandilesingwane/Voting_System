using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.Odbc;

public partial class customer_customerLogin : System.Web.UI.Page
{

    OdbcConnection votingConn = new OdbcConnection(ConfigurationManager.ConnectionStrings["studentVotingConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
            if (txtemail.Text == string.Empty && txtpassword.Text == string.Empty)
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert(' Please enter your Email address and password  ')", true);

                return;
            }
            if (txtemail.Text == string.Empty)
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert('Valid email address is required')", true);
                return;
            }
            if (txtpassword.Text == string.Empty)
            {
                if (txtemail.Text == string.Empty)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert(' password is required')", true);
                    return;
                }
            }
        
        DataTable studentDetails = new DataTable();
        DataTable admin = new DataTable();
        try
        {
            votingConn.Open();
            string searchStudent = "SELECT * FROM student WHERE email ='" + txtemail.Text + "' AND password ='" + txtpassword.Text + "'";


            OdbcDataAdapter adapter = new OdbcDataAdapter(searchStudent, votingConn);
            DataSet dts = new DataSet();
            adapter.Fill(studentDetails);

            if (studentDetails.Rows.Count < 1)
            {
                string searchAdmin = "SELECT * FROM administrator WHERE a_email='" + txtemail.Text + "' and a_password = '" + txtpassword.Text + "'";
                adapter = new OdbcDataAdapter(searchAdmin, votingConn);
                DataSet voteSmart = new DataSet();
                adapter.Fill(admin);
                if (admin.Rows.Count < 1)
                {
                    txtemail.Text = "";
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Invalid login Details supplied ,Register if you dont have an account PLEASE.')", true);
                    return;
                }
                else
                {
                    adapter.Fill(voteSmart);
                    DataTable myNew = voteSmart.Tables[0];
                    foreach (DataRow dat in myNew.Rows)
                    {
                        string grocery = dat["a_email"].ToString();
                        Session["a_email"] = grocery;
                    }

                    Response.Redirect("~/administrator/adminDashboard.aspx");
                }
            }
            else
            {

                adapter.Fill(dts);
                DataTable voteSmartTable = dts.Tables[0];
                foreach (DataRow dat in voteSmartTable.Rows)
                {
                    string num = dat["email"].ToString();
                    Session["email"] = num;

                }
                Session["SessionState"] = "LoggedIn";
                Session["email"] = studentDetails.Rows[0]["email"].ToString().Trim();
                
                Response.Redirect("~/student/vote.aspx");
            }

        }
        catch (OdbcException)
        {
            txtemail.Text = "";
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('An error occured during log in validation! Please try again or contact our support team to help you.')", true);
            return;
           
        }

        finally{
            votingConn.Close();
        }


    }
}

    
