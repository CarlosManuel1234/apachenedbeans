<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            background-color: #343a40;
            color: #ffffff;
            height: 100vh;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }
        .navbar {
            background-color: #212529;
        }
        .navbar-toggler {
            border: none;
        }
        .navbar-toggler-icon {
            background-color: #ffffff;
        }
        .navbar-nav .nav-link {
            color: #ffffff;
        }
        .dropdown-menu {
            background-color: #212529;
            color: #ffffff;
        }
        .dropdown-item {
            color: #ffffff;
        }
        .dropdown-item:hover {
            background-color: #495057;
        }
        .container {
            background-color: #495057;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
        h1 {
            color: #ffffff;
        }
        .dropdown-item img {
            border-radius: 50%;
        }
    </style>
</head>             
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Inicio</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Cerrar Sesión
                    </a>
                    <ul class="dropdown-menu text-center" aria-labelledby="navbarDropdown">
                        <li><a><img src="${pageContext.request.contextPath}/img/user.png" height="80" width="80" alt="User Image"></a></li>
                        <li><a class="dropdown-item">${nom}</a></li>
                        <li><a class="dropdown-item">${correo}</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <a href="Controlador?accion=Salir" class="dropdown-item">Salir</a>
                        <a href="Controlador?accion=eliminar" class="dropdown-item">Informacion del Usuario</a>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container mt-4">
        <h1>Bienvenido al Sistema... <strong>Usuario: ${nom}</strong></h1>
    </div>       
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
