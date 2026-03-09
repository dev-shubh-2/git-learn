<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime, java.time.format.DateTimeFormatter" %>
<%
  // Simulated client data — replace with DB/session lookups in production
  String clientName     = "Shubham Kumar";
  String clientId       = "USR-2024-0042";
  String clientEmail    = "shubham.kumar@example.com";
  String clientPhone    = "+1 (416) 555-0198";
  String memberSince    = "March 12, 2021";
  String accountType    = "Premium";

  // Simulated last-login info
  String lastLoginDate  = "March 08, 2025  &nbsp;|&nbsp;  09:42 AM EST";
  String lastLoginIP    = "192.168.1.101";
  String lastLoginLoc   = "Toronto, ON, Canada";
  String lastLoginDevice = "Chrome 122 &mdash; Windows 11";

  // Current session timestamp
  DateTimeFormatter fmt = DateTimeFormatter.ofPattern("MMMM dd, yyyy  hh:mm a");
  String currentLogin   = LocalDateTime.now().format(fmt) + " EST";
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home | MyApp</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
      min-height: 100vh;
      padding: 40px 20px;
      color: #fff;
    }

    /* ── TOP NAV ── */
    .nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      max-width: 900px;
      margin: 0 auto 36px;
    }
    .nav .brand { font-size: 1.3rem; font-weight: 700; color: #e94560; }
    .nav a {
      color: rgba(255,255,255,0.6);
      text-decoration: none;
      font-size: 0.9rem;
      transition: color 0.2s;
    }
    .nav a:hover { color: #e94560; }

    /* ── WELCOME BANNER ── */
    .banner {
      max-width: 900px;
      margin: 0 auto 28px;
      background: linear-gradient(90deg, #e94560 0%, #0f3460 100%);
      border-radius: 16px;
      padding: 28px 36px;
      display: flex;
      align-items: center;
      gap: 20px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.3);
    }
    .avatar {
      width: 68px; height: 68px;
      border-radius: 50%;
      background: rgba(255,255,255,0.2);
      display: flex; align-items: center; justify-content: center;
      font-size: 2rem;
      flex-shrink: 0;
    }
    .banner-text h2 { font-size: 1.5rem; font-weight: 700; margin-bottom: 4px; }
    .banner-text p  { font-size: 0.9rem; opacity: 0.85; }
    .badge {
      margin-left: auto;
      background: rgba(255,255,255,0.15);
      border: 1px solid rgba(255,255,255,0.3);
      border-radius: 50px;
      padding: 6px 18px;
      font-size: 0.8rem;
      font-weight: 600;
      white-space: nowrap;
    }

    /* ── CARD GRID ── */
    .grid {
      max-width: 900px;
      margin: 0 auto;
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 22px;
    }
    @media(max-width: 620px) { .grid { grid-template-columns: 1fr; } }

    .card {
      background: rgba(255,255,255,0.05);
      border: 1px solid rgba(255,255,255,0.1);
      border-radius: 16px;
      padding: 28px;
      backdrop-filter: blur(8px);
      box-shadow: 0 8px 24px rgba(0,0,0,0.2);
      transition: transform 0.2s;
    }
    .card:hover { transform: translateY(-3px); }

    .card-header {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-bottom: 20px;
      padding-bottom: 14px;
      border-bottom: 1px solid rgba(255,255,255,0.08);
    }
    .card-icon {
      width: 40px; height: 40px;
      border-radius: 10px;
      display: flex; align-items: center; justify-content: center;
      font-size: 1.2rem;
    }
    .icon-blue   { background: rgba(99,179,237,0.15); }
    .icon-green  { background: rgba(72,187,120,0.15); }
    .icon-red    { background: rgba(233,69,96,0.15); }
    .icon-purple { background: rgba(159,122,234,0.15); }

    .card-header h3 { font-size: 1rem; font-weight: 600; color: rgba(255,255,255,0.9); }

    .info-row {
      display: flex;
      justify-content: space-between;
      padding: 8px 0;
      border-bottom: 1px solid rgba(255,255,255,0.05);
      font-size: 0.875rem;
    }
    .info-row:last-child { border-bottom: none; }
    .label  { color: rgba(255,255,255,0.45); }
    .value  { color: rgba(255,255,255,0.9); font-weight: 500; text-align: right; max-width: 58%; }

    .status-dot {
      display: inline-block;
      width: 8px; height: 8px;
      border-radius: 50%;
      background: #48bb78;
      margin-right: 6px;
      animation: pulse 1.8s infinite;
    }
    @keyframes pulse {
      0%,100% { opacity:1; } 50% { opacity:0.4; }
    }

    /* ── CURRENT SESSION FULL-WIDTH ── */
    .card-full {
      grid-column: 1 / -1;
    }

    .footer {
      max-width: 900px;
      margin: 28px auto 0;
      text-align: center;
      color: rgba(255,255,255,0.25);
      font-size: 0.78rem;
    }
  </style>
</head>
<body>

  <!-- NAV -->
  <nav class="nav">
    <span class="brand">&#127968; MyApp</span>
    <a href="index.jsp">&larr; Back to Landing</a>
  </nav>

  <!-- WELCOME BANNER -->
  <div class="banner">
    <div class="avatar">&#128100;</div>
    <div class="banner-text">
      <h2>Welcome back, <%= clientName %>!</h2>
      <p><span class="status-dot"></span>Active session &mdash; <%= currentLogin %></p>
    </div>
    <div class="badge">&#11088; <%= accountType %></div>
  </div>

  <!-- CARD GRID -->
  <div class="grid">

    <!-- Personal Info -->
    <div class="card">
      <div class="card-header">
        <div class="card-icon icon-blue">&#128100;</div>
        <h3>Personal Information</h3>
      </div>
      <div class="info-row"><span class="label">Full Name</span>   <span class="value"><%= clientName %></span></div>
      <div class="info-row"><span class="label">Client ID</span>    <span class="value"><%= clientId %></span></div>
      <div class="info-row"><span class="label">Email</span>        <span class="value"><%= clientEmail %></span></div>
      <div class="info-row"><span class="label">Phone</span>        <span class="value"><%= clientPhone %></span></div>
      <div class="info-row"><span class="label">Member Since</span> <span class="value"><%= memberSince %></span></div>
    </div>

    <!-- Last Login -->
    <div class="card">
      <div class="card-header">
        <div class="card-icon icon-red">&#128274;</div>
        <h3>Last Login Activity</h3>
      </div>
      <div class="info-row"><span class="label">Date &amp; Time</span> <span class="value"><%= lastLoginDate %></span></div>
      <div class="info-row"><span class="label">IP Address</span>   <span class="value"><%= lastLoginIP %></span></div>
      <div class="info-row"><span class="label">Location</span>     <span class="value"><%= lastLoginLoc %></span></div>
      <div class="info-row"><span class="label">Device</span>       <span class="value"><%= lastLoginDevice %></span></div>
    </div>

    <!-- Current Session -->
    <div class="card card-full">
      <div class="card-header">
        <div class="card-icon icon-green">&#9889;</div>
        <h3>Current Session</h3>
      </div>
      <div class="info-row"><span class="label">Logged In At</span>   <span class="value"><%= currentLogin %></span></div>
      <div class="info-row"><span class="label">Account Type</span>   <span class="value"><%= accountType %></span></div>
      <div class="info-row"><span class="label">Session Status</span> <span class="value"><span class="status-dot"></span>Active &amp; Secure</span></div>
    </div>

  </div>

  <div class="footer">&copy; 2025 MyApp &mdash; All rights reserved</div>

</body>
</html>
