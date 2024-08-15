<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <style>
            body {
                background-color: #343a40;
                color: #ffffff;
                height: 100vh;
            }
        </style>
    </head>
    <body>
        <div class="container text-center container-fluid">
            <div class="row">
              <div class="col">
              </div>
                <div class="col">
                  <br>
                  <h2>¡Actualizar Datos!</h2>
                  <form action="Controlador" method="POST" autocomplete="off"> 
                    <div class="row mb-3">
                        <h1>${nom}</h1>
                        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Nombres</label>
                        <div class="col-sm-10">
                            <input type="text" name="nom" class="form-control form-control-sm" id="colFormLabelSm" value="<c:out value="${persona.nom}"/>">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabel" class="col-sm-2 col-form-label-sm">Email</label>
                        <div class="col-sm-10">
                            <input type="email" name="txtemail" class="form-control form-control-sm" id="colFormLabelSm" placeholder="E-Mail">
                        </div>
                    </div>
                     <br>
                     <input type="submit" class="btn btn-danger" name="accion" value="gurdaPersona">               
                 </form>
                  <br>          
                </div>      
              <div class="col">
              </div>          
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
