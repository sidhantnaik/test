<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Music_Player.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dlete Page</title>

    <style>
        html
        {
            height:100%;
        }
        body
        {
            margin: 0;
            padding: 0;
            font-family: 'Sans Serif';
            text-align: center;
            background:linear-gradient(#920000,#411911);

        }
        .mainpage
        {
          margin:0 0 30px;
          padding:0;
          color:black;
          text-align:center;
        }
        .mainpage
        {
          position:absolute;
          top:40%;
          left:50%;
          width:500px;
          height:200px;
          padding:40px;
          transform:translate(-50%,-50%);
          background:linear-gradient(#e85858,#720505);      
          box-sizing:content-box;
          box-shadow:0 15px 25px rgba(0,0,0,6);
          border-radius:15px;
        }
        #validator
        {
            padding-left:30px;
        }
    </style>
</head>
<body>
    <div class="mainpage">
    <h2><asp:Label ID="LabelDelete" runat="server" Text="Delete Song"></asp:Label></h2>
    <form id="form1" runat="server">
        <asp:Label ID="Label2" runat="server" Text="Enter Title of song."></asp:Label>
        <div>
            <b><asp:Label ID="Label1" runat="server" Text="Input"></asp:Label></b>
            <asp:TextBox ID="txtinput" runat="server"></asp:TextBox>
            <div id="validator">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the title of song" ForeColor="Yellow" ControlToValidate="txtinput"></asp:RequiredFieldValidator>
            </div>
            <br /><br /><br />
        </div>

        <div>
            <asp:Button ID="ButtonInput" runat="server" Text="Delete" OnClick="ButtonInput_Click" />
        </div>

        <div>
            <br />
            <asp:Label ID="Outputlabel" runat="server" Text=""></asp:Label>
        </div>
    </form>
       
    </div>
</body>
</html>
