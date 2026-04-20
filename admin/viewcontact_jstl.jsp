<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Contact Records — Winners Sports Academy</title>
<%@include file= "/common_files/common_css.html" %>
<%@ include file="/common_files/common_header.html" %>
</head>
<body>
<div class="main_body">
<h2 class="sa-section-title">Contact Records</h2>

<c:set var="selectQuery" value="select * from contact"> </c:set>
<s:query var="resultset" dataSource="${applicationScope.con}" sql="${selectQuery}"></s:query>

<div class="sa-table-wrap" style="margin:2rem;overflow-x:auto">
    <h2>All Contacts (JSTL View)</h2>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Query</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${resultset.rows}" var="row">
            <tr>
                <td><c:out value="${row.name}"/></td>
                <td><c:out value="${row.last_name}"/></td>
                <td><c:out value="${row.email}"/></td>
                <td><c:out value="${row.phone}"/></td>
                <td><c:out value="${row.question}"/></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</div>
<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>