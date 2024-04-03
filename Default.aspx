<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Onur_Altuntas_HW2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Default Page</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="sec2">
           <div class="container">
              
                <div class="content">

           <h2>Welcome!</h2>
        <asp:Label ID="lbWelcome" runat="server" Font-Bold="True" Font-Size="16px" ></asp:Label><br />
        <asp:Label ID="lbFirstandLastName" runat="server" Text="Label" Font-Bold="True" Font-Size="20px"></asp:Label><br /> <br />
        <asp:Image ID="imgCard" ImageUrl="https://allwhat.com/wp-content/uploads/2017/11/cart_118x100.png" runat="server" /><br />
                    <br />
        <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="Log Out" /> <br />   

                 </div>

           </div>
       </div>

        <div class="Pictures">
             
            <asp:ImageButton ID="ImageButton1" runat="server" style="margin:10px;" AlternateText="The God Father" DescriptionUrl="MovieInfo.aspx?id=1" Height="300px" ImageUrl="~/images/The God Father.jpg" OnClick="ImageButton1_Click" Width="200px" /><br />
            <asp:ImageButton ID="ImageButton2" runat="server" style="margin:10px;" AlternateText="The shawshank redemption" DescriptionUrl="MovieInfo.aspx?id=2" Height="300px" ImageUrl="~/images/The shawshank redemption.jpg" OnClick="ImageButton2_Click" Width="200px" /><br />
            <asp:ImageButton ID="ImageButton3" runat="server" style="margin:10px;" AlternateText="The Dark Night" DescriptionUrl="MovieInfo.aspx?id=3" Height="300px" ImageUrl="~/images/The Dark Night.jpg" OnClick="ImageButton3_Click" Width="200px" /><br />
            <asp:ImageButton ID="ImageButton4" runat="server" style="margin:10px;" AlternateText="12 Angry Men" DescriptionUrl="MovieInfo.aspx?id=4" Height="300px" ImageUrl="~/images/12 Angry Men.jpg" OnClick="ImageButton4_Click" Width="200px" /><br />
            <asp:ImageButton ID="ImageButton5" runat="server" style="margin:10px;" AlternateText="The Lord of the Rings: The Return of the King" DescriptionUrl="MovieInfo.aspx?id=5" Height="300px" ImageUrl="~/images/The Lord of the Rings The Return of the King.jpg" OnClick="ImageButton5_Click" Width="200px" /><br />
  
        </div>
          
        
    </form>
</body>
</html>



<style>
   
   body {
   margin:0;
   padding:0;
     background: #373B44;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #4286f4, #373B44);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #4286f4, #373B44); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    text-align:center;
    display:inline-block;
    }


.Pictures{
    background: #F7971E;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #FFD200, #F7971E);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #FFD200, #F7971E); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    margin-left:360px;
    margin-top:50px;
    margin-right:50px;
    width:auto;
    height:auto;
    display:flex;
    border: 1px solid;
    border-radius:10px;
    padding: 10px;
    box-shadow: 10px 10px 10px;

}


.sec2{
    position:absolute;
    left:0;
    right:0;
    top:0;
    bottom:0;
    margin-left:50px;
    margin-top:50px;
    width:200px;
    height:200px;
    display:inline-block;
    justify-content:center;
    align-items:center;
 

}


.content h2{
    font-family:"Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
    text-decoration-color:white;
    display:inline-block;
    text-align:center;
}

.container{
    height:320px;
    width:200px;
    border: 1px solid;
    padding: 10px;
    box-shadow: 10px 10px 10px;
    border-radius:10px;
    display:inline-block;
    text-align:center;
     background: #F7971E;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #FFD200, #F7971E);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #FFD200, #F7971E); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    
}

    .content input[type=submit] {
        color: black;
        padding-bottom: 10px;
        padding-top: 10px;
        padding-left: 15px;
        padding-right: 15px;
        border: 1px solid;
        padding: 10px;
        box-shadow: 5px 5px 5px;
        border-radius: 10px;
        background: #F7971E; /* fallback for old browsers */
        background: -webkit-linear-gradient(to right, #FFD200, #F7971E); /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #FFD200, #F7971E); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    }

.content textarea{
    height:30px;
    border:0;
    margin-top:2.5vh;
    margin-left:4vw;
    border-radius:20px;
}
</style>

