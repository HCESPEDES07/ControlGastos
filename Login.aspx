<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<html >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body class="text-center">
    <form id="form1" runat="server" class="form-signin">
        <div class="container">
            <div class ="row">
                <div class="col-md-3 offset-md-5">

                   
                   
 <img class="mb-4" src="https://images.emojiterra.com/google/android-pie/512px/1f4b5.png" alt="" width="150" height="150">

                  
             
  <h1 class="h3 mb-3 font-weight-normal">Ingresar</h1>
                   
                    
                    <asp:Panel ID="PanelMsg" runat="server" Visible="false" Cssclass ="alert alert-danger  mt-2 mb-2"  role="alert">
                        <asp:Literal ID="MsgLabel" runat="server"></asp:Literal>
                        </asp:Panel>
                 
                    
                    

  <label for="inputEmail" class="sr-only">Usuario</label>
  <asp:TextBox ID="TxtUsername" runat="server" Cssclass="form-control" placeholder="Nombre de Usuario" />

                    <asp:RequiredFieldValidator  runat="server"  ControlToValidate="TxtUsername"  Display="Dynamic"  CssClass="error"
                        ErrorMessage="Debe ingresar su nombre de Usuario"></asp:RequiredFieldValidator>

                   
             
  <label for="inputPassword" class="sr-only">Contraseña</label>

  <asp:TextBox  ID="TxtPassword" runat="server" CssClass="form-control" placeholder="Contraseña"  TextMode="Password"/>

                    <asp:RequiredFieldValidator  runat="server"  ControlToValidate="TxtPassword"  Display="Dynamic"
                        CssClass="error"
                        ErrorMessage="Debe ingresar su  Contraseña"></asp:RequiredFieldValidator>
  
                   

  <asp:LinkButton Cssclass="btn btn-lg btn-primary btn-block" ID="BtnLogin" OnClick="BtnLogin_Click" runat="server" >Login</asp:LinkButton>
  <p class="mt-5 mb-3 text-muted">&copy; Hilton Cespedes Rivero</p>
                    </div>
                </div>
             </div>
    </form>
   
</body>
</html>
