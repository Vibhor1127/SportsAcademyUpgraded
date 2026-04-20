<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Notice — Winners Sports Academy</title>
    <%@include file ="/common_files/common_css.html" %>
    <%@include file ="/admin/Admin_header.html" %>
</head>
<body>
<div class="main_body">
    <h2 class="sa-section-title">Add Notice</h2>
    <p class="sa-section-subtitle">Publish a new notice for all academy visitors</p>

    <div style="max-width:600px;margin:0 auto;padding:0 1rem 2rem">
    <form action="/SportsAcademy/Noticee" method="post" class="needs-validation" novalidate>
        <div class="sa-form-card animate-in">
            <h2><i class="fas fa-bullhorn"></i> Notice Content</h2>

            <div class="mb-3">
                <label for="noticeContent" class="form-label">Notice Text</label>
                <textarea class="form-control" id="noticeContent" name="notice" rows="4" required placeholder="Write your notice here..."></textarea>
            </div>
            <button type="submit" class="sa-btn-primary w-100"><i class="fas fa-paper-plane"></i> Publish Notice</button>
        </div>
    </form>
    </div>
</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="/SportsAcademy/Java-script/validation.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>