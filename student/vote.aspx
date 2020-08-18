<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="vote.aspx.cs" Inherits="student_vote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
        <h6 class="popUpText">    Sandile Graduate College : Cast Your Vote</h6>
     
     <hr style="background-color:navy;width:100%;height:2px;" />
    <div class="jumbotron">

        <table class="nav-justified">
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 159px">&nbsp;</td>
                <td style="width: 119px">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: medium" Text="Party Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server"  style=" border-radius:5px;height:30px;width:280px" DataSourceID="SqlDataSource1" DataTextField="partyname" DataValueField="partyname">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentVotingConnection %>" ProviderName="<%$ ConnectionStrings:studentVotingConnection.ProviderName %>" SelectCommand="SELECT partyname FROM votingdatabase.party"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 159px">&nbsp;</td>
                <td style="width: 119px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="submit" style ="border-radius:5px;background-color:black;color: white; font-size: medium;" Height="40px"  Width="130px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 159px">&nbsp;</td>
                <td style="width: 119px">&nbsp;</td>
                <td>
                    <asp:Label ID="lblsuc" runat="server" style="font-weight: 700; color: #000099" Text="Label" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="lblerr" runat="server" style="font-weight: 700; font-size: medium; color: #FF0000" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>

        </div>
</asp:Content>

