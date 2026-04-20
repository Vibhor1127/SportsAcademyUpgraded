<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Feedback — Winners Sports Academy</title>
<%@include file= "/common_files/common_css.html" %>
</head>
<body>
<div class="main_body">
<%@ include file="/member/Member_header.html" %>

<h2 class="sa-section-title">Share Your Feedback</h2>
<p class="sa-section-subtitle">We value your opinion — help us improve</p>

<div class="sa-contact-section">
  <form action="/SportsAcademy/Member_Feedback" method="post">
    <div class="sa-form-card animate-in">
      <h2><i class="fas fa-comment-dots"></i> Feedback Form</h2>

      <div class="mb-3">
        <label class="form-label">Your Name</label>
        <input type="text" class="form-control" id="feedbackName" name="name" required placeholder="Enter your name">
      </div>
      <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="email" class="form-control" id="feedbackEmail" name="email" required placeholder="Enter your email">
      </div>

      <div class="mb-3">
        <label class="form-label">Rating</label><br>
        <div class="d-flex gap-3 flex-wrap" style="margin-top:0.5rem">
          <label class="form-check-label" style="cursor:pointer;color:var(--text-secondary)">
            <input class="form-check-input" type="radio" name="rating" id="star1" value="one-star" required> &#9733;
          </label>
          <label class="form-check-label" style="cursor:pointer;color:var(--text-secondary)">
            <input class="form-check-input" type="radio" name="rating" id="star2" value="two-star"> &#9733;&#9733;
          </label>
          <label class="form-check-label" style="cursor:pointer;color:var(--text-secondary)">
            <input class="form-check-input" type="radio" name="rating" id="star3" value="three-star"> &#9733;&#9733;&#9733;
          </label>
          <label class="form-check-label" style="cursor:pointer;color:var(--text-secondary)">
            <input class="form-check-input" type="radio" name="rating" id="star4" value="four-star"> &#9733;&#9733;&#9733;&#9733;
          </label>
          <label class="form-check-label" style="cursor:pointer;color:var(--text-secondary)">
            <input class="form-check-input" type="radio" name="rating" id="star5" value="five-star"> &#9733;&#9733;&#9733;&#9733;&#9733;
          </label>
        </div>
      </div>

      <div class="mb-3">
        <label class="form-label">Remarks</label>
        <textarea class="form-control" id="feedbackRemarks" name="remarks" rows="3" required placeholder="Share your experience..."></textarea>
      </div>

      <div class="d-flex gap-2">
        <button type="reset" class="sa-btn-secondary flex-fill">Reset</button>
        <button type="submit" class="sa-btn-primary flex-fill"><i class="fas fa-paper-plane"></i> Submit</button>
      </div>
    </div>
  </form>
</div>

</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>