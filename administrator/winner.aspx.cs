using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;
using System.Configuration;
public partial class administrator_winner : System.Web.UI.Page
{
    OdbcConnection votingConn = new OdbcConnection(ConfigurationManager.ConnectionStrings["studentVotingConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        votingConn.Open();

        string countValue = "SELECT  COUNT(partyname) FROM vote WHERE partyname ='" + DropDownList1.SelectedItem.ToString() + "'";


        OdbcCommand cmd = new OdbcCommand(countValue, votingConn );

        int count = Convert.ToInt32(cmd.ExecuteScalar());

        lbltotal.Visible = true;
       
        lbltotal.Text = " The total votes for " + DropDownList1.SelectedItem.ToString() + "  =  " + count;


        votingConn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable winner = new DataTable();

        try
        {
            votingConn.Open();

            string countValue = "select count(vote_id) as 'votes', partyname " +
                                    "from vote " +
                                        "group by partyname " +
                                           "order by votes desc";


            OdbcCommand cmd = new OdbcCommand(countValue, votingConn);

            int count = Convert.ToInt32(cmd.ExecuteScalar());

            OdbcDataAdapter winnerAdapter = new OdbcDataAdapter(countValue, votingConn);
            winnerAdapter.Fill(winner);

            if (winner.Rows.Count < 0)
            {
                Response.Write("No Rows Found");
            }
            else
            {

                
                lblwinner.Visible = true;
                lblwinner.Text = " Winner is " + winner.Rows[0]["partyname"].ToString() + " With " + winner.Rows[0]["votes"].ToString() + " Votes";
            }
        }
        catch (Exception ex)
        {
            Response.Write("+ERROR " + ex);
        }

        finally
        {
            votingConn.Close();
        }
           
                
    }
}