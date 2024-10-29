<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - IT24 Company</title>
    <style>
        /* Body and background styling */
        body {
            font-family: Arial, sans-serif;
            background: url("../images/it24.png") no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333333;
        }

        /* Main container styling */
        .container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 350px;
        }

        /* Header styling */
        h1 {
            color: #4c5df2;
            font-size: 28px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Additional text */
        .subtitle {
            color: #4c4c4c;
            font-size: 16px;
            margin-bottom: 30px;
        }

        /* Form group styling */
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        /* Input fields */
        label {
            font-size: 14px;
            color: #555555;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #dddddd;
            border-radius: 5px;
            font-size: 14px;
        }

        /* Login button styling */
        .btn {
            background-color: #4c5df2;
            color: #ffffff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            font-weight: bold;
            margin-top: 10px;
        }
        .btn:hover {
            background-color: #3b4cb8;
        }

        /* Footer and link styling */
        .footer {
            margin-top: 20px;
            font-size: 12px;
            color: #888888;
        }
        .footer a {
            color: #4c5df2;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }

        /* Additional sections styling */
        .additional-links {
            margin-top: 15px;
        }
        .additional-links a {
            color: #4c5df2;
            font-size: 14px;
            text-decoration: none;
            display: block;
            margin-top: 5px;
        }
        .additional-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- Container for login box -->
    <div class="container">
        <h1>IT24 Login</h1>
        <p class="subtitle">Welcome back! Please sign in to access your account.</p>
        
        <!-- Login form -->
        <form action="loginServlet" method="POST">
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
        
        <!-- Additional links below the login button -->
        <div class="additional-links">
            <a href="#">Forgot Password?</a>
            <a href="#">Create an Account</a>
            <a href="#">Help & Support</a>
        </div>
        
        <!-- Footer section -->
        <div class="footer">
            <p>© 2024 IT24 Company</p>
            <a href="https://www.it24.com/privacy">Privacy Policy</a> | 
            <a href="https://www.it24.com/terms">Terms of Service</a>
        </div>
    </div>
</body>
</html>
