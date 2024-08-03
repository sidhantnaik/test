<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Music_Player.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up Form</title>
   <style>
    html
        {
            height:100%;
            background:linear-gradient(#3512c3,#7e0c8f);

        }
    body
        {
            margin:0;
            padding:0;
            font-family:'Sans Serif';
            background-color:darkgreen;

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
          background:linear-gradient(#3512c3,#7e0c8f);
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
    #validator
    {
        padding-left:80px;
    }
    
    
    </style>
</head>

<body>
    <div class="login-box">
        <h2><asp:Label ID="Label1" runat="server" Text="Sign Up Form"></asp:Label></h2>

    <form id="form1" runat="server">

         <div class="user-box">
                <asp:Label ID="Label2" runat="server" Text="User Name :-"></asp:Label>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </div>
        <div id="validator">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User name is required" ForeColor="Yellow" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
         </div><br />

        <div class="user-box">
                <div>
                    <asp:Label ID="Label3" runat="server" Text="Password :-"></asp:Label>
                    <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                </div><br />
                
                
                <div>
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password :-"></asp:Label>
                    <asp:TextBox ID="txtconpassword" runat="server"></asp:TextBox>
                </div><br />
        </div>
        <div class="output">
            <b><asp:Label ID="Outputlabel" runat="server" Text=""></asp:Label></b>
        </div>

        <div class="user-box">
            <br />
            <br />
            <asp:Button ID="Save" runat="server" Text="Sign Up" OnClick="Save_Click" />
        </div>

    </form>
    </div>
</body>
</html>
