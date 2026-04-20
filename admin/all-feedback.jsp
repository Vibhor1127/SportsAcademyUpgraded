<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="academy.dao.*,academy.beans.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>All Feedbacks — Winners Sports Academy</title>
<%@include file= "/common_files/common_css.html" %>
</head>
<body>
<%@include file="/admin/Admin_header.html" %>
<div class="main_body">

<h2 class="sa-section-title">All Feedbacks</h2>
<p class="sa-section-subtitle">Review feedback submitted by members</p>

<%
Admindao dao = new Admindao();
ArrayList<Feedback> userList = dao.viewFeedbacks();
%>

<div class="sa-data-grid">
<% for (Feedback f : userList) { %>
<div class="sa-data-card">
  <p><strong>Name:</strong> <%= f.getName() %></p>
  <p><strong>Email:</strong> <%= f.getEmail() %></p>
  <p><strong>Rating:</strong> <%= f.getRating() %></p>
  <p><strong>Feedback:</strong> <%= f.getRemarks() %></p>
</div>
<% } %>
</div>

</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
