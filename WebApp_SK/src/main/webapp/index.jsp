<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome | MyApp</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .container {
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(10px);
      border: 1px solid rgba(255, 255, 255, 0.1);
      border-radius: 20px;
      padding: 60px 50px;
      text-align: center;
      max-width: 480px;
      width: 90%;
      box-shadow: 0 25px 50px rgba(0,0,0,0.4);
    }
    .logo {
      font-size: 48px;
      margin-bottom: 16px;
    }
    h1 {
      color: #ffffff;
      font-size: 2rem;
      font-weight: 700;
      margin-bottom: 10px;
      letter-spacing: -0.5px;
    }
    p {
      color: rgba(255,255,255,0.6);
      font-size: 1rem;
      margin-bottom: 36px;
      line-height: 1.6;
    }
    .btn {
      display: inline-block;
      padding: 14px 36px;
      background: linear-gradient(90deg, #e94560, #0f3460);
      color: #fff;
      text-decoration: none;
      border-radius: 50px;
      font-size: 1rem;
      font-weight: 600;
      letter-spacing: 0.5px;
      transition: transform 0.2s ease, box-shadow 0.2s ease;
      box-shadow: 0 8px 20px rgba(233, 69, 96, 0.35);
    }
    .btn:hover {
      transform: translateY(-2px);
      box-shadow: 0 12px 28px rgba(233, 69, 96, 0.5);
    }
    .footer {
      margin-top: 40px;
      color: rgba(255,255,255,0.3);
      font-size: 0.78rem;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="logo">&#127968;</div>
    <h1>Hello, Shubham!</h1>
    <p>Welcome to MyApp. Click below to access your personalised home dashboard with your profile and activity details.</p>
    <a href="home.jsp" class="btn">Go to My Home &rarr;</a>
    <div class="footer">&copy; 2025 MyApp &mdash; All rights reserved</div>
  </div>
</body>
</html>
