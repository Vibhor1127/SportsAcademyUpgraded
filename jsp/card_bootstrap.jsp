<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<%@include file= "/common_files/common_css.html" %>
</head>
<body>
<div class="row mx-5">
<%for(int i=1;i<=4;i++)
	{%>
<div class="col-3">
<div class="card" style="width: 100%;margin-top: 50px">
  
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Card text</p>
    
  </div>
</div>
</div>
<%} %>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>