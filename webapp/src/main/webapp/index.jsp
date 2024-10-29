<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - IT24 Company</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanwOsF41B4qK1RHt3gPeOUO/Pb9so+M56JXTYqIHj4YphP4yn2H1xA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url("../../images/it24.png") no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333333;
        }
        
        /* Container Styling */
        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 350px;
            animation: fadeIn 1s ease;
        }
        
        /* Title Styling */
        h1 {
            color: #4c5df2;
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .title-icon {
            font-size: 32px;
            color: #4c5df2;
            margin-bottom: 10px;
        }

        /* Subtitle Styling */
        p {
            color: #666666;
            margin-bottom: 30px;
            font-size: 16px;
        }

        /* Form Group Styling */
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }
        
        /* Label Styling */
        label {
            font-size: 14px;
            color: #555555;
            display: block;
            margin-bottom: 5px;
        }
        
        /* Input Styling */
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-top: 5px;
            border: 1px solid #dddddd;
            border-radius: 8px;
            font-size: 14px;
            box-sizing: border-box;
        }
        
        /* Button Styling */
        .btn {
            background-color: #4c5df2;
            color: #ffffff;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        
        .btn:hover {
            background-color: #3b4cb8;
        }

        /* Footer Styling */
        .footer {
            margin-top: 20px;
            font-size: 12px;
            color: #888888;
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Input Focus */
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #4c5df2;
            outline: none;
            box-shadow: 0 0 8px rgba(76, 93, 242, 0.3);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="title-icon">
            <i class="fas fa-user-shield"></i>
        </div>
        <h1>IT24 Login</h1>
        <p>Welcome! Please sign in to access your account.</p>
        <form action="loginServlet" method="POST">
            <div class="form-group">
                <label for="username"><i class="fas fa-user"></i> Username</label>
                <input type="text" id="username" name="username" required placeholder="Enter your username">
            </div>
            <div class="form-group">
                <label for="password"><i class="fas fa-lock"></i> Password</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password">
            </div>
            <button type="submit" class="btn"><i class="fas fa-sign-in-alt"></i> Login</button>
        </form>
        <div class="footer">
            <p>© 2024 IT24 Company. All rights reserved.</p>
        </div>
    </div>
</body>
</html>
