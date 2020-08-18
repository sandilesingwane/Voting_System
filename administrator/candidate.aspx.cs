using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;
using System.Configuration;

public partial class administrator_candidate : System.Web.UI.Page
{
    OdbcConnection votingConn = new OdbcConnection(ConfigurationManager.ConnectionStrings["studentVotingConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        votingConn.Open();
        string addCandidate = "INSERT INTO candidate(c_name,c_surname,c_image,partyname) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" +"../images/"+ FileUpload1.FileName + "','" + TextBox3.Text + "')";
        OdbcCommand csn = new OdbcCommand(addCandidate, votingConn);
        csn.ExecuteNonQuery();

        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";

        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert('candidate successfully added')", true);
        return;
       
        votingConn.Close();
    }
}