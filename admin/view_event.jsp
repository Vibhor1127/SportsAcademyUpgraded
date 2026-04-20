<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="academy.dao.*,academy.beans.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>View Events — Winners Sports Academy</title>
<%@include file="/common_files/common_css.html"%>
</head>
<body>
<%@include file="/admin/Admin_header.html"%>
<div class="main_body">

<h2 class="sa-section-title">All Events</h2>
<p class="sa-section-subtitle">Manage upcoming academy events</p>

<%
Admindao dao = new Admindao();
ArrayList<Event> eventList = dao.viewEvents();
%>

<form method="post" action="<%=request.getContextPath()%>/deleteEvent">
<div class="sa-table-wrap" style="margin:2rem;overflow-x:auto">
    <h2>Events List</h2>
    <table>
        <thead>
            <tr>
                <th>Select</th>
                <th>Name</th>
                <th>Venue</th>
                <th>Organizer</th>
                <th>Description</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <% for (Event c : eventList) { %>
            <tr>
                <td><input type="checkbox" class="form-check-input" name="id" value="<%= c.getId() %>"></td>
                <td><%= c.getName() %></td>
                <td><%= c.getVenue() %></td>
                <td><%= c.getOrganiser() %></td>
                <td><%= c.getDescription() %></td>
                <td><%= c.getDate() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
    <div class="table-actions">
        <button class="sa-btn-danger"><i class="fas fa-trash-alt"></i> Delete Selected</button>
    </div>
</div>
</form>

</div>

<%@include file="/common_files/Common_footer.html"%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>