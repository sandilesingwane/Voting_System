﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="candidate.aspx.cs" Inherits="administrator_candidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />

    <h6 class="popUpText">    Sandile Graduate College : Add Party candidate</h6>
    <br />
    <hr style="background-color:navy;width:100%;height:2px;" />
        <div class="jumbotron">


            <table class="nav-justified">
                <tr>
                    <td class="text-right" style="width: 311px">
                        <asp:Label ID="Label1" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"  style=" border-radius:5px;height:30px;width:280px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 311px">
                        <asp:Label ID="Label2" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Surname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"  style=" border-radius:5px;height:30px;width:280px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 311px">
                        <asp:Label ID="Label3" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Picture"></asp:Label>
                    </td>
                    <td>
                     <asp:FileUpload ID="FileUpload1" runat="server" style=" border-radius:5px;height:30px;width:280px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 311px">
                        <asp:Label ID="Label4" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Party Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"  style=" border-radius:5px;height:30px;width:280px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td>
                     <asp:Button ID="Button1" runat="server" Text="Submit" style ="border-radius:5px;background-color:black;color: white; font-size: medium;" Height="40px"  Width="130px" OnClick="Button1_Click"  />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input id="Reset1" type="reset" value="reset" style ="border-radius:5px;background-color:black;color: white; font-size: medium;height:40px;width:130px"/></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 311px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>


     </div>
</asp:Content>

