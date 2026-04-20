<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Member Login — Winners Sports Academy</title>
<%@include file= "/common_files/common_css.html" %>
</head>
<body>
<%
String userId = "";
String userpass = "";
Cookie[] cookie = request.getCookies();

if(cookie != null && cookie.length > 1)
{
    String data = "";
    for(Cookie c : cookie)
    {
        String name = c.getName();
        if(name.equalsIgnoreCase("userCookie"))
        {
            data = c.getValue();
            break;
        }
    }
    if(!data.isEmpty()) {
        String[] userinfo = data.split("#");
        userId = userinfo[0];
        userpass = userinfo[1];
    }
}

String msg = (String)request.getAttribute("message");
%>

<div class="sa-topbar">
  <h1><i class="fas fa-trophy"></i> Winners Sports Academy</h1>
</div>
<%@ include file="/common_files/common_header.html" %>

<div class="main_body">
<div class="sa-auth-page">
  <div class="sa-auth-card animate-in">
    <div class="auth-icon"><i class="fas fa-user"></i></div>
    <h2>Member Login</h2>
    <p class="auth-subtitle">Sign in to access your member dashboard</p>

    <% if(msg != null) { %>
    <div class="sa-alert sa-alert-danger" role="alert" style="margin-bottom:1.2rem">
      <strong><%= msg %></strong>
    </div>
    <% } %>

    <form method="post" action="/SportsAcademy/Member_login">
      <div class="form-group" style="text-align:left;margin-bottom:1.2rem">
        <label class="form-label" style="color:var(--text-secondary)">Member ID</label>
        <input type="text" class="form-control" name="member_id" id="memberId" value="<%= userId %>" placeholder="Enter your ID" required>
      </div>
      <div class="form-group" style="text-align:left;margin-bottom:1rem">
        <label class="form-label" style="color:var(--text-secondary)">Password</label>
        <input type="password" class="form-control" name="member_pass" id="memberPass" value="<%= userpass %>" placeholder="Enter your password" required>
      </div>
      <div style="text-align:left;margin-bottom:1.5rem">
        <label style="color:var(--text-secondary);font-size:0.9rem;cursor:pointer">
          <input type="checkbox" name="chkcookie" value="yes" style="margin-right:6px"> Remember me
        </label>
      </div>
      <button type="submit" class="sa-btn-primary w-100"><i class="fas fa-sign-in-alt"></i> Sign In</button>
    </form>
    <div style="margin-top:1.2rem">
      <a href="/SportsAcademy/member/Registration.jsp" style="font-size:0.9rem">
        <i class="fas fa-user-plus"></i> New member? Sign up here
      </a>
    </div>
  </div>
</div>
</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>