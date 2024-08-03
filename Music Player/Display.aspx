<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="Music_Player.Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Spotify</title>
    <link rel="stylesheet" href="~/style1.css" />
</head>

<body>
    <form runat="server">
    <nav>
        <ul>
            <li><asp:Image ID="brand" runat="server" ImageUrl="~/Images/logo.png" /></li>
            <li><asp:HyperLink ID="HyperHome" runat="server" NavigateUrl="Display.aspx" ForeColor="White">Home</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperInsert" runat="server" NavigateUrl="~/Insert.aspx" ForeColor="White">Insert</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperDelete" runat="server" NavigateUrl="~/Delete.aspx" ForeColor="White">Delete</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperAbout" runat="server" ForeColor="White">About</asp:HyperLink></li>
        </ul>
    </nav>

        <div class="container">

        </div>

        <div class="bottom">

            <div class="songName">
                <asp:Label ID="masterSongName" runat="server" Text=""></asp:Label>
            </div>

            <div>
            <input type="range" name="range" id="myProgressBar" runat="server" min="0" max="100" value="0" />
            </div>

         
            <div class="icons">
                <asp:ImageButton ID="PreviousButton" runat="server" ImageUrl="~/Images/Previous.png" />
                <asp:ImageButton ID="PlayButton" runat="server" ImageUrl="~/Images/Play.png" />
                <asp:ImageButton ID="NextButton" runat="server" ImageUrl="~/Images/Next.png" />
            </div>
           

        </div>
</form>
</body>
</html>
