<%@ page import="pojo.Panier, pojo.Product" %>
<%@ page import="java.util.List" %>
<%
    HttpSession sessions = request.getSession();
    Panier panier = (Panier) sessions.getAttribute("panier");
    List<Product> products = null;
    if (panier != null) {
        products = panier.getProducts();
    }
%>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mon Panier</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/style.css">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">

    <!-- Custom Styles -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            color: #fff;
        }

        .card {
            margin-bottom: 40px;
            background-color: #fff;
            color: #000;
        }

        .card img {
            width: 100%;
            height: 400px;
        }

        .btn-remove {
            background-color: #dc3545;
            color: white;
            width: 100%;
        }

        .btn-remove:hover {
            background-color: #c82333;
        }
        .btn-back {
            background-color: #007bff;
            color: white;
            width: 100%;
        }

        .btn-back:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<body id="top" >

  <!-- 
    - #HEADER
  -->

  <header class="header">

    <div class="alert">
      <div class="container">
        <p class="alert-text">E-commerce site for cosmetic products</p>
      </div>
    </div>

    <div class="header-top" data-header>
      <div class="container">

        <button class="nav-open-btn" aria-label="open menu" data-nav-toggler>
          <span class="line line-1"></span>
          <span class="line line-2"></span>
          <span class="line line-3"></span>
        </button>

        <div class="input-wrapper">
          <input type="search" name="search" placeholder="Search product" class="search-field">

          <button class="search-submit" aria-label="search">
            <ion-icon name="search-outline" aria-hidden="true"></ion-icon>
          </button>
        </div>

        <a href="#" class="logo">
          <img src="./assets/images/logo4.png" width="150" height="10" alt="Cosmetics">
        </a>

        <div class="header-actions">

          <a href="login.jsp" class="header-action-btn" aria-label="user">
            <ion-icon name="person-outline"  aria-hidden="false"></ion-icon>
          </a >

          
          

        </div>

        <nav class="navbar">
          <ul class="navbar-list">

            <li>
              <a href="index.jsp" class="navbar-link has-after">Home</a>
            </li>

            <li>
              <a href="#shop" class="navbar-link has-after">products</a>
            </li>

            <li>
              <a href="#shop" class="navbar-link has-after">Shop</a>
            </li>

            <li>
              <a href="#offer" class="navbar-link has-after">Offer</a>
            </li>

            <li>
              <a href="#blog" class="navbar-link has-after">Blog</a>
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
          <a href="#shop" class="navbar-link" data-nav-link>products</a>
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
    <article>

      <!-- 
        - #HERO
      -->

      <section class="section hero" id="home" aria-label="hero" data-section>
        <div class="container">

          <ul class="has-scrollbar">

            <li class="scrollbar-item">
              <div class="hero-card has-bg-image" style="background-image: url('./assets/images/hero-banner-1.jpg')">

                

              </div>
            </li>

            <li class="scrollbar-item">
              <div class="hero-card has-bg-image" style="background-image: url('./assets/images/hero-banner-2.jpg')">

              

              </div>
            </li>

            <li class="scrollbar-item">
              <div class="hero-card has-bg-image" style="background-image: url('./assets/images/hero-banner-3.jpg')">

                

              </div>
            </li>

          </ul>

        </div>
      </section>

    <!-- Main Content -->
    <div class="container">
        <h1 class="mb-4">Mon Panier</h1>
        <div class="row">
            <% if (products != null && !products.isEmpty()) { %>
                <% for (int i = 0; i < products.size(); i++) { 
                    if (i % 3 == 0 && i != 0) { %>
                        </div><div class="row">
                    <% } 
                    Product product = products.get(i); %>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                        <form method="get" action="AnnulerProdServlet">
                            <img src="<%= product.getImageUrl() %>" alt="<%= product.getName() %>" class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title"><%= product.getName() %></h5>
                                <p class="card-text">$<%= product.getPrice() %></p>
                            </div>
                            <div class="card-footer">
                                <button name="supprimer" value="<%=product.getId()%>" class="btn btn-remove btn-sm">Supprimer</button>
                            </div>
                            </form>
                        </div>
                    </div>
                <% } %>
            <% } else { %>
                <div class="col-12">
                    <div class="alert alert-info" role="alert">
                        Votre panier est vide
                    </div>
                </div>
            <% } %>
        </div>
        
        <!-- Button to go back to shop section -->
        <!-- Button to go back to shop section -->
        <div class="row">
            <div class="col-12">
                <a href="index.jsp#shop" class="btn btn-back btn-lg mt-4">Retourner au magasin</a>
            </div>
        </div>
    </div>

  
    
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

    <!-- JavaScripts -->
    <script src="./assets/js/script.js" defer></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>
