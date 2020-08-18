<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="winner.aspx.cs" Inherits="administrator_winner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br /><br />
    <h6 class="popUpText">   Sandile Graduate College :winning Party Information </h6>

    
    <table class="nav-justified">
        <tr>
            <td style="width: 258px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 258px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: medium; text-align: right" Text="Party Name"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:DropDownList ID="DropDownList1" runat="server" style=" border-radius:5px;height:30px;width:280px" DataSourceID="SqlDataSource1" DataTextField="partyname" DataValueField="partyname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentVotingConnection %>" ProviderName="<%$ ConnectionStrings:studentVotingConnection.ProviderName %>" SelectCommand="SELECT partyname FROM votingdatabase.party"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 258px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 258px; height: 31px;"></td>
            <td style="height: 31px">
                <asp:Button ID="Button1" runat="server" Text="total" style ="border-radius:5px;background-color:black;color: white; font-size: medium;" Height="40px"  Width="130px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%--<asp:Button ID="Button2" runat="server" Text="winner" style ="border-radius:5px;background-color:black;color: white; font-size: medium;" Height="40px"  Width="130px" OnClick="Button2_Click" />--%>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/administrator/winnerReport.aspx">show winner</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="width: 258px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 258px">&nbsp;</td>
            <td>
                <asp:Label ID="lbltotal" runat="server" style="font-weight: bold; font-size: medium; color: #0066FF" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblwinner" runat="server" style="font-weight: bold; font-size: medium; color: #000099" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
     


</asp:Content>

