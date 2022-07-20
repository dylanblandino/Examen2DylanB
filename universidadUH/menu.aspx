<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="universidadUH.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulario 2</title>
    <link rel="stylesheet" type="text/css" href="css/MenuEstilos.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
<ul>
  <li><a href="#seccion1">Facturacion</a></li>
  <li><a href="#seccion2">Datos del Cliente</a></li>
  <li><a href="#seccion3">Seccion 3</a></li>
</ul>
        </div>
    <p>
        &nbsp;</p>

        <div id ="seccion1">

            <h1>Facturacion</h1>
        <p>
        Bienvenido :&nbsp;
        <asp:Label ID="Nombre" runat="server" Font-Size="X-Large"></asp:Label>
        </p>

         <p>
        <asp:Label ID="FacturaID" runat="server" Text="Numero de Factura"></asp:Label>
        </p>
        <p>
        <asp:Label ID="ServicioID" runat="server" Text="Codigo Servicio"></asp:Label>
        </p>
         <p>
        <asp:Label ID="Mes" runat="server" Text="Mes a Facturar"></asp:Label>
        </p>
        <p>
        <asp:Label ID="Monto" runat="server" Text="Monto"></asp:Label>
        </p>
         <p>
        <asp:Label ID="Descuento" runat="server" Text="Descuento"></asp:Label>
        </p>
        </div>

  
                <div class="container-login100-form-btn">					
					<asp:Button class=" button button1 login100-form-btn" ID="Agregar" runat="server" Text="Agregar" OnClick="Agregar_Click" />
				</div>

				<div class="container-login100-form-btn">
					<asp:Button class=" button button1 login100-form-btn" ID="Salvar"  runat="server" Text="Salvar" OnClick="Salvar_Click" />
				</div>

				<div class="container-login100-form-btn">
					<asp:Button class="button button1 login100-form-btn" ID="Volver" runat="server" Text="Volver" OnClick="Volver_Click" />
				</div>
				
			</form>

    <div id ="seccion2">
        <h1>Datos del Cliente</h1>
         <p>
        <h3>Nombre Cliente: </h3>
        <asp:Label ID="NombreCliente" runat="server" Text="Nombre Cliente"></asp:Label>
        </p>
         <p>
         <h3>Cedula Cliente: </h3>
        <asp:Label ID="CedulaCliente" runat="server" Text="Cedula Cliente"></asp:Label>
        </p>
         <p>
             <h3>Telefono Cliente: </h3>
        <asp:Label ID="TelefonoCliente" runat="server" Text="Telefono Cliente"></asp:Label>
        </p>
         <p>
             <h3>Direccion Cliente: </h3>
        <asp:Label ID="DireccionCliente" runat="server" Text="Direccion Cliente"></asp:Label>
        </p>
    </div>

    <div id ="seccion3">
        <h1>Seccion 3</h1>
    </div>

    <footer>  Derechos reservados 2022 UH </footer>
</body>

  
</html>
