<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple JSP Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }
        .message {
            background-color: #e7f3ff;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
            border-left: 4px solid #2196F3;
        }
        .form-group {
            margin: 20px 0;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
        .info {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 5px;
            margin-top: 20px;
        }
        .info h3 {
            margin-top: 0;
            color: #555;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🌟 Simple JSP Web Application</h1>
        
        <div class="message">
            <h2>${message}</h2>
        </div>
        
        <form action="${pageContext.request.contextPath}/home" method="post">
            <div class="form-group">
                <label for="userName">Enter your name:</label>
                <input type="text" id="userName" name="userName" placeholder="Your name here...">
            </div>
            <button type="submit">Submit</button>
        </form>
        
        <div class="info">
            <h3>Application Information</h3>
            <p><strong>Current Time:</strong> ${currentTime}</p>
            <p><strong>Server:</strong> Apache Tomcat</p>
            <p><strong>Technology:</strong> Java Servlets + JSP</p>
            <p><strong>User Agent:</strong> ${userAgent}</p>
        </div>
        
        <div class="info">
            <h3>Available URLs</h3>
            <ul>
                <li><a href="${pageContext.request.contextPath}/home">Home Page (this page)</a></li>
                <li><a href="${pageContext.request.contextPath}/">Root Path</a></li>
            </ul>
        </div>
    </div>
</body>
</html>