<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Event — Winners Sports Academy</title>
    <%@include file= "/common_files/common_css.html" %>
    <%@ include file="/admin/Admin_header.html" %>
</head>
<body>
<% String msg = (String)request.getAttribute("duplicateError"); %>
<%String ms= request.getParameter("msg");%>

<div class="main_body">
    <h2 class="sa-section-title">Add New Event</h2>
    <p class="sa-section-subtitle">Schedule a new event for the academy</p>

    <div style="max-width:600px;margin:0 auto;padding:0 1rem 2rem">
    <form action="/SportsAcademy/eventadd" method="post">
        <div class="sa-form-card animate-in">
            <h2><i class="fas fa-calendar-plus"></i> Event Details</h2>

            <div class="mb-3">
                <label for="eventName" class="form-label">Name of Event</label>
                <input type="text" class="form-control" id="eventName" name="name" required placeholder="Enter event name">
            </div>
            <div class="mb-3">
                <label for="eventVenue" class="form-label">Venue</label>
                <input type="text" class="form-control" id="eventVenue" name="venue" required placeholder="Enter venue">
            </div>
            <div class="mb-3">
                <label for="eventOrganiser" class="form-label">Organiser</label>
                <input type="text" class="form-control" id="eventOrganiser" name="organiser" required placeholder="Enter organiser name">
            </div>
            <div class="mb-3">
                <label for="eventDescription" class="form-label">Description</label>
                <input type="text" class="form-control" id="eventDescription" name="description" required placeholder="Brief description">
            </div>
            <div class="mb-3">
                <label for="eventDate" class="form-label">Choose a Date</label>
                <input type="date" id="eventDate" name="date" class="form-control" required>
            </div>
            <button type="submit" class="sa-btn-primary w-100"><i class="fas fa-plus-circle"></i> Add Event</button>
        </div>
    </form>

    <%if(ms!=null){%>
    <div class="sa-alert sa-alert-success animate-in">
       <strong><%= ms %></strong>
    </div>
    <% }%>
    </div>
</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
