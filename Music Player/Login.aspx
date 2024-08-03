<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Music_Player.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style> 
    html
        {
            height:100%;
        }
    body
        {
            margin:0;
            padding:0;
            font-family:'Sans Serif';
            background:linear-gradient(#171738,#2E1760);

        }
    .validator{
        padding-left:80px;
    }

    .login-box
        {
          position:absolute;
          top:40%;
          left:50%;
          width:700px;
          height:300px;
          padding:40px;
          transform:translate(-50%,-50%);
          background:linear-gradient(#006992,#2E1760);
          box-sizing:border-box;
          box-shadow:0 15px 25px rgba(0,0,0,6);
          border-radius:10px;
        }
    .login-box 
        {
          margin:0 0 30px;
          padding:0;
          color:#fff;
          text-align:center;
        }
    .output
        {
            color:yellow;
        }
    </style>

</head>
<body>
    <div class="login-box">
         <h2><asp:Label ID="Label1" runat="server" Text="Login Form"></asp:Label></h2><br />
    <form id="form1" runat="server">
        
        <div class="user-box">
            <asp:Label ID="Label2" runat="server" Text="User Name :-"></asp:Label>
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            <div class="validator">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ForeColor="Yellow" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
            </div>
        </div><br />

        <div class="user-box">
            <asp:Label ID="Label3" runat="server" Text="Password :-"></asp:Label>
            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            <div class="validator">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ForeColor="Yellow" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
            </div>
        </div><br />

        <div class="output">
            <b><asp:Label ID="Outputlabel" runat="server" Text=""></asp:Label></b>
        </div><br />

        <div>
            <asp:Button ID="Login" runat="server" Text="Login" OnClick="Save_Click1" />
        </div>
        <br />
        <div>
            <asp:HyperLink href="SignUp.aspx" ID="HyperLink" runat="server" ForeColor="White" >New User</asp:HyperLink>
        </div>
    </form>
    </div>
</body>
</html>
