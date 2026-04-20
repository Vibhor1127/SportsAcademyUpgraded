<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Basketball — Winners Sports Academy</title>
<%@include file="/common_files/common_css.html" %>
<style>
.sa-sport-hero { position:relative; height:50vh; overflow:hidden; display:flex; align-items:center; justify-content:center; }
.sa-sport-hero img { position:absolute; inset:0; width:100%; height:100%; object-fit:cover; filter:brightness(0.35); }
.sa-sport-hero h1 { position:relative; z-index:1; font-family:var(--font-display); font-size:3rem; font-weight:800; color:var(--accent-gold); text-shadow:0 4px 20px rgba(0,0,0,0.5); }
.sa-video-grid { display:grid; grid-template-columns:repeat(auto-fit,minmax(300px,1fr)); gap:1.5rem; padding:2rem; max-width:1100px; margin:0 auto; }
.sa-video-card { border-radius:var(--radius-md); overflow:hidden; border:1px solid var(--border-subtle); aspect-ratio:16/9; transition:all var(--transition-smooth); }
.sa-video-card:hover { border-color:var(--accent-gold); box-shadow:var(--shadow-glow); transform:translateY(-4px); }
.sa-video-card iframe { width:100%; height:100%; border:none; }
</style>
</head>
<body>
<%@include file="/common_files/common_header.html" %>

<div class="sa-sport-hero">
  <img src="https://img-new.cgtrader.com/items/896077/478c4acef3/large/basketball-stadium-3d-model-fbx-blend.jpg" alt="Basketball Court">
  <h1><i class="fas fa-basketball-ball"></i> Basketball</h1>
</div>

<div class="main_body">
  <div class="sa-about-section">
    <div class="sa-about-block animate-in">
      <h2><i class="fas fa-basketball-ball"></i> What is Basketball?</h2>
      <p>Basketball is a game played between two teams of five players each on a rectangular court, usually indoors. Each team tries to score by tossing the ball through the opponent's goal, an elevated horizontal hoop and net called a basket.</p>
    </div>
  </div>

  <h2 class="sa-section-title">Training Videos</h2>
  <div class="sa-video-grid">
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/q6nCXtI2vPw?si=2H5TKngn_kq1thgW" title="Basketball Training 1" allowfullscreen></iframe>
    </div>
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/gmJwCYrRfvs?si=WqN6XD6-ltyXcvN0" title="Basketball Training 2" allowfullscreen></iframe>
    </div>
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/Bt5cfPC8eZQ?si=F4aJdxInAsck3D2_" title="Basketball Training 3" allowfullscreen></iframe>
    </div>
  </div>
</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>