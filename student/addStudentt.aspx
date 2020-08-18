<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="addStudentt.aspx.cs" Inherits="student_addStudentt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <h6 class="popUpText">   Sandile Graduate College :Create Account</h6>

    <br />
    <h6 style="font-size: medium;text-align:center;font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;"> <strong>Already a registered  user?
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/student/customerLogin.aspx">Please Sign In</asp:HyperLink>&nbsp;Login credintials are case sensitive</strong></h6>
     <hr style="background-color:navy;width:100%;height:2px;" />
    <div class="jumbotron">
        
             
        <table class="nav-justified">
            <tr>
                
                <p style ="color:white;text-align:center;font-weight:bold;font-size:medium"> Please fill the form all the fields are required</p>
            </tr>
            <tr>
                <td style="width: 354px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-right" style="width: 354px">
                    <asp:Label ID="Label1" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Student Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" style=" border-radius:5px;height:30px;width:280px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="enter student number" style="font-weight: bold; color: #FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-right" style="width: 354px">
                    <asp:Label ID="Label2" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Surame"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" style=" border-radius:5px;height:30px;width:280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="surname required" style="font-weight: bold; color: #FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-right" style="width: 354px">
                    <asp:Label ID="Label3" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" style=" border-radius:5px;height:30px;width:280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="name required" style="font-weight: bold; color: #FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-right" style="width: 354px">
                    <asp:Label ID="Label4" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" style=" border-radius:5px;height:30px;width:280px">
                        <asp:ListItem>please select gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-right" style="width: 354px">
                    <asp:Label ID="Label5" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" style=" border-radius:5px;height:30px;width:280px" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="email required" style="font-weight: bold; color: #FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-right" style="width: 354px">
                    <asp:Label ID="Label6" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Contact Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" style=" border-radius:5px;height:30px;width:280px" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="contact required" style="font-weight: bold; color: #FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-right" style="width: 354px">
                    <asp:Label ID="Label7" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" style=" border-radius:5px;width:280px" Height="99px"  TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="address required" style="font-weight: bold; color: #FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-right" style="width: 354px">
                    <asp:Label ID="Label8" runat="server" style="font-weight: bold; font-size: medium; color: #FFFFFF" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" style=" border-radius:5px;height:30px;width:280px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="password required" style="font-weight: bold; color: #FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 354px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 354px">&nbsp;</td>
                <td>
                    &nbsp;<asp:Button ID="Button1" runat="server" Text="Register" style=" border-radius:5px;height:40px;width:130px;background-color:black;color:white" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" type="reset" value="reset"  style=" border-radius:5px;height:45px;width:100px;background-color:black;color:white" />&nbsp;
                </td>
                <td>&nbsp;</td>
            </tr>
            
        </table>
        
             
    </div>
</asp:Content>

