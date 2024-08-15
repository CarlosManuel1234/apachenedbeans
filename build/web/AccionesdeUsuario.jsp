<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <title>Inicio</title>
    
    <style>
        body {
            background-color: #343a40;
            color: #ffffff;
            height: 100vh;
            margin: 0;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background-color: #495057;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            width: 80%;
            max-width: 900px;
        }
        h1 {
            color: #ffffff;
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #dee2e6;
        }
        th {
            background-color: #212529;
        }
        a {
            color: #ffffff;
            text-decoration: none;
            background-color: #007bff;
            padding: 5px 10px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #0056b3;
        }
        .message {
            background-color: #28a745;
            padding: 10px;
            border-radius: 4px;
            margin-bottom: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>USUARIO</h1>
        <c:if test="${not empty mensaje}">
            <div class="message">${mensaje}</div>
        </c:if>
        <table>
            <thead>
                <tr>
                    <th>Nombres</th>
                    <th>Correo</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="persona" items="${lista}">
                    <tr>
                        <td><c:out value="${persona.nom}"/></td>
                        <td><c:out value="${persona.correo}"/></td>
                        <td><a href="Controlador?accion=modificar&id=<c:out value='${persona.id}'/>">Modificar</a></td>
                        <td><a href="Controlador?accion=eliminado&id=<c:out value='${persona.id}'/>">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
