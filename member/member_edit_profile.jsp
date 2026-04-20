<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="academy.dao.*,academy.beans.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Edit Profile — Winners Sports Academy</title>
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
if(memberId == null || session.isNew())
{
    response.sendRedirect("/SportsAcademy/member/member-login.jsp");
}
else
{
%>
<%@ include file="/member/Member_header.html" %>
<div class="main_body">

<%
MemberDao dao = new MemberDao();
Member_registration m = dao.viewProfile(memberId);
%>

<h2 class="sa-section-title">Edit Profile</h2>

<div class="sa-profile-section">
  <div class="sa-profile-card animate-in">
    <div class="sa-profile-sidebar">
      <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp" alt="Avatar" />
      <h4>Hello, <%= m.getName() %></h4>
    </div>
    <div class="sa-profile-body">
      <form method="post" action="/SportsAcademy/Member_edit_fetch">
        <input type="hidden" value="<%= memberId %>" name="memid">
        <h5>Edit Information</h5>
        <hr>
        <div class="info-row">
          <div class="info-item">
            <label>Email</label>
            <input type="email" name="email" class="form-control" value="<%= m.getEmail() %>" style="background:rgba(255,255,255,0.05);border:1px solid var(--border-subtle);color:var(--text-primary);margin-top:0.3rem">
          </div>
          <div class="info-item">
            <label>Phone</label>
            <input type="tel" name="phone" class="form-control" value="<%= m.getPhone() %>" style="background:rgba(255,255,255,0.05);border:1px solid var(--border-subtle);color:var(--text-primary);margin-top:0.3rem">
          </div>
        </div>
        <div class="info-row">
          <div class="info-item">
            <label>Age</label>
            <p><%= m.getAge() %></p>
          </div>
          <div class="info-item">
            <label>Gender</label>
            <p><%= m.getGender() %></p>
          </div>
        </div>
        <h5>Address & Sports</h5>
        <hr>
        <div class="info-row">
          <div class="info-item">
            <label>Address</label>
            <input type="text" name="address" class="form-control" value="<%= m.getAddress() %>" style="background:rgba(255,255,255,0.05);border:1px solid var(--border-subtle);color:var(--text-primary);margin-top:0.3rem">
          </div>
          <div class="info-item">
            <label>Sports Opted</label>
            <p><%= m.getSports_name() %></p>
          </div>
        </div>
        <div style="margin-top:1.5rem">
          <button type="submit" class="sa-btn-primary"><i class="fas fa-save"></i> Save Changes</button>
        </div>
      </form>
    </div>
  </div>
</div>

</div>
<%@include file ="/common_files/Common_footer.html" %>
<% } %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>