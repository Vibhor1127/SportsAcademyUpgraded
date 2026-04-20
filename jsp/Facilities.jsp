<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Facilities — Winners Sports Academy</title>
<%@include file= "/common_files/common_css.html" %>
</head>
<body>
<%@ include file="/common_files/common_header.html" %>
<div class="main_body">

<h2 class="sa-section-title">Our Facilities</h2>
<p class="sa-section-subtitle">World-class infrastructure for every athlete</p>

<div class="sa-facilities-grid">
    <a href="/SportsAcademy/jsp/caferteria.jsp" class="sa-facility-card">
        <img src="https://i.pinimg.com/736x/6f/f2/e6/6ff2e68125b1b1d531650ded1635ff5a.jpg" alt="Cafeteria">
        <div class="facility-label"><i class="fas fa-utensils"></i> Cafeteria</div>
    </a>
    <a href="/SportsAcademy/jsp/fitness%20club.jsp" class="sa-facility-card">
        <img src="https://img.freepik.com/premium-photo/contemporary-spotless-fitness-gym-center-interiorgenerative-ai_391052-10889.jpg" alt="Fitness Club">
        <div class="facility-label"><i class="fas fa-dumbbell"></i> Fitness Club</div>
    </a>
    <a href="/SportsAcademy/jsp/equipmentshop.jsp" class="sa-facility-card">
        <img src="https://images.squarespace-cdn.com/content/v1/597a08a6e45a7c1cf8efc12b/1504831573887-AQZCCE8299L64WPZBA6O/ke17ZwdGBToddI8pDm48kGV1ieLc44HXAdo4JzygacsUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKc-zNOMSAjDQI2-8Tz5Wi23nGV8HDWaCN9p821YBJXzx4r5c0y2t3boY9sFgwjffx2/Pete%27s_Sports-Hockey_2.png" alt="Equipment Shop">
        <div class="facility-label"><i class="fas fa-shopping-bag"></i> Equipment Shop</div>
    </a>
    <a href="/SportsAcademy/jsp/coach.jsp" class="sa-facility-card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTepIt7i-FilkGmi_L90zF46Pi9oRmFdbv9fA&s" alt="Coach">
        <div class="facility-label"><i class="fas fa-chalkboard-teacher"></i> Expert Coaches</div>
    </a>
</div>

</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>