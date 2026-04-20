<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Login — Winners Sports Academy</title>
<%@include file= "/common_files/common_css.html" %>
</head>
<body>
<%
String msg = (String)request.getAttribute("message");
%>

<div class="sa-topbar">
  <h1><i class="fas fa-shield-alt"></i> Winners Sports Academy</h1>
</div>
<%@ include file = "/common_files/common_header.html" %>

<div class="main_body">
<div class="sa-auth-page">
  <div class="sa-auth-card animate-in">
    <div class="auth-icon"><i class="fas fa-user-shield"></i></div>
    <h2>Admin Login</h2>
    <p class="auth-subtitle">Enter your credentials to access the admin panel</p>

    <% if(msg != null) { %>
    <div class="sa-alert sa-alert-danger" role="alert" style="margin-bottom:1.2rem">
      <strong><%= msg %></strong>
    </div>
    <% } %>

    <form method="post" action="/SportsAcademy/Admin_login">
      <div class="form-group" style="text-align:left;margin-bottom:1.2rem">
        <label class="form-label" style="color:var(--text-secondary)">Admin ID</label>
        <input type="text" class="form-control" name="admin_id" id="adminId" placeholder="Enter your ID" required>
      </div>
      <div class="form-group" style="text-align:left;margin-bottom:1.5rem">
        <label class="form-label" style="color:var(--text-secondary)">Password</label>
        <input type="password" class="form-control" name="admin_pass" id="adminPass" placeholder="Enter your password" required>
      </div>
      <button type="submit" class="sa-btn-primary w-100"><i class="fas fa-sign-in-alt"></i> Sign In</button>
    </form>
  </div>
</div>
</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>