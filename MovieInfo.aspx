<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieInfo.aspx.cs" Inherits="Onur_Altuntas_HW2.MovieInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
       <div class="sec2">
           <div class="container">
              
                <div class="content">

                <asp:Label ID="lbName" runat="server" Text="Label"></asp:Label><br />
                    <br />
               <asp:Label ID="lbYear" runat="server" Text="Label"></asp:Label><br />
                    <br />
               
                 <asp:Label ID="lbWriter" runat="server" Text="Label"></asp:Label> <br />
                    <br />
                 <asp:Label ID="lbDirector" runat="server" Text="Label"></asp:Label> <br />
                    <br />

                    
            <asp:Button ID="btnAddtoCard" runat="server" OnClick="btnAddtoCard_Click" Text="Add To Card" /><br />
                    <br />
       
            <asp:Label ID="lbisAdded" runat="server"></asp:Label><br />
                    <br />
        
             <asp:Button ID="btnGotoCard" runat="server" OnClick="btnGotoCard_Click" Text="Go To Card" /><br />
                    <br />
        
            <asp:Button ID="btnReturntoMainPage" runat="server" OnClick="btnReturntoMainPage_Click" Text="Return to Main Page" /><br />
                    <br />

                 </div>

           </div>
       </div>

    </form>

     <div class="Pictures">
              <asp:Image ID="imgShow" runat="server" Height="350px" Width="250px" />

        </div>
</body>
</html>


<style>
   
body {
   margin:0;
   padding:0;
   background-color:dodgerblue;
    text-align:center;
    display:inline-block;
   
    background: #373B44;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #4286f4, #373B44);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #4286f4, #373B44); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

.Pictures{
    background-color:darkorange;
    margin-left:500px;
    margin-top:50px;
    width:auto;
    height:auto;
    display:flex;
    border: 1px solid;
    border-radius:10px;
    padding: 10px;
    box-shadow: 10px 10px 10px;
     text-align:center;
      background: #F7971E;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #FFD200, #F7971E);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #FFD200, #F7971E); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
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

.container{
    height:auto;
    width:300px;
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


    .content h2 {
        font-family: "Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
        text-decoration-color: white;
        display: inline-block;
        text-align: center;
    }

    .content input[type=text] {
        height: 30px;
        border: 0;
        margin-top: 2.5vh;
        margin-left: 5vw;
        border-radius: 20px;
    }

    .content input[type=submit] {
        font-family: "Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
        color: black;
        border: 1px solid;
        padding: 10px;
        box-shadow: 5px 5px 5px;
        border-radius: 10px;
        background: #F7971E; /* fallback for old browsers */
        background: -webkit-linear-gradient(to right, #FFD200, #F7971E); /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #FFD200, #F7971E); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    }

    .content input[placeholder] {
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        padding-left: 1vw;
        font-size: 13px;
    }
</style>