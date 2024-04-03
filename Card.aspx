<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Card.aspx.cs" Inherits="Onur_Altuntas_HW2.Card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
       <div class="sec2">
           <div class="container">
              
                <div class="content">


        <asp:Label ID="lbCard" runat="server" Font-Bold="True" Font-Names="Adobe Fan Heiti Std B" Font-Size="24pt" Text="Shopping Card"></asp:Label>
         <p>
            <asp:Button ID="btnReturntheMainPage" runat="server" Font-Bold="True" Text="Return to Main Page" OnClick="btnReturntheMainPage_Click" />
        </p>

                 </div>

           </div>
       </div>

         <div class="Pictures">
             <div>  
                  <asp:Image ID="imgShow" runat="server" Height="300px" Width="200px" />
        <p>
            <asp:Label ID="lbName" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbWriter" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbDirector" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbYear" runat="server"></asp:Label>
        </p>
             </div>
       
             <div>
                  <asp:Image ID="imgShow0" runat="server" Height="300px" Width="200px" />
        <p>
            <asp:Label ID="lbName0" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbWriter0" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbDirector0" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbYear0" runat="server"></asp:Label>
             </div>
       
             <div>
                 </p>
        <asp:Image ID="imgShow1" runat="server" Height="300px" Width="200px" />
        <p>
            <asp:Label ID="lbName1" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbWriter1" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbDirector1" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbYear1" runat="server"></asp:Label>
        </p>
             </div>
        
             
             <div>
                 <asp:Image ID="imgShow2" runat="server" Height="300px" Width="200px" />
        <p>
            <asp:Label ID="lbName2" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbWriter2" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbDirector2" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbYear2" runat="server"></asp:Label>
        </p>
             </div>
        
             <div>
                 <asp:Image ID="imgShow3" runat="server" Height="300px" Width="200px" />
        <p>
            <asp:Label ID="lbName3" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbWriter3" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbDirector3" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbYear3" runat="server"></asp:Label>
        </p>
             </div>

             <div>
                 <asp:Image ID="imgShow4" runat="server" Height="300px" Width="200px" />
        <p>
            <asp:Label ID="lbName4" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbWriter4" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbDirector4" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbYear4" runat="server"></asp:Label>
        </p>
  
             </div>
        
        
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

    display:inline-block;
    text-align:center;
}

.Pictures{
   background: #F7971E;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #FFD200, #F7971E);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #FFD200, #F7971E); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    margin-left:400px;
    margin-top:50px;
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

.container{
    height:auto;
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


.content h2{
    font-family:"Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
    text-decoration-color:white;
    display:inline-block;
    text-align:center;
}

.content input[type=text]{
    height:30px;
    border:0;
    margin-top:2.5vh;
    margin-left:5vw;
    border-radius:20px;
}

    .content input[type=submit] {
        font-family: "Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
        color: black;
        border: 1px solid;
        padding: 10px;
        box-shadow: 5px 5px 5px;
        border-radius: 10px;
        background: #F7971E;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #FFD200, #F7971E);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #FFD200, #F7971E); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    }

    .content input[placeholder] {
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        padding-left: 1vw;
        font-size: 13px;
    }
</style>
