<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Sport Details — Winners Sports Academy</title>
    <%@include file= "/common_files/common_css.html" %>
    <%@ include file="/admin/Admin_header.html" %>
</head>
<body>
<%String ms=request.getParameter("msg");%>
<div class="main_body">
    <h2 class="sa-section-title">Add Sport Details</h2>
    <p class="sa-section-subtitle">Configure a new sport offering for the academy</p>

    <div style="max-width:650px;margin:0 auto;padding:0 1rem 2rem">
    <form action="/SportsAcademy/Sport_details" method="post" class="needs-validation" novalidate>
        <div class="sa-form-card animate-in">
            <h2><i class="fas fa-running"></i> Sport Configuration</h2>

            <div class="mb-3">
                <label for="sportsName" class="form-label">Sports Name</label>
                <input type="text" class="form-control" id="sportsName" name="sports_name" required placeholder="Enter sport name">
                <div class="invalid-feedback">Please enter a valid Sports Name.</div>
            </div>

            <div class="mb-3">
                <label class="form-label">Type</label><br>
                <div class="d-flex gap-3">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="type" id="typeIndoor" value="Indoor" required>
                        <label class="form-check-label" for="typeIndoor">Indoor</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="type" id="typeOutdoor" value="Outdoor" required>
                        <label class="form-check-label" for="typeOutdoor">Outdoor</label>
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Duration</label><br>
                <div class="d-flex gap-3 flex-wrap">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="duration" id="duration1" value="One-Hour" required>
                        <label class="form-check-label" for="duration1">One Hour</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="duration" id="duration2" value="Two-Hours" required>
                        <label class="form-check-label" for="duration2">Two Hours</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="duration" id="duration3" value="Three-Hours" required>
                        <label class="form-check-label" for="duration3">Three Hours</label>
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <label for="sportCharge" class="form-label">Charges (&#8377;)</label>
                <input type="number" class="form-control" id="sportCharge" name="charge" placeholder="Enter amount" required>
                <div class="invalid-feedback">Please enter the charges.</div>
            </div>

            <div class="mb-3">
                <label for="sportServices" class="form-label">Services Provided</label>
                <textarea class="form-control" id="sportServices" name="services" rows="2" required placeholder="Describe the services..."></textarea>
                <div class="invalid-feedback">Please describe the services.</div>
            </div>

            <button type="submit" class="sa-btn-primary w-100"><i class="fas fa-plus-circle"></i> Add Sport</button>
        </div>
    </form>

    <%if(ms!=null){%>
    <div class="sa-alert sa-alert-success animate-in">
        <strong><%= ms %></strong>
    </div>
    <%}%>
    </div>
</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="/SportsAcademy/Java-script/validation.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
