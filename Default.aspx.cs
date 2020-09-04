using System;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }

    protected void Boton_Click(object sender, EventArgs e)
    {
        Etiqueta.Text = "Hola  " + Utilities.Hash("admin");
    }





  
}