using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;
using System.Configuration;

public partial class administrator_addParty : System.Web.UI.Page
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

            string searchParty = "SELECT partyname FROM party WHERE partyname ='" + TextBox1.Text + "'";
            OdbcDataAdapter adpt = new OdbcDataAdapter(searchParty, votingConn);
            DataSet dt = new DataSet();
            adpt.Fill(dt);

            if(dt.Tables[0].Rows.Count > 0)
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert(' This structural party is already exist')", true);
                return;
            }
            else
            {
                string addParty = "INSERT INTO party(partyname,partyLogo) VALUES('" + TextBox1.Text + "','"  + "C:/Users/thabiso/Pictures"+FileUpload1.FileName + "')";
                OdbcCommand partyComm = new OdbcCommand(addParty, votingConn);
                partyComm.ExecuteNonQuery();

                TextBox1.Text = string.Empty;
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert(' party added successfully')", true);
                return;

            }
            
        }
        catch(OdbcException)
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert(' errors occurs during validation please try again or contact the support they will help you...')", true);
            return;
        }

        finally
        {
            votingConn.Close();
        }
    }
}