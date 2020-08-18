<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="adminDashboard.aspx.cs" Inherits="administrator_adminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />

    <h6 class="popUpText">    Sandile Graduate College : Administrator Dashboard</h6>
    <br />
    <hr style="background-color:navy;width:100%;height:2px;" />
     <table class="nav-justified">
         <tr>
             <td>
                <asp:HyperLink runat="server" NavigateUrl="~/administrator/addParty.aspx">add party</asp:HyperLink>
<%--                  <asp:Button ID="Button1" runat="server" Text="addParty" style ="border-radius:5px;background-color:black;color: white; font-size: medium;" Height="40px"  Width="130px" OnClick="Button1_Click" />--%>

             </td>
             <td>
                 <asp:HyperLink runat="server" NavigateUrl="~/administrator/winner.aspx">winner</asp:HyperLink>
                 <%--<asp:Button ID="Button2" runat="server" Text="add candidate" style ="border-radius:5px;background-color:black;color: white; font-size: medium;" Height="40px"  Width="130px"/>--%>
             </td>
             <td>
                <%-- <asp:Button ID="Button3" runat="server" Text="winner" style ="border-radius:5px;background-color:black;color: white; font-size: medium;" Height="40px"  Width="130px" OnClick="Button3_Click"/>--%>

             </td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
    </table>


</asp:Content>

