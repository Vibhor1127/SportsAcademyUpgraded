<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="academy.dao.*,academy.beans.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>All Contacts — Winners Sports Academy</title>
<%@include file="/common_files/common_css.html"%>
</head>
<body>
<%@include file="/admin/Admin_header.html"%>
<div class="main_body">

<h2 class="sa-section-title">All Contacts</h2>
<p class="sa-section-subtitle">Queries received from visitors</p>

<%
Admindao dao = new Admindao();
ArrayList<UserContact> userList = dao.viewContacts();
%>

<form method="post" action="<%=request.getContextPath()%>/DeleteContact">
<div class="sa-table-wrap" style="margin:2rem;overflow-x:auto">
    <h2>Contact Queries</h2>
    <table>
        <thead>
            <tr>
                <th>Select</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Query</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <% for (UserContact c : userList) { %>
            <tr>
                <td><input type="checkbox" class="form-check-input" name="serialnumber" value="<%= c.getSerial_number() %>"></td>
                <td><%= c.getName() %></td>
                <td><%= c.getLast_name() %></td>
                <td><%= c.getEmail() %></td>
                <td><%= c.getPhone() %></td>
                <td><%= c.getQuestion() %></td>
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