<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="academy.dao.*,academy.beans.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sport Details — Winners Sports Academy</title>
<%@include file= "/common_files/common_css.html" %>
</head>
<body>
<%@include file="/common_files/common_header.html" %>
<div class="main_body">

<h2 class="sa-section-title">Sport Details</h2>
<p class="sa-section-subtitle">Explore our sports programs, pricing, and schedules</p>

<%
Admindao dao = new Admindao();
ArrayList<sportdetails> viewsportdetails = dao.viewsportdetails();
%>

<div class="sa-data-grid">
<% for (sportdetails f : viewsportdetails) { %>
<div class="sa-data-card">
  <p><strong><i class="fas fa-running" style="margin-right:6px"></i> Sport:</strong> <%= f.getSport_name() %></p>
  <p><strong><i class="fas fa-home" style="margin-right:6px"></i> Type:</strong> <%= f.getType() %></p>
  <p><strong><i class="fas fa-rupee-sign" style="margin-right:6px"></i> Charges:</strong> &#8377;<%= f.getCharge() %></p>
  <p><strong><i class="fas fa-clock" style="margin-right:6px"></i> Duration:</strong> <%= f.getDuration() %></p>
  <p><strong><i class="fas fa-concierge-bell" style="margin-right:6px"></i> Services:</strong> <%= f.getServices() %></p>
</div>
<% } %>
</div>

<div class="sa-payment-section" style="margin-top:2rem">
  <h3><i class="fas fa-credit-card"></i> Mode of Payment</h3>
  <div class="form-check" style="margin-bottom:0.5rem">
    <input class="form-check-input" type="checkbox" value="" id="payOnline">
    <label class="form-check-label" for="payOnline">Online Payment</label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="checkbox" value="" id="payCash" checked>
    <label class="form-check-label" for="payCash">Cash</label>
  </div>
</div>

</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
