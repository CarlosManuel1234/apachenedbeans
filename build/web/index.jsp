<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                margin: 0;
                padding: 0;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: flex-start;
            }
            .header-title {
                font-size: 5rem; 
                font-weight: bold;
                color: #f8f9fa; 
                text-align: center;
                text-transform: uppercase; 
                letter-spacing: 0.2rem; 
                margin-top: 2rem; 
                margin-bottom: 3rem; 
                background: linear-gradient(135deg, #6c757d, #495057);
                padding: 1rem 2rem; 
                border-radius: 8px; 
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3); 
                border: 2px solid #ffffff; 
                width: 80%; 
                max-width: 1200px; 
            }
            .container {
                background-color: #495057; 
                border-radius: 8px; 
                padding: 2rem; 
                width: 100%;
                max-width: 1900px; 
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
            }
        </style>
    </head>
    <body>
        <div class="header-title">Tienda Shopy</div> 
       <div class="container text-center container-fluid">
            <div class="row">
              <div class="col">
              </div>            
              <div class="col">
                  <br>
                 <h2 class=" text-center container">¡Rellena el formulario!</h2>
                 <form action="Controlador"> 
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Nombres</label>
                        <div class="col-sm-10">
                            <input type="text" name="txtnombre" class="form-control form-control-sm" id="colFormLabelSm" placeholder="Nombres">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabel" class="col-sm-2 col-form-label-sm">Email</label>
                        <div class="col-sm-10">
                            <input type="email" name="txtemail" class="form-control form-control-sm" id="colFormLabelSm" placeholder="E-Mail">
                        </div>
                    </div>
                     <br>     
                     <input type="submit" class="btn btn-danger" name="accion" value="Ingresar">                  
                   </form>
                 <br>
                   <a href="Usuarionuevo.jsp" class="btn btn-light bg-dark text-white">Registrarse</a>
                </div>           
              <div class="col">            
              </div>
            </div>
        </div>    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
