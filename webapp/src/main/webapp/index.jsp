<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT24 Authentication</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("your_background_image.jpg") no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333333;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 350px;
        }
        .tabs {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }
        .tab {
            font-weight: bold;
            padding: 10px;
            cursor: pointer;
            transition: background 0.3s, color 0.3s;
            color: #555555;
        }
        .tab:hover, .tab.active {
            background-color: #4c5df2;
            color: #ffffff;
            border-radius: 5px;
        }
        h1 {
            color: #4c5df2;
            font-size: 28px;
            margin-bottom: 20px;
            font-weight: bold;
        }
        p {
            color: #666666;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        label {
            font-size: 14px;
            color: #555555;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-top: 5px;
            border: 1px solid #dddddd;
            border-radius: 5px;
            font-size: 14px;
        }
        .btn {
            background-color: #4c5df2;
            color: #ffffff;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background 0.3s;
        }
        .btn:hover {
            background-color: #3b4cb8;
        }
        .footer {
            margin-top: 20px;
            font-size: 12px;
            color: #888888;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Tabs -->
        <div class="tabs">
            <div class="tab active" onclick="showForm('login')">Login</div>
            <div class="tab" onclick="showForm('signup')">Sign Up</div>
            <div class="tab" onclick="showForm('forgot')">Forgot Password</div>
        </div>

        <!-- Form Header -->
        <h1>Welcome to IT24</h1>
        <p>Please sign in to continue.</p>

        <!-- Login Form -->
        <form id="loginForm" action="loginServlet" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="btn">Login</button>
        </form>

        <!-- Sign Up Form (Hidden by default) -->
        <form id="signupForm" action="signupServlet" method="POST" style="display: none;">
            <div class="form-group">
                <label for="newUsername">Username</label>
                <input type="text" id="newUsername" name="newUsername" required>
            </div>
            <div class="form-group">
                <label for="newPassword">Password</label>
                <input type="password" id="newPassword" name="newPassword" required>
            </div>
            <button type="submit" class="btn">Sign Up</button>
        </form>

        <!-- Forgot Password Form (Hidden by default) -->
        <form id="forgotForm" action="forgotPasswordServlet" method="POST" style="display: none;">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" id="email" name="email" required>
            </div>
            <button type="submit" class="btn">Reset Password</button>
        </form>

        <div class="footer">
            <p>© 2024 IT24 Company</p>
        </div>
    </div>

    <script>
        function showForm(form) {
            document.getElementById("loginForm").style.display = "none";
            document.getElementById("signupForm").style.display = "none";
            document.getElementById("forgotForm").style.display = "none";

            document.querySelectorAll('.tab').forEach(tab => tab.classList.remove('active'));
            document.querySelector(`.tab[onclick="showForm('${form}')"]`).classList.add('active');
            
            document.getElementById(form + "Form").style.display = "block";
        }
    </script>
</body>
</html>
