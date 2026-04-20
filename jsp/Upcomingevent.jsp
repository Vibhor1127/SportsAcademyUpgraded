<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="academy.dao.*,academy.beans.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Upcoming Events — Winners Sports Academy</title>
<%@include file= "/common_files/common_css.html" %>
</head>
<body>
<%@include file="/common_files/common_header.html" %>
<div class="main_body">

<h2 class="sa-section-title">Upcoming Events</h2>
<p class="sa-section-subtitle">Don't miss out on these exciting academy events</p>

<%
Admindao dao = new Admindao();
ArrayList<Event> eventList = dao.viewEvents();
%>

<div class="sa-data-grid">
<% for (Event f : eventList) { %>
<div class="sa-data-card">
  <p><strong><i class="fas fa-flag" style="margin-right:6px"></i> Event:</strong> <%= f.getName() %></p>
  <p><strong><i class="fas fa-map-marker-alt" style="margin-right:6px"></i> Venue:</strong> <%= f.getVenue() %></p>
  <p><strong><i class="fas fa-user-tie" style="margin-right:6px"></i> Organiser:</strong> <%= f.getOrganiser() %></p>
  <p><strong><i class="fas fa-info-circle" style="margin-right:6px"></i> Description:</strong> <%= f.getDescription() %></p>
  <p><strong><i class="fas fa-calendar-day" style="margin-right:6px"></i> Date:</strong> <%= f.getDate() %></p>
</div>
<% } %>
</div>

</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
