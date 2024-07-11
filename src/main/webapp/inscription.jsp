<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<title>Inscription</title>
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
  <link rel="shortcut icon" href="./images/favicon.svg" type="image/svg+xml">
  <link rel="stylesheet" href="./assets/css/style.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="preload" as="image" href="./assets/images/logo.png">
  <link rel="preload" as="image" href="./assets/images/hero-banner-1.jpg">
  <link rel="preload" as="image" href="./assets/images/hero-banner-2.jpg">
  <link rel="preload" as="image" href="./assets/images/hero-banner-3.jpg">
  <style>
        .footer {
            background-color: hsl(106, 81%, 90%);
        }
        .header{background-color: hsl(106, 81%, 90%); }
        
    </style>
</head>
<body>
<body class="img js-fullheight" style="background-image: url(images/bglog.webp);"
	id="top">

  <!-- 
    - #HEADER
  -->

  <header class="header">

    <div class="alert">
      <div class="container">
        <p class="alert-text">E-commerce website for cosmetic products</p>
      </div>
    </div>

    <div class="header-top" data-header>
      <div class="container">

        <button class="nav-open-btn" aria-label="open menu" data-nav-toggler>
          <span class="line line-1"></span>
          <span class="line line-2"></span>
          <span class="line line-3"></span>
        </button>

        <nav class="navbar">
          <ul class="navbar-list">

            <li>
              <a href="index.jsp" class="navbar-link has-after">Home</a>
            </li>

            <li>
              <a href="listerpr.html" class="navbar-link has-after">products</a>
            </li>

            <li>
              <a href="index.jsp" class="navbar-link has-after">Shop</a>
            </li>

            <li>
              <a href="index.jsp" class="navbar-link has-after">Offer</a>
            </li>

            <li>
              <a href="index.jsp" class="navbar-link has-after">Blog</a>
            </li>

            <li>
              <a href="#footer" class="navbar-link has-after">Contact</a>
            </li>

          </ul>
        </nav>

      </div>
    </div>

  </header>




  <!-- 
    - #MOBILE NAVBAR
  -->

  <div class="sidebar">
    <div class="mobile-navbar" data-navbar>

      <div class="wrapper">
        <a href="#" class="logo">
          <img src="./assets/images/logo.png" width="179" height="26" alt="Glowing">
        </a>

        <button class="nav-close-btn" aria-label="close menu" data-nav-toggler>
          <ion-icon name="close-outline" aria-hidden="true"></ion-icon>
        </button>
      </div>

      <ul class="navbar-list">

        <li>
          <a href="index.html" class="navbar-link" data-nav-link>Home</a>
        </li>

        <li>
          <a href="listerpr.html" class="navbar-link" data-nav-link>Products</a>
        </li>

        <li>
          <a href="#shop" class="navbar-link" data-nav-link>Shop</a>
        </li>

        <li>
          <a href="#offer" class="navbar-link" data-nav-link>Offer</a>
        </li>

        <li>
          <a href="#blog" class="navbar-link" data-nav-link>Blog</a>
        </li>

        <li>
          <a href="#footer" class="navbar-link" data-nav-link>Contact</a>
        </li>

      </ul>

    </div>

    <div class="overlay" data-nav-toggler data-overlay></div>
  </div>

  <main>
    <section class="ftco-section">
		<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section" style="color : black; font-weight: bold;">Inscription</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<form action="InscriptionServlet" method="post" class="signin-form">
				<div >
		      		<div class="form-group">
		      			<input type="text" name="fullname" class="form-control" placeholder="Full Name" style="color : black;border: 2px solid black;border-radius: 25px;font-size: 16px;" required>
		      		</div>
		      		<div class="form-group">
		      			<input type="text" name="username" class="form-control" placeholder="Username" style="color : black;border: 2px solid black;border-radius: 25px;font-size: 16px;" required>
		      		</div>
		      		</div>
		      	<div>
	            <div class="form-group">
	              <input id="password-field" name="password" type="password" class="form-control" placeholder="Password" style="color : black;border: 2px solid black;border-radius: 25px; font-size: 16px;" required>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            </div>
	            <div class="form-group">
	            	<button type="submit" class="form-control bt bt-primary submit px-3"><h3>S'inscrire</h3></button>
	            </div>
	            <% String errorMessage = request.getParameter("error");
       					if (errorMessage != null) { %>
        				<script>alert("<%= errorMessage %>");</script>
    			<% } %>
	            <div class="form-group d-md-flex justify-content-end">
					<div class="w-50 text-md-right">
						<a href="login.jsp" style="color: #fff">I have an account</a>
					</div>				
	            </div>
	          </form>
	         
		      </div>
				</div>
			</div>
	</section>
  </main>





  <!-- 
    - #FOOTER
  -->

  <footer  id="footer" class="footer" data-section>
    <div class="container">

      <div class="footer-top">

        <ul class="footer-list">

          <li>
            <p class="footer-list-title">Company</p>
          </li>

          <li>
            <p class="footer-list-text">
              Find a location nearest you. See <a href="#" class="link">Our Stores</a>
            </p>
          </li>

          <li>
            <p class="footer-list-text bold">+212 613 30 23 47</p>
          </li>

          <li>
            <p class="footer-list-text">mounaettalbi@gmail.com</p>
          </li>

        </ul>

        <ul class="footer-list">

          <li>
            <p class="footer-list-title">Useful links</p>
          </li>

          <li>
            <a href="#" class="footer-link">New Products</a>
          </li>

          <li>
            <a href="#" class="footer-link">Best Sellers</a>
          </li>

          <li>
            <a href="#" class="footer-link">Bundle & Save</a>
          </li>

          <li>
            <a href="#" class="footer-link">Online Gift Card</a>
          </li>

        </ul>

        <ul class="footer-list">

          <li>
            <p class="footer-list-title">Infomation</p>
          </li>

          <li>
            <a href="#" class="footer-link">Start a Return</a>
          </li>

          <li>
            <a href="#" class="footer-link">Contact Us</a>
          </li>

          <li>
            <a href="#" class="footer-link">Shipping FAQ</a>
          </li>

          <li>
            <a href="#" class="footer-link">Terms & Conditions</a>
          </li>

          <li>
            <a href="#" class="footer-link">Privacy Policy</a>
          </li>

        </ul>

        <div class="footer-list">

          <p class="newsletter-title">Good emails.</p>

          <p class="newsletter-text">
            Enter your email below to be the first to know about new collections and product launches.
          </p>

          <form action="" class="newsletter-form">
            <input type="email" name="email_address" placeholder="Enter your email address" required
              class="email-field">

            <button type="submit" class="btn btn-primary">Subscribe</button>
          </form>

        </div>

      </div>

      <div class="footer-bottom">

        <div class="wrapper">
          <p class="copyright">
            &copy; 2024 Mouna_Hajar_Doaa_Salma
          </p>

          <ul class="social-list">

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-twitter"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-facebook"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-instagram"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-youtube"></ion-icon>
              </a>
            </li>

          </ul>
        </div>

        <a href="#" class="logo">
          <img src="./assets/images/logo.png" width="179" height="26" loading="lazy" alt="Glowing">
        </a>

        <img src="./assets/images/pay.png" width="313" height="28" alt="available all payment method" class="w-100">

      </div>

    </div>
  </footer>





  <!-- 
    - #BACK TO TOP
  -->

  <a href="#top" class="back-top-btn" aria-label="back to top" data-back-top-btn>
    <ion-icon name="arrow-up" aria-hidden="true"></ion-icon>
  </a>





  <!-- 
    - custom js link
  -->
  <script src="./assets/js/script.js" defer></script>

  <!-- 
    - ionicon link
  -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
</body>
</body>
</html>