<%@page import="academy.beans.Member_registration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="academy.dao.*,academy.beans.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>All Members — Winners Sports Academy</title>
<%@include file= "/common_files/common_css.html" %>
</head>
<body>
<%@include file="/admin/Admin_header.html" %>
<div class="main_body">

<h2 class="sa-section-title">All Members</h2>
<p class="sa-section-subtitle">Registered members of the academy</p>

<%
Admindao dao = new Admindao();
ArrayList<Member_registration> userList = dao.viewMembers();
%>

<div class="sa-table-wrap" style="margin:2rem;overflow-x:auto">
    <h2>Member Directory</h2>
    <table>
        <thead>
            <tr>
                <th>Member ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Sports</th>
                <th>Address</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <% for (Member_registration m : userList) { %>
            <tr>
                <td><%= m.getMember_id() %></td>
                <td><%= m.getName() %></td>
                <td><%= m.getEmail() %></td>
                <td><%= m.getPhone() %></td>
                <td><%= m.getAge() %></td>
                <td><%= m.getGender() %></td>
                <td><%= m.getSports_name() %></td>
                <td><%= m.getAddress() %></td>
                <td><%= m.getDate() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
