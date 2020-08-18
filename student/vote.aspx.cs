using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;
using System.Configuration;

public partial class student_vote : System.Web.UI.Page
{
    OdbcConnection votingConn = new OdbcConnection(ConfigurationManager.ConnectionStrings["studentVotingConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {


            votingConn.Open();

           
           // string studentID = "SELECT stud_id FROM student WHERE stud_id ='" + Session["email"] + "'";
            string castVote = "INSERT INTO vote(partyname) VALUES('" + DropDownList1.SelectedItem.ToString()  + "')";
            OdbcCommand castVoteComm = new OdbcCommand(castVote,votingConn);
            castVoteComm.ExecuteNonQuery();

            lblsuc.Visible = true;
            lblsuc.Text = "You have successfully voted for : " + DropDownList1.SelectedItem.ToString();
            System.Threading.Thread.Sleep(5000);
            Response.Redirect("../student/confirmation.aspx");
        }
        catch(Exception err)
        {
            lblerr.Visible = true;
            lblerr.Text = "" + err.Message;
        }
        finally
        {
            votingConn.Close();
        }
        
    }
}