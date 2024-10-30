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
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('5096160.jpg'); /* Ensure the path is correct */
            background-size: cover;
            color: #507475;
        }

        /* Main container styling */
        .container {
            display: flex;
            width: 800px;
            height: 400px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            overflow: hidden;
        }

        /* Left side (form) styling */
        .left-section {
            background-color: #f7f7f7;
            padding: 50px;
            width: 50%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .left-section h1 {
            font-size: 24px;
            font-weight: bold;
            color: #4c4c4c;
            margin-bottom: 10px;
        }

        .left-section p {
            font-size: 14px;
            color: #7a7a7a;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
            width: 100%;
            position: relative;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #dddddd;
            border-radius: 25px;
            font-size: 14px;
            padding-left: 40px;
        }

        .form-group input::placeholder {
            color: #b3b3b3;
        }

        /* Input icons */
        .form-group .icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #b3b3b3;
        }

        /* Login button styling */
        .btn {
            background-color: #6a0dad;
            color: #ffffff;
            padding: 10px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            font-weight: bold;
            margin-top: 10px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #570b94;
        }

        /* Checkbox styling */
        .remember-me {
            display: flex;
            align-items: center;
            font-size: 12px;
            color: #7a7a7a;
        }

        /* Right side styling */
        .right-section {
            width: 50%;
            background-color: #6a0dad;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 40px;
        }

        .right-section h2 {
            font-size: 26px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .right-section p {
            font-size: 14px;
            text-align: center;
            line-height: 1.6;
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <!-- Main container with two sections -->
    <div class="container">
        
        <!-- Left section for the login form -->
        <div class="left-section">
            <h1>Hello!</h1>
            <p>Sign in by your account</p>
            <form action="loginServlet" method="POST">
                <div class="form-group">
                    <input type="text" id="username" name="username" placeholder="User Name" required>
                    <span class="icon">👤</span>
                </div>
                <div class="form-group">
                    <input type="password" id="password" name="password" placeholder="Password" required>
                    <span class="icon">🔒</span>
                </div>
                <div class="remember-me">
                    <input type="checkbox" id="remember-me" name="remember-me">
                    <label for="remember-me">Remember Me</label>
                </div>
                <button type="submit" class="btn">Sign In</button>
            </form>
        </div>
        
        <!-- Right section for welcome message -->
        <div class="right-section">
            <h2>Welcome Back To IT24 Portal</h2>
        </div>

    </div>
</body>
</html>
