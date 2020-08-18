<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="addParty.aspx.cs" Inherits="administrator_addParty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br /><br />
    <h6 class="popUpText">   Sandile Graduate College :Register Party Information </h6>

    
    <hr style="background-color:navy;width:100%;height:2px;" />
     <div class="jumbotron">

         <table class="nav-justified">
             <tr>
                 <td colspan="3">&nbsp;</td>
             </tr>
             <tr>
                 <td class="text-right">
                     <asp:Label ID="Label1" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Party Name"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server" style=" border-radius:5px;height:30px;width:280px"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="text-right">
                     <asp:Label ID="Label2" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Party Logo"></asp:Label>
                 </td>
                 <td>
                     <asp:FileUpload ID="FileUpload1" runat="server" style=" border-radius:5px;height:30px;width:280px" />
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     <asp:Button ID="Button1" runat="server" Text="Submit" style ="border-radius:5px;background-color:black;color: white; font-size: medium;" Height="40px"  Width="130px" OnClick="Button1_Click" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input id="Reset1" type="reset" value="reset" style ="border-radius:5px;background-color:black;color: white; font-size: medium;height:40px;width:130px"/></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>

         </div>
</asp:Content>

