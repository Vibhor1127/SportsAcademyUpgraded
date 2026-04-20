<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Cricket — Winners Sports Academy</title>
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
  <img src="https://images.augustman.com/wp-content/uploads/sites/6/2023/04/16072649/Untitled-design-2023-04-16T071319.214.jpg" alt="Cricket Stadium">
  <h1><i class="fas fa-baseball-ball"></i> Cricket</h1>
</div>

<div class="main_body">
  <div class="sa-about-section">
    <div class="sa-about-block animate-in">
      <h2><i class="fas fa-baseball-ball"></i> What is Cricket?</h2>
      <p>Cricket is a game played with a ball and bat by two sides of usually 11 players each on a large field centering upon two wickets each defended by a batsman. It is one of the most popular sports in the world, with a rich history spanning centuries.</p>
    </div>
  </div>

  <h2 class="sa-section-title">Training Videos</h2>
  <div class="sa-video-grid">
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/28aW4Bi4OCo?si=SSRG4dO2-AKodnje" title="Cricket Training 1" allowfullscreen></iframe>
    </div>
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/YqKYpgZ9FWU?si=-r9R56sIvT8VzYai" title="Cricket Training 2" allowfullscreen></iframe>
    </div>
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/FfvS3HlcYKw?si=OUuQ45BexAvYJx2W" title="Cricket Training 3" allowfullscreen></iframe>
    </div>
  </div>
</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>