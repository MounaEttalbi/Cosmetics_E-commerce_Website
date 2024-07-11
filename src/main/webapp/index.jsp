<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cosmetics</title>

  <!-- 
    - favicon
  -->
  <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">

  <!-- 
    - custom css link
  -->
  <link rel="stylesheet" href="./assets/css/style.css">

  <!-- 
    - google font link
  -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@400;500;600;700;800&display=swap" rel="stylesheet">

  <!-- 
    - preload images
  -->
  <link rel="preload" as="image" href="./assets/images/logo4.png">
  <link rel="preload" as="image" href="./assets/images/hero-banner-1.jpg">
  <link rel="preload" as="image" href="./assets/images/hero-banner-2.jpg">
  <link rel="preload" as="image" href="./assets/images/hero-banner-3.jpg">
<style >
.btn.add-to-cart-btn {
  display: block;
  width: 100%;
  padding: 10px;
  background-color: #28a745;
  color: white;
  border: none;
  text-align: center;
  cursor: pointer;
  margin-top: 10px;
}
.footer {
            background-color: hsl(106, 81%, 90%);
.btn.add-to-cart-btn:hover {
       background-color: #218838;
}

   
</style>
</head>
<body>
<body id="top">

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

        <div class="input-wrapper">
          <input type="search" name="search" placeholder="Search product" class="search-field">

          <button class="search-submit" aria-label="search">
            <ion-icon name="search-outline" aria-hidden="true"></ion-icon>
          </button>
        </div>

        <a href="#" class="logo">
          <img src="./assets/images/logo4.png" width="179" height="26" alt="Glowing">
        </a>

        <div class="header-actions">

          <a href="login.jsp" class="header-action-btn" aria-label="user">
            Account<ion-icon name="person-outline" aria-hidden="true" aria-hidden="true"></ion-icon>
          </a >

          


        </div>

        <nav class="navbar">
          <ul class="navbar-list">

            <li>
              <a href="index.jsp" class="navbar-link has-after"><h3>Home</h3></a>
            </li>

            <li>
              <a href="#shop" class="navbar-link has-after"><h3>products</h3></a>
            </li>

            <li>
              <a href="#shop" class="navbar-link has-after"><h3>Shop</h3></a>
            </li>

            <li>
              <a href="#offer" class="navbar-link has-after"><h3>Offer</h3></a>
            </li>

            <li>
              <a href="#blog" class="navbar-link has-after"><h3>Blog</h3></a>
            </li>

            <li>
              <a href="#footer" class="navbar-link has-after"><h3>Contact</h3></a>
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

                <div class="card-content">

                  <h1 class="h1 hero-title">
                    Reveal The <br>
                    Beauty of Skin
                  </h1>

                  <p class="hero-text">
                    Made using clean, non-toxic ingredients, our products are designed for everyone.
                  </p>

                  <p class="price">Starting at $7.99</p>

                  <a href="#" class="btn btn-primary">Shop Now</a>

                </div>

              </div>
            </li>

            <li class="scrollbar-item">
              <div class="hero-card has-bg-image" style="background-image: url('./assets/images/hero-banner-2.jpg')">

                <div class="card-content">

                  <h1 class="h1 hero-title">
                    Reveal The <br>
                    Beauty of Skin
                  </h1>

                  <p class="hero-text">
                    Made using clean, non-toxic ingredients, our products are designed for everyone.
                  </p>

                  <p class="price">Starting at $7.99</p>

                  <a href="#" class="btn btn-primary">Shop Now</a>

                </div>

              </div>
            </li>

            <li class="scrollbar-item">
              <div class="hero-card has-bg-image" style="background-image: url('./assets/images/hero-banner-3.jpg')">

                <div class="card-content">

                  <h1 class="h1 hero-title">
                    Reveal The <br>
                    Beauty of Skin
                  </h1>

                  <p class="hero-text">
                    Made using clean, non-toxic ingredients, our products are designed for everyone.
                  </p>

                  <p class="price">Starting at $7.99</p>

                  <a href="#" class="btn btn-primary">Shop Now</a>

                </div>

              </div>
            </li>

          </ul>

        </div>
      </section>





      <!-- 
        - #COLLECTION
      -->

      <section class="section collection" id="collection" aria-label="collection" data-section>
        <div class="container">

          <ul class="collection-list">

            <li>
              <div class="collection-card has-before hover:shine">

                <h2 class="h2 card-title">Summer Collection</h2>

                <p class="card-text">Starting at $17.99</p>

                <a href="#" class="btn-link">
                  <span class="span">Shop Now</span>

                  <ion-icon name="arrow-forward" aria-hidden="true"></ion-icon>
                </a>

                <div class="has-bg-image" style="background-image: url('./assets/images/collection-1.jpg')"></div>

              </div>
            </li>

            <li>
              <div class="collection-card has-before hover:shine">

                <h2 class="h2 card-title">What’s New?</h2>

                <p class="card-text">Get the glow</p>

                <a href="#" class="btn-link">
                  <span class="span">Discover Now</span>

                  <ion-icon name="arrow-forward" aria-hidden="true"></ion-icon>
                </a>

                <div class="has-bg-image" style="background-image: url('./assets/images/collection-2.jpg')"></div>

              </div>
            </li>

            <li>
              <div class="collection-card has-before hover:shine">

                <h2 class="h2 card-title">Buy 1 Get 1</h2>

                <p class="card-text">Starting at $7.99</p>

                <a href="#" class="btn-link">
                  <span class="span">Discover Now</span>

                  <ion-icon name="arrow-forward" aria-hidden="true"></ion-icon>
                </a>

                <div class="has-bg-image" style="background-image: url('./assets/images/collection-3.jpg')"></div>

              </div>
            </li>

          </ul>

        </div>
      </section>





      <!-- 
        - #SHOP
      -->
<section class="section shop" id="shop" aria-label="shop" data-section>
  <div class="container">

    <div class="title-wrapper">
      <h2 class="h2 section-title">Our Bestsellers</h2>

      <a href="#" class="btn-link">
        <span class="span">Shop All Products</span>

        <ion-icon name="arrow-forward" aria-hidden="true"></ion-icon>
      </a>
    </div>

    <ul class="has-scrollbar">

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-01.jpg" width="540" height="720" loading="lazy"
              alt="Facial cleanser" class="img-cover">

            <span class="badge" aria-label="20% off">-20%</span>

            <div class="card-actions">

              <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="1">
                <input type="hidden" name="name" value="Facial cleanser">
                <input type="hidden" name="imageUrl" value="./assets/images/product-01.jpg">
                <input type="hidden" name="price" value="76.00">
                <input type="hidden" name="description" value="A gentle facial cleanser.">
                <input type="hidden" name="marque" value="Brand A">
                <button class="action-btn" aria-label="add to cart" type="submit">
                  <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                </button>
              </form>

              <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <del class="del">$89.00</del>
              <span class="span">$76.00</span>
            </div>

            <h3>
              <a href="#" class="card-title">Facial cleanser</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">4100 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="1">
                <input type="hidden" name="name" value="Facial cleanser">
                <input type="hidden" name="imageUrl" value="./assets/images/product-01.jpg">
                <input type="hidden" name="price" value="76.00">
                <input type="hidden" name="description" value="A gentle facial cleanser.">
                <input type="hidden" name="marque" value="Brand A">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>
            

          </div>

        </div>
      </li>

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-02.jpg" width="540" height="720" loading="lazy"
              alt="Bio-shroom Rejuvenating Serum" class="img-cover">

            <div class="card-actions">

              <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="2">
                <input type="hidden" name="name" value="Facial cleanser">
                <input type="hidden" name="imageUrl" value="./assets/images/product-02.jpg">
                <input type="hidden" name="price" value="20.00">
                <input type="hidden" name="description" value="A gentle Bio-shroom Rejuvenating Serum.">
                <input type="hidden" name="marque" value="Brand B">
                <button class="action-btn" aria-label="add to cart" type="submit">
                  <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                </button>
              </form>

              <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <span class="span">$20.00</span>
            </div>

            <h3>
              <a href="#" class="card-title">Bio-shroom Rejuvenating Serum</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">3180 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="2">
                <input type="hidden" name="name" value="Facial cleanser">
                <input type="hidden" name="imageUrl" value="./assets/images/product-02.jpg">
                <input type="hidden" name="price" value="29.00">
                <input type="hidden" name="description" value="A gentle  Bio-shroom Rejuvenating Serum.">
                <input type="hidden" name="marque" value="Brand A">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>

          </div>

        </div>
      </li>

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-03.jpg" width="540" height="720" loading="lazy"
              alt="Coffee Bean Caffeine Eye Cream" class="img-cover">

            <div class="card-actions">

              <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="3">
                <input type="hidden" name="name" value="Coffee Bean Caffeine Eye Cream">
                <input type="hidden" name="imageUrl" value="./assets/images/product-03.jpg">
                <input type="hidden" name="price" value="54.00">
                <input type="hidden" name="description" value="A gentle faciaL Coffee Bean Caffeine Eye Cream.">
                <input type="hidden" name="marque" value="Brand C">
                <button class="action-btn" aria-label="add to cart" type="submit">
                  <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                </button>
              </form>

              <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <span class="span">$54.00</span>
            </div>

            <h3>
              <a href="#" class="card-title">Coffee Bean Caffeine Eye Cream</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">3700 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="1">
                <input type="hidden" name="name" value="Coffee Bean Caffeine Eye Cream">
                <input type="hidden" name="imageUrl" value="./assets/images/product-03.jpg">
                <input type="hidden" name="price" value="54.00">
                <input type="hidden" name="description" value="A gentle facial Coffee Bean Caffeine Eye Cream.">
                <input type="hidden" name="marque" value="Brand C">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>

          </div>

        </div>
      </li>

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-04.jpg" width="540" height="720" loading="lazy"
              alt="Facial cleanser" class="img-cover">

            <div class="card-actions">

              <button class="action-btn" aria-label="add to cart">
                <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <span class="span">$130.00</span>
            </div>

            <h3>
              <a href="#" class="card-title">Facial cleanser</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">643 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="4">
                <input type="hidden" name="name" value="Facial cleanser">
                <input type="hidden" name="imageUrl" value="./assets/images/product-04.jpg">
                <input type="hidden" name="price" value="29.00">
                <input type="hidden" name="description" value="A gentle facial cleanser.">
                <input type="hidden" name="marque" value="Brand D">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>

          </div>

        </div>
      </li>

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-05.jpg" width="540" height="720" loading="lazy"
              alt="Coffee Bean Caffeine Eye Cream" class="img-cover">

            <span class="badge" aria-label="20% off">-20%</span>

            <div class="card-actions">

              <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="5">
                <input type="hidden" name="name" value="Caffeine Eye Cream">
                <input type="hidden" name="imageUrl" value="./assets/images/product-05.jpg">
                <input type="hidden" name="price" value="300.00">
                <input type="hidden" name="description" value="Caffeine Eye Cream.">
                <input type="hidden" name="marque" value="Brand 5">
                <button class="action-btn" aria-label="add to cart" type="submit">
                  <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                </button>
              </form>

              <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <del class="del">$390.00</del>
              <span class="span">$300.00</span>
            </div>

            <h3>
              <a href="#" class="card-title">Coffee Bean Caffeine Eye Cream</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">4320 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="5">
                <input type="hidden" name="name" value="Facial cleanser">
                <input type="hidden" name="imageUrl" value="./assets/images/product-05.jpg">
                <input type="hidden" name="price" value="300.00">
                <input type="hidden" name="description" value="A gentle Caffeine Eye Cream.">
                <input type="hidden" name="marque" value="Brand 5">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>

          </div>

        </div>
      </li>

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-06.jpg" width="540" height="720" loading="lazy"
              alt="Bio-shroom Rejuvenating Serum" class="img-cover">

            <div class="card-actions">

              <button class="action-btn" aria-label="add to cart">
                <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <span class="span">$66.00</span>
            </div>

            <h3>
              <a href="#" class="card-title">Bio-shroom Rejuvenating Serum</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">2340 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="6">
                <input type="hidden" name="name" value="Bio-shroom Rejuvenating Serum">
                <input type="hidden" name="imageUrl" value="./assets/images/product-06.jpg">
                <input type="hidden" name="price" value="66.00">
                <input type="hidden" name="description" value="Bio-shroom Rejuvenating Serum.">
                <input type="hidden" name="marque" value="Brand C">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>
            

          </div>

        </div>
      </li>

    </ul>

  </div>
</section>
<section class="section shop" id="shop1" aria-label="shop" data-section>
  <div class="container">

    <div class="title-wrapper">
      <h2 class="h2 section-title">Under $25</h2>

      <a href="#" class="btn-link">
        <span class="span">Shop All Products</span>
        <ion-icon name="arrow-forward" aria-hidden="true"></ion-icon>
      </a>
    </div>

    <ul class="has-scrollbar">

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-07.jpg" width="540" height="720" loading="lazy"
              alt="Facial cleanser" class="img-cover">

            <span class="badge" aria-label="20% off">-20%</span>

            <div class="card-actions">

            <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <del class="del">$89.00</del>
              <span class="span">$39.00</span>
            </div>

            <h3>
              <a href="#" class="card-title">Facial cleanser</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">5110 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="7">
                <input type="hidden" name="name" value="Facial cleanser">
                <input type="hidden" name="imageUrl" value="./assets/images/product-07.jpg">
                <input type="hidden" name="price" value="39.00">
                <input type="hidden" name="description" value="A Bio-shroom Rejuvenating Serum.">
                <input type="hidden" name="marque" value="Brand E">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>

          </div>

        </div>
      </li>

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-08.jpg" width="540" height="720" loading="lazy"
              alt="Bio-shroom Rejuvenating Serum" class="img-cover">

            <div class="card-actions">

              <button class="action-btn" aria-label="add to cart">
                <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <span class="span">$180.00</span>
            </div>

            <h3>
              <a href="#" class="card-title">Bio-shroom Rejuvenating Serum</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">5170 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="8">
                <input type="hidden" name="name" value="Facial Bio-shroom Serumr">
                <input type="hidden" name="imageUrl" value="./assets/images/product-08.jpg">
                <input type="hidden" name="price" value="180.00">
                <input type="hidden" name="description" value="A Bio-shroom Rejuvenating Serum.">
                <input type="hidden" name="marque" value="Brand T">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>

          </div>

        </div>
      </li>

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-09.jpg" width="540" height="720" loading="lazy"
              alt="Coffee Bean Caffeine Eye Cream" class="img-cover">

            <div class="card-actions">

              <button class="action-btn" aria-label="add to cart">
                <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <span class="span">$39.00</span>
            </div>

            <h3>
              <a href="#" class="card-title">Coffee Bean Caffeine Eye Cream</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">3070 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="9">
                <input type="hidden" name="name" value="Facial cleanser">
                <input type="hidden" name="imageUrl" value="./assets/images/product-09.jpg">
                <input type="hidden" name="price" value="39.00">
                <input type="hidden" name="description" value="A gentle Coffee Bean Caffeine.">
                <input type="hidden" name="marque" value="Brand R">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>

          </div>

        </div>
      </li>

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-10.jpg" width="540" height="720" loading="lazy"
              alt="Facial cleanser" class="img-cover">

            <div class="card-actions">

              <button class="action-btn" aria-label="add to cart">
                <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <span class="span">$345.00</span>
            </div>

            <h3>
              <a href="#" class="card-title"> FACECoffee Bean Caffeine</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">6170 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="10">
                <input type="hidden" name="name" value="Facial cleanser">
                <input type="hidden" name="imageUrl" value="./assets/images/product-10.jpg">
                <input type="hidden" name="price" value="345.00">
                <input type="hidden" name="description" value="VCoffee Bean Caffeine cleanser.">
                <input type="hidden" name="marque" value="Brand 10">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>

          </div>

        </div>
      </li>

      <li class="scrollbar-item">
        <div class="shop-card">

          <div class="card-banner img-holder" style="--width: 540; --height: 720;">
            <img src="./assets/images/product-11.jpg" width="540" height="720" loading="lazy"
              alt="Coffee Bean Caffeine Eye Cream" class="img-cover">

            <span class="badge" aria-label="20% off">-20%</span>

            <div class="card-actions">

              <button class="action-btn" aria-label="add to cart">
                <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="add to wishlist">
                <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
              </button>

              <button class="action-btn" aria-label="compare">
                <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
              </button>

            </div>
          </div>

          <div class="card-content">

            <div class="price">
              <del class="del">$39.00</del>
              <span class="span">$11.00</span>
            </div>

            <h3>
              <a href="#" class="card-title">Coffee Bean Caffeine Eye Cream</a>
            </h3>

            <div class="card-rating">

              <div class="rating-wrapper" aria-label="5 star rating">
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
                <ion-icon name="star" aria-hidden="true"></ion-icon>
              </div>

              <p class="rating-text">1170 reviews</p>

            </div>

            <!-- Add to Cart button -->
            <form action="AddPanierServlet" method="post">
                <input type="hidden" name="id" value="11">
                <input type="hidden" name="name" value="Eyel cleanser">
                <input type="hidden" name="imageUrl" value="./assets/images/product-11.jpg">
                <input type="hidden" name="price" value="11.00">
                <input type="hidden" name="description" value="A gentle Eyel cleanser.">
                <input type="hidden" name="marque" value="Brand 11">
                <button class="btn add-to-cart-btn">Add to Cart</button>
              </form>

          </div>

        </div>
      </li>

    </ul>

  </div>
</section>





      <!-- 
        - #BANNER
      -->

      <section class="section banner" aria-label="banner" data-section>
        <div class="container">

          <ul class="banner-list">

            <li>
              <div class="banner-card banner-card-1 has-before hover:shine">

                <p class="card-subtitle">New Collection</p>

                <h2 class="h2 card-title">Discover Our Autumn Skincare</h2>

                <a href="#" class="btn btn-secondary">Explore More</a>

                <div class="has-bg-image" style="background-image: url('./assets/images/banner-1.jpg')"></div>

              </div>
            </li>

            <li>
              <div class="banner-card banner-card-2 has-before hover:shine">

                <h2 class="h2 card-title">25% off Everything</h2>

                <p class="card-text">
                  Makeup with extended range in colors for every human.
                </p>

                <a href="#" class="btn btn-secondary">Shop Sale</a>

                <div class="has-bg-image" style="background-image: url('./assets/images/banner-2.jpg')"></div>

              </div>
            </li>

          </ul>

        </div>
      </section>





      <!-- 
        - #FEATURE
      -->

      <section class="section feature" aria-label="feature" data-section>
        <div class="container">

          <h2 class="h2-large section-title">Why Shop with Cosmico?</h2>

          <ul class="flex-list">

            <li class="flex-item">
              <div class="feature-card">

                <img src="./assets/images/feature-1.jpg" width="204" height="236" loading="lazy" alt="Guaranteed PURE"
                  class="card-icon">

                <h3 class="h3 card-title">Guaranteed PURE</h3>

                <p class="card-text">
                  All Grace formulations adhere to strict purity standards and will never contain harsh or toxic
                  ingredients
                </p>

              </div>
            </li>

            <li class="flex-item">
              <div class="feature-card">

                <img src="./assets/images/feature-2.jpg" width="204" height="236" loading="lazy"
                  alt="Completely Cruelty-Free" class="card-icon">

                <h3 class="h3 card-title">Completely Cruelty-Free</h3>

                <p class="card-text">
                  All Grace formulations adhere to strict purity standards and will never contain harsh or toxic
                  ingredients
                </p>

              </div>
            </li>

            <li class="flex-item">
              <div class="feature-card">

                <img src="./assets/images/feature-3.jpg" width="204" height="236" loading="lazy"
                  alt="Ingredient Sourcing" class="card-icon">

                <h3 class="h3 card-title">Ingredient Sourcing</h3>

                <p class="card-text">
                  All Grace formulations adhere to strict purity standards and will never contain harsh or toxic
                  ingredients
                </p>

              </div>
            </li>

          </ul>

        </div>
      </section>





      <!-- 
        - #OFFER
      -->

      <section class="section offer" id="offer" aria-label="offer" data-section>
        <div class="container">

          <figure class="offer-banner">
            <img src="./assets/images/offer-banner-1.jpg" width="305" height="408" loading="lazy" alt="offer products"
              class="w-100">

            <img src="./assets/images/offer-banner-2.jpg" width="450" height="625" loading="lazy" alt="offer products"
              class="w-100">
          </figure>

          <div class="offer-content">

            <p class="offer-subtitle">
              <span class="span">Special Offer</span>

              <span class="badge" aria-label="20% off">-20%</span>
            </p>

            <h2 class="h2-large section-title">Mountain Pine Bath Oil</h2>

            <p class="section-text">
              Made using clean, non-toxic ingredients, our products are designed for everyone.
            </p>

            <div class="countdown">

              <span class="time" aria-label="days">15</span>
              <span class="time" aria-label="hours">21</span>
              <span class="time" aria-label="minutes">46</span>
              <span class="time" aria-label="seconds">08</span>

            </div>

            <a href="#" class="btn btn-primary">Get Only $39.00</a>

          </div>

        </div>
      </section>

      <!-- 
        - #BLOG
      -->

      <section class="section blog" id="blog" aria-label="blog" data-section>
        <div class="container">

          <h2 class="h2-large section-title">More to Discover</h2>

          <ul class="flex-list">

            <li class="flex-item">
              <div class="blog-card">

                <figure class="card-banner img-holder has-before hover:shine" style="--width: 700; --height: 450;">
                  <img src="./assets/images/blog-1.jpg" width="700" height="450" loading="lazy" alt="Find a Store"
                    class="img-cover">
                </figure>

                <h3 class="h3">
                  <a href="#" class="card-title">Find a Store</a>
                </h3>

                <a href="#" class="btn-link">
                  <span class="span">Our Store</span>

                  <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
                </a>

              </div>
            </li>

            <li class="flex-item">
              <div class="blog-card">

                <figure class="card-banner img-holder has-before hover:shine" style="--width: 700; --height: 450;">
                  <img src="./assets/images/blog-2.jpg" width="700" height="450" loading="lazy" alt="From Our Blog"
                    class="img-cover">
                </figure>

                <h3 class="h3">
                  <a href="#" class="card-title">From Our Blog</a>
                </h3>

                <a href="#" class="btn-link">
                  <span class="span">Our Store</span>

                  <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
                </a>

              </div>
            </li>

            <li class="flex-item">
              <div class="blog-card">

                <figure class="card-banner img-holder has-before hover:shine" style="--width: 700; --height: 450;">
                  <img src="./assets/images/blog-3.jpg" width="700" height="450" loading="lazy" alt="Our Story"
                    class="img-cover">
                </figure>

                <h3 class="h3">
                  <a href="#" class="card-title">Our Story</a>
                </h3>

                <a href="#" class="btn-link">
                  <span class="span">Our Store</span>

                  <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
                </a>

              </div>
            </li>

          </ul>

        </div>
      </section>

    </article>
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
<!-- JavaScript pour le scroll automatique -->
<script>
  document.addEventListener("DOMContentLoaded", function() {
    if (window.location.hash === '#shop') {
      const shopSection = document.getElementById('shop');
      if (shopSection) {
        shopSection.scrollIntoView({ behavior: 'smooth' });
      }
    }
  });
</script>

</body>
</html>