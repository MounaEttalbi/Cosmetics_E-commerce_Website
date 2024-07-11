
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
    
 <style>
   

.content-container {
    display: flex;
    justify-content: space-between;
    margin: 20px;
}

.dashboard {
      width: 250px;
      background-color:#d6f6c4;
      color: #fff;
      padding: 20px;
      text-align: center; /* Centrer le titre */
}

 h2 {
    color: black;
    font-weight: bold;
}


.dashboard ul {
    list-style-type: none;
    padding: 0;
}

.dashboard a {
    text-decoration: none;
    color: black;
    display: block;
    padding: 20px 0;
}

.dashboard a:hover {
    background-color: #ddd;
}

.description {
    width: 70%;
    padding: 50px;
}

.description h1 {
     color: white;
     text-align: center;
}

.description p {
    line-height: 1.5;
    color: white;
    
}
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
              <a href="index.jsp" class="navbar-link has-after">products</a>
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
  <div class="sidebar">
    <div class="mobile-navbar" data-navbar>

      <div class="wrapper">
        <a href="#" class="logo">
          <img src="./assets/images/logo4.png" width="179" height="26" alt="Glowing">
        </a>

        <button class="nav-close-btn" aria-label="close menu" data-nav-toggler>
          <ion-icon name="close-outline" aria-hidden="true"></ion-icon>
        </button>
      </div>

      <ul class="navbar-list">

        <li>
          <a href="index.jsp" class="navbar-link" data-nav-link>Home</a>
        </li>

        <li>
          <a href="index.jsp" class="navbar-link" data-nav-link>products</a>
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
    <!-- Masthead-->
       <div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section" style="color : black; font-weight: bold;">Accueil Administrateur</h2>
				</div>
			</div>
<section>
    <div class="content-container">
        <aside class="dashboard">
            <h2>Tableau de Bord</h2>
            <ul>
                <li><a href="acc_admin.jsp">page d'accueil</a></li>
                <li><a href="gererCompte">Gerer les Comptes</a></li>
                <li><a href="ProductServlet">Gerer les produit</a></li>
                <li><a href="index.jsp">Se déconnecter</a></li>
       
                <!-- Ajoutez d'autres liens du tableau de bord -->
            </ul>
        </aside>

        <main class="description">
            <h1> Bienvenue cher Administrateur</h1><br>
            <p>
               <b> Bienvenue sur votre tableau de bord. Utilisez le menu a  gauche pour acceder aux differentes 
                </b></p>
            <p> <b>fonctionnalitees et gerer les ressources humaines de l'entreprise de maniere efficace.
            </b></p>
            <p>
                <b>Si vous avez des questions ou des preoccupations, n'hesitez pas à  nous contacter.</b>
            </p>
        </main>
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
</html>