


using BRL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;


        if (Session["UserId"] != null)

        {
            Response.Redirect("~/Default.aspx");
        }
    }


    protected void BtnLogin_Click(object sender, EventArgs e)
    {

        try
        {
            PanelMsg.Visible = false;
            string username = TxtUsername.Text.Trim();
            Usuario obj = UsuarioBRL.GetUsuarioByUsername(username);

            if (obj == null)

            {
                MsgLabel.Text = "user";
                PanelMsg.Visible = true;
                return;
            }

            string password = Utilities.Hash(TxtPassword.Text);

            //string password = TxtPassword.Text;
            if (!password.Equals(obj.Password))
            {

                MsgLabel.Text = "contraseña ";
                PanelMsg.Visible = true;
                return;
            }

            Session["UserId"] = obj.UserId;
            Response.Redirect("~/Default.aspx");



        }
        catch (Exception ex)
        {
            MsgLabel.Text = "Ocurrio un error al realizar la autenticacion ";
            PanelMsg.Visible = true;
        }
    }
} 