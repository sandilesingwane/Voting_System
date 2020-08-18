<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="customerLogin.aspx.cs" Inherits="customer_customerLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <h6 class="popUpText">    Sandile Graduate College : sign in</h6>
    <h4 style="text-align:center; font-size: medium;"> <span style="color: navy;font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;"> <strong>Have An Account?</strong></span></h4><br />
    <label style="font-size: medium;font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;color:black"><strong>Please enter your login information below , Both your email and you password if already registered and enjoy voting at sandile graduate College ...</strong></label>
   <hr style="background-color:navy;width:100%;height:2px;" />
     <div class="jumbotron">
          <p style="color:white;font-size:medium;font-weight:bold; text-align:center;font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;">Please Fill In Your Correct Email Address And Passoword To Identity Yourself</p>
        
         <table class="nav-justified">
            
        <tr>
            <td class="text-right">
                <asp:Label ID="Label1" runat="server" Text="Email" style="font-weight: bold; font-size: medium;color:white"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" style="border-radius:5px" Height="30px" Width="280px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label2" runat="server" Text="Password" style="font-weight: bold; font-size: medium;color:white"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassword"  runat="server" style="border-radius:5px" Height="30px" TextMode="Password" Width="280px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Sign In" style ="border-radius:5px;background-color:black;color: white; font-size: medium;" Height="40px"  Width="130px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server"  >Forget your Password?</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <h4 style="font-size: medium;color:white;font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;"> <strong>Not a registered  user yet?</strong></h4>
                &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/student/addStudentt.aspx" >Create an account</asp:HyperLink> <strong><span style="font-size: medium;color:white;font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;">&nbsp;to order to vote at our institution&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server">Cancel Your Account</asp:HyperLink>
                &nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server"  >Update Your Password</asp:HyperLink>
            &nbsp;
                <asp:Label ID="Label4" runat="server" Text=" Password Is Case Sensitive" style="font-weight: bold; font-size: medium;color:white;font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;"></asp:Label>
            </span></strong>
            </td>
        </tr>
    </table>
         </div>
         <br /><br />
</asp:Content>

