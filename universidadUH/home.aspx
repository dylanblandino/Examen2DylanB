<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="universidadUH.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pagina de Estudiantes UH</title>
		<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
   
	<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form  class="login100-form validate-form" runat="server">
				<span class="login100-form-title p-b-37">
					Formulario 1
				</span>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Nombre">
					
					<asp:TextBox ID="Nombre" placeholder="Nombre" class="input100" runat="server" OnTextChanged="tusuario_TextChanged"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Cedula">
					
					<asp:TextBox ID="Cedula" placeholder="Cedula" class="input100" runat="server" OnTextChanged="tusuario_TextChanged"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Teléfono">
					
					<asp:TextBox ID="telefono" placeholder="Teléfono" class="input100" runat="server" OnTextChanged="tusuario_TextChanged"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Dirección">
					
					<asp:TextBox ID="Direccion" placeholder="Dirección" class="input100" runat="server" OnTextChanged="tusuario_TextChanged"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>


				<div class="container-login100-form-btn">					
					<asp:Button class="login100-form-btn" ID="Electricidadbt" runat="server" Text="Electricidad" OnClick="bingresar_Click" />
					<!img src="./images/Electricidad.png"> 
				</div>

				<div class="container-login100-form-btn">					
					<asp:Button class="login100-form-btn" ID="Aguabt" runat="server" Text="Agua" OnClick="bingresar_Click" />
				</div>

				<div class="container-login100-form-btn">
					<asp:Button class="login100-form-btn" ID="Cablebt"  runat="server" Text="Cable" OnClick="bingresar_Click" />
				</div>

				<div class="container-login100-form-btn">
					<asp:Button class="login100-form-btn" ID="Telefonobt" runat="server" Text="Telefono" OnClick="bingresar_Click" />
				</div>
				
			</form>

			
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>
