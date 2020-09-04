<%@ Title="Pagina Principal"   Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master"%>



<asp:Content ContentPlaceHolderID="content" runat="server">


        <h1>
            PANEL DE CONTROL

        </h1>
                  Ingrese su nombre :<br/>
      <asp:TextBox ID="TextField" runat="server"></asp:TextBox>
        <h1>
        <asp:Label ID="Etiqueta" runat="server" Text=""></asp:Label>
        </h1>
        <h1>
            <asp:Button ID="Boton" runat="server"  Text="Presionar" OnClick="Boton_Click"/>
        </h1>

        
</asp:Content>
