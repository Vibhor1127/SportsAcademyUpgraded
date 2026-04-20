<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard — Winners Sports Academy</title>
<%@include file= "/common_files/common_css.html" %>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader("Expires", 0);
%>
</head>
<body>
<%
String memberId = (String)session.getAttribute("sessionKey");
String role = (String)session.getAttribute("role");
if(memberId == null || session.isNew() || !"admin".equals(role))
{
    response.sendRedirect("/SportsAcademy/admin/admin-login.jsp");
}
else
{
%>
<%@ include file="/admin/Admin_header.html" %>
<div class="main_body">
  <div class="sa-admin-welcome animate-in">
    <h1>Welcome, <span>Admin</span> <i class="fas fa-hand-peace" style="color:var(--accent-gold)"></i></h1>
    <p>Manage events, sports, notices, members, and more from your dashboard.</p>
    <div style="margin-top:2rem;display:flex;justify-content:center;gap:1rem;flex-wrap:wrap">
      <a href="/SportsAcademy/admin/All-members.jsp" class="sa-btn-primary" style="text-decoration:none"><i class="fas fa-users"></i> View Members</a>
      <a href="/SportsAcademy/admin/add_event.jsp" class="sa-btn-secondary" style="text-decoration:none"><i class="fas fa-calendar-plus"></i> Add Event</a>
      <a href="/SportsAcademy/admin/all-feedback.jsp" class="sa-btn-secondary" style="text-decoration:none"><i class="fas fa-comments"></i> Feedback</a>
    </div>
  </div>
</div>
<%@include file ="/common_files/Common_footer.html" %>
<% } %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>