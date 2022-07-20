using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace universidadUH
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string buttonId = button.ID;
            // Si lleno todos los campos
            if (
                Nombre.Text.Length > 0 && 
                Cedula.Text.Length > 0 && 
                telefono.Text.Length > 0 && 
                Direccion.Text.Length > 0
                )
            {
                Cliente cliente = new Cliente(Nombre.Text, Cedula.Text, Direccion.Text, telefono.Text);
                //Cliente.Setnombre(Nombre.Text);
                //Cliente.Setcedula(Cedula.Text);
                //Cliente.Setdireccion(Direccion.Text);
                //Cliente.Settelefono(Telefono.Text);
                Random rd = new Random();
                int factura = rd.Next(100000, 999999);
                Cliente.Setsubtotal(factura);

                if (buttonId == "Electricidadbt") {
                    Cliente.SetServicioID(1);
                }
                if (buttonId == "Aguabt")
                {
                    Cliente.SetServicioID(2);
                }
                if (buttonId == "Cablebt")
                {
                    Cliente.SetServicioID(3);
                }
                if (buttonId == "Telefonobt")
                {
                    Cliente.SetServicioID(4);
                }

                Response.Redirect("menu.aspx");

                /*
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["UHUNIVERSIDADConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                try
                {

                    conexion.Open();
                    SqlCommand comando = new SqlCommand("select Nombre, clave from usuario  " +
                        "where nombre =  '" + ClsUsuario.GetNombre() + "'   and clave = '" + ClsUsuario.GetClave() + "'", conexion);
                    SqlDataReader registro = comando.ExecuteReader();
                    if (registro.Read())
                    {
                        Response.Redirect("menu.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario no existe');", true);
                    }
                }
                catch (Exception)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Revisar la conexion');", true);
                }
                finally
                {
                    conexion.Close();
                }
                */
            }
            // Sino lleno todos los campos
            else
            {
                // Porfavor llene todos los campos
                //Response.Redirect("ErrorPage.aspx");
            }

        }

        protected void tusuario_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
