<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member Registration — Winners Sports Academy</title>
    <%@include file= "/common_files/common_css.html" %>
    <%@ include file="/common_files/common_header.html" %>
<script>
function checkAge() {
    var user_age = document.getElementById('age').value;
    if(user_age < 5) {
        alert("Minimum age should be 5");
        return false;
    }
    return true;
}
function main_page() {
    var status = true;
    var chkarray = document.getElementsByName("sports");
    if(emptyCheckBox(chkarray) === true) {
        document.getElementById("message_sports").innerText = "Please select at least one sport";
        status = false;
    }
    if(checkAge() === false) status = false;
    return status;
}
</script>
</head>
<body>
<% String msg = (String)request.getAttribute("duplicateError"); %>
<div class="main_body">
    <h2 class="sa-section-title">Member Registration</h2>
    <p class="sa-section-subtitle">Join our academy and start your sports journey</p>

    <div style="max-width:650px;margin:0 auto;padding:0 1rem 2rem">
    <form onsubmit="return main_page()" action="/SportsAcademy/MemberRegistration" method="post" class="needs-validation" novalidate>
    <div class="sa-form-card animate-in">
        <h2><i class="fas fa-user-plus"></i> Sign Up</h2>

        <div class="mb-3">
            <label for="regId" class="form-label">Member ID</label>
            <input type="text" class="form-control" id="regId" name="id" required>
            <div class="invalid-feedback">Please enter a valid ID.</div>
            <% if(msg != null) { %>
            <span style="color:var(--accent-red);font-size:0.85rem"><%= msg %></span>
            <% } %>
        </div>

        <div class="mb-3">
            <label for="regPassword" class="form-label">Password</label>
            <input type="password" class="form-control" id="regPassword" name="password" required>
            <div class="invalid-feedback">Please enter a password.</div>
        </div>

        <div class="mb-3">
            <label for="regName" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="regName" name="name" required oninput="validateInput(event)">
            <div class="invalid-feedback">Please enter your name.</div>
        </div>

        <div class="mb-3">
            <label for="regEmail" class="form-label">Email</label>
            <input type="email" class="form-control" id="regEmail" name="email" required>
            <div class="invalid-feedback">Please enter a valid email.</div>
        </div>

        <div class="mb-3">
            <label for="regPhone" class="form-label">Phone</label>
            <input type="text" class="form-control" id="regPhone" name="phone" required maxlength="10">
            <div class="invalid-feedback">Please enter your phone number.</div>
        </div>

        <div class="mb-3">
            <label for="age" class="form-label">Age</label>
            <input type="text" class="form-control" id="age" name="age" required maxlength="2">
            <div class="invalid-feedback">Please enter your age.</div>
        </div>

        <div class="mb-3">
            <label class="form-label">Gender</label><br>
            <div class="d-flex gap-3">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="genderMale" value="male" required>
                    <label class="form-check-label" for="genderMale">Male</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="female" required>
                    <label class="form-check-label" for="genderFemale">Female</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="genderOther" value="other">
                    <label class="form-check-label" for="genderOther">Other</label>
                </div>
            </div>
        </div>

        <div class="mb-3">
            <label for="regAddress" class="form-label">Address</label>
            <textarea class="form-control" id="regAddress" name="address" rows="2" required></textarea>
            <div class="invalid-feedback">Please enter your address.</div>
        </div>

        <div class="mb-3">
            <label class="form-label">Choose Your Sports</label>
            <span id="message_sports" style="color:var(--accent-red);font-size:0.85rem;display:block"></span>
            <div class="row g-2" style="margin-top:0.5rem">
                <div class="col-6"><div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sport1" name="sports" value="Football">
                    <label class="form-check-label" for="sport1">Football</label>
                </div></div>
                <div class="col-6"><div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sport2" name="sports" value="Cricket">
                    <label class="form-check-label" for="sport2">Cricket</label>
                </div></div>
                <div class="col-6"><div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sport3" name="sports" value="Hockey">
                    <label class="form-check-label" for="sport3">Hockey</label>
                </div></div>
                <div class="col-6"><div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sport4" name="sports" value="Swimming">
                    <label class="form-check-label" for="sport4">Swimming</label>
                </div></div>
                <div class="col-6"><div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sport5" name="sports" value="Badminton">
                    <label class="form-check-label" for="sport5">Badminton</label>
                </div></div>
                <div class="col-6"><div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sport6" name="sports" value="Golf">
                    <label class="form-check-label" for="sport6">Golf</label>
                </div></div>
                <div class="col-6"><div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sport7" name="sports" value="Basketball">
                    <label class="form-check-label" for="sport7">Basketball</label>
                </div></div>
                <div class="col-6"><div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sport8" name="sports" value="Weight-Lifting">
                    <label class="form-check-label" for="sport8">Weight Lifting</label>
                </div></div>
                <div class="col-6"><div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sport9" name="sports" value="Table-Tennis">
                    <label class="form-check-label" for="sport9">Table Tennis</label>
                </div></div>
            </div>
        </div>

        <div class="d-flex gap-2 mt-3">
            <button type="reset" class="sa-btn-secondary flex-fill">Reset</button>
            <button type="submit" class="sa-btn-primary flex-fill"><i class="fas fa-user-plus"></i> Register</button>
        </div>
    </div>
    </form>
    </div>
</div>

<%@include file ="/common_files/Common_footer.html" %>

<script>
function validateInput(event) {
    const input = event.target.value;
    const regex = /^[a-zA-Z ]*$/;
    if (!regex.test(input)) {
        event.target.value = input.replace(/[^a-zA-Z ]/g, '');
        alert("Only alphabets are allowed");
    }
}
document.getElementById('regPhone').addEventListener('keydown', function(event) {
    if (!(event.key === 'Backspace' || event.key === 'Delete' || event.key === 'Tab' || /\d/.test(event.key))) {
        alert("Only digits are allowed");
        event.preventDefault();
    }
});
document.getElementById('age').addEventListener('keydown', function(event) {
    if (!(event.key === 'Backspace' || event.key === 'Delete' || event.key === 'Tab' || /\d/.test(event.key))) {
        alert("Only digits are allowed");
        event.preventDefault();
    }
});
</script>
<script src="/SportsAcademy/Java-script/validation.js"></script>
<script src="/SportsAcademy/Java-script/custom_validation.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
