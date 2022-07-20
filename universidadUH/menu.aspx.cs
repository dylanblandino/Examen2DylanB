using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace universidadUH
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            Nombre.Text = ClsUsuario.GetNombre();
            */
            Random rd = new Random();
            int factura = (int)Cliente.GetSubtotal();
            Cliente.Setsubtotal(Cliente.GetSubtotal() + 1);
            Nombre.Text = Cliente.GetNombre();
            FacturaID.Text = "Numero de Factura: " + factura.ToString();
            ServicioID.Text = "Codigo de Servicio: " + Cliente.GetServicioID().ToString();
            Mes.Text = "Mes de Facturacion: Julio";
            int monto = rd.Next(0000, 9999);
            Monto.Text = "Monto a pagar: " + monto.ToString() + "$";
            int descuento = rd.Next(0, 100);
            int aux = monto * descuento / 100;
            Descuento.Text = "Descuento: " + descuento.ToString() + "% ("+aux.ToString()+"$)";

            NombreCliente.Text = Cliente.GetNombre();
            CedulaCliente.Text = Cliente.GetCedula();
            TelefonoCliente.Text = Cliente.GetTelefono();
            DireccionCliente.Text = Cliente.GetDireccion();
        }
        protected void Salvar_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["EXAMEN2DBConnectionString"].ConnectionString;
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
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            
        }

        protected void Volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}