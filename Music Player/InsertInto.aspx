<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertInto.aspx.cs" Inherits="Music_Player.Insert1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Song</title>
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
            background:linear-gradient(#cc05ae,#6b0275);
        }
    .main-box 
        {
          margin:0 0 30px;
          padding:0;
          color:black;
          text-align:center;
        }
    .main-box
        {
          position:absolute;
          top:40%;
          left:50%;
          width:700px;
          height:400px;
          padding:40px;
          transform:translate(-50%,-50%);
          background:linear-gradient(#ef91e1,#e104f5);
          box-sizing:content-box;
          box-shadow:0 15px 25px rgba(0,0,0,6);
        }
    #txtId
        {
          background-color:white;
          width:auto;
        }   
    #validator
    {
        padding-left:140px;
    }
   
       
    </style>
</head>
<body>
  <div class="main-box">
        <div>
            <h2><asp:Label ID="Label2" runat="server" Text="Add New Song"></asp:Label></h2>
        </div><br /><br />
    <form id="form1" runat="server">
      
        <div>
            <asp:FileUpload ID="FileUploadSong" runat="server" />
        </div><br /><br />

        <div class="middle-box">
            <b><asp:Label ID="LabelTitle" runat="server" Text="Song Title :-"></asp:Label></b>
            <asp:Label ID="txtId" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="txttitle" runat="server" ></asp:TextBox>
        </div>
        <div id="validator">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="The Song Name is Required" ControlToValidate="txttitle" ForeColor="Yellow"></asp:RequiredFieldValidator>
        </div>
           <br /><br />
        <div>
            <asp:Button ID="UploadButton" runat="server" Text="Add Song" OnClick="UploadButton_Click" />
            <br /><br />
            <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
         </div>
        
    </form>
    </div>
</body>
</html>
