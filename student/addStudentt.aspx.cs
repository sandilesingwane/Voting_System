using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;
using System.Configuration;

public partial class student_addStudentt : System.Web.UI.Page
{
    OdbcConnection votingConn = new OdbcConnection(ConfigurationManager.ConnectionStrings["studentVotingConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            if(DropDownList1.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert(' please select gender')", true);
                return;
            }
            votingConn.Open();
            string searchStudent = "SELECT student_number From student WHERE student_number ='" + TextBox8.Text + "'";
            OdbcDataAdapter adapt = new OdbcDataAdapter(searchStudent, votingConn);
            DataSet dts = new DataSet();
            adapt.Fill(dts);

                if(dts.Tables[0].Rows.Count > 0)
                {

                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert(' this student is already registered just login!!! ')", true);
                    return;
                }
                else
                {
                    string addStudent = "INSERT INTO student(student_number,surname,name,gender,email,contact,password,address) VALUES('" + TextBox8.Text + "','" + TextBox7.Text + "','" + TextBox1.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "')";
                    OdbcCommand studComm = new OdbcCommand(addStudent, votingConn);
                    studComm.ExecuteNonQuery();

                    TextBox1.Text = string.Empty;
                    TextBox6.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                    TextBox5.Text = string.Empty;
                    TextBox7.Text = string.Empty;
                    TextBox8.Text = string.Empty;

                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert(' student registered successfully ')", true);
                    return;
                }
        }
               catch(OdbcException)
               {
                   TextBox1.Text = string.Empty;
                   TextBox6.Text = string.Empty;
                   TextBox3.Text = string.Empty;
                   TextBox4.Text = string.Empty;
                   TextBox5.Text = string.Empty;
                   TextBox7.Text = string.Empty;
                   TextBox8.Text = string.Empty;

                   ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "scriptClient", "alert(' student not registered database  error occured ')", true);
                   return;
                 }

        finally
        {
            votingConn.Close();
        }
    }
    
}