<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Onur_Altuntas_HW2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Login Page</title>
    </head>
<body>
    
   <form id="form1" runat="server">
       <div class="sec2">
           <div class="container">
              
                <div class="content">

           <h2>Welcome!</h2>
                    <br />
           
            <asp:TextBox ID="txtFirstName" placeholder="First Name" runat="server" ></asp:TextBox><br />
            <asp:TextBox ID="txtLastName" placeholder="Last Name" runat="server"></asp:TextBox><br />  <br />
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" /><br />

                 </div>

           </div>
       </div>

    </form>
      
</body>
</html>


<style>
   
body {
   margin:0;
   padding:0;
   text-align:center;
   display:inline-block;
   background: #373B44;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #4286f4, #373B44);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #4286f4, #373B44); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

 
}
   

.sec2{
    width:200px;
    height:200px;
    display:inline-block;
    text-align:center;
     display:inline-block;
}

.container{
    margin-left:600px;
    margin-top:250px;
    height:300px;
    width:300px;
    border: 1px solid;
    box-shadow: 10px 10px 10px;
    border-radius:10px;
    text-align:center;
   display:inline-block;
   background: #F7971E;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #FFD200, #F7971E);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #FFD200, #F7971E); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}


.content h2{
    font-family:"Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
    text-decoration-color:white;
   text-align:center;
   display:inline-block;
}

    .content input[type=text] {
        height: 30px;
        border: 0;
        margin-top: 10px;
        margin-left: 10px;
        border-radius: 20px;
    }

    .content input[type=submit] {
        font-family: "Segoe UI",Tahoma,Verdana, Geneva, Tahoma, sans-serif;
        color: black;
        width:auto;
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
        font-size: 13px;
        padding-left:1vw;
    }
</style>



