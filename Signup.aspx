<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
            float: left;
            border: 4px solid #ffffff;
            background-color: #ffffff;
            margin-top: 170px;
            margin-left: 433px;
        }
        .auto-style2 {
            font-size: small;
        }
        .auto-style3 {
            text-align: right;
           
           
        }
        .auto-style4 {
            text-decoration: underline;
            font-style: italic;
            font-size: large;
        }
        .auto-style5 {
            text-align: center;
            height: 44px;
        }
        .auto-style6 {
            height: 342px;
            background-color: #00FFFF;
        }
        .auto-style7 {
            width: 86px;
        }
    </style>
</head>
  
<body>
    <h1>Welcome</h1>
    <form id="form1" runat="server">
    <div class="auto-style6">
    <h4>its my decision plz ...!</h4>
        <table class="auto-style1">
            
                
                  
                
            
           
            <tr>
                
                <td class="auto-style3"><strong>UID:</strong></td>
                <td>
                    <asp:TextBox ID="tbuname" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="rfvuid" runat="server" ControlToValidate="tbuname" ErrorMessage="Uidcannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style3"><strong>Passcode:</strong></td>
                <td>
                    <asp:TextBox ID="tbpwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ControlToValidate="tbpwd" ErrorMessage="passcode cannot be blank" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td colspan="3" class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Signup" CssClass="auto-style4" OnClick="Button1_Click" />
                    <asp:CheckBox ID="tbcheck" runat="server" Text="Keep login me" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
