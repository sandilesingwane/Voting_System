<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="showCandidate.aspx.cs" Inherits="administrator_showCandidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br /><br />
    <h6 class="popUpText">   Sandile Graduate College :Register Party Information </h6>
    <hr />

    &nbsp;

    <asp:DataList runat="server" CellPadding="4" CellSpacing="30" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="4">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td style="color: #FF3300; background-color: #FF0000">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" style="text-align: center" Text='<%# Eval("partyname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("c_surname") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="101px" ImageUrl='<%# Eval("c_image") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("c_id") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FF0000">&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentVotingConnection %>" ProviderName="<%$ ConnectionStrings:studentVotingConnection.ProviderName %>" SelectCommand="SELECT c_id, c_name, c_surname, c_image, partyname FROM votingdatabase.candidate"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:studentVotingConnection %>" ProviderName="<%$ ConnectionStrings:studentVotingConnection.ProviderName %>" SelectCommand="SELECT c_id, c_name, c_surname, c_image, partyname FROM votingdatabase.candidate"></asp:SqlDataSource>
</asp:Content>

