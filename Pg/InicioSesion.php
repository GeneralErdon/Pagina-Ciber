<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesion</title>
    <link rel="stylesheet" href="../Libs/bootstrap.css">
    <link rel="stylesheet" href="../Libs/Estilo.css">
</head>
<body>
    <nav class="navbar navbar-dark navbar-expand-lg navbar-expand-md bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">
              <img src="../Images/NavIcon.jpg" alt="" class="i navbar-toggler-icon">
          </a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
  
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link active" aria-current="page" href="../Index.html">Home</a>
              <a
                class="nav-link"
                href="#"
                
                >Servicios</a>
              <a
                class="nav-link"
                href="#"
                
                >Contáctenos</a>

              <a class="nav-link" href="../Pg/InicioSesion.php">Inicio de Sesión</a>
              <a class="nav-link" href="Registro.html">Registrarse</a>
            </div>
          </div>
        </div>
      </nav>
      
      <div class="container">
          <div class="row">
          <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4 bg-gradient text-light mg-form">
        <h1>Inicia Sesión</h1>
        <form action="../Libs/validar.php" method="post" class="py-3" id="form_InicioSesion">
            <div class="mb-3">
  
              <label for="user" class="form-label">Ingrese el Usuario</label>
              <input type="text" class="form-control" id="user" name="user" />
  
            </div>
            
            <div class="mb-3">

                <label for="password" class="form-label">Ingrese la Contraseña</label>
                <input type="password" class="form-control" name="password" id="password" />
            </div>
            
            <div class="mb-3">
                <button class="btn-success" type="submit">Iniciar Sesion</button>
            </div>
            
  
          </form>
    </div>
      </div>
      </div>
      
      



      <!-- <footer class="footer card-footer bg-dark text-light">
        <h2>Autores</h2>
        <p>Leandro Fermín</p>
        <p>Giancarlo Tedesco</p>
        <h2>Correos</h2>
        <p>leandrofermin@gmail.com</p>
        <p>giancarlotedesco11@gmail.com</p>
        
    </footer> -->




    <script src="../Libs/jquery-3.6.0.js"></script>
    <script src="../Libs/jquery-validate.js"></script>
    <script src="../Libs/Validate-Form.js"></script>
    <script src="../Libs/bootstrap.js"></script>
    <script src="../Libs/bootstrap.bundle.js"></script>
    <script src="../Libs/Traducciones.js"></script>
</body>
</html>