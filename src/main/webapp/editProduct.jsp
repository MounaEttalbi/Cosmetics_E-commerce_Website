<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>edit product</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/5.5.2/ionicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet" href="cssgit.css">

  <!-- favicon -->
  <link rel="shortcut icon" href="favicon.svg" type="image/svg+xml">

  <!-- custom css link -->
  <link rel="stylesheet" href="style.css">

  <!-- google font link -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@400;500;600;700;800&display=swap" rel="stylesheet">

  <!-- preload images -->
</head>
</head>
<body>

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
        <form action="ProductServlet" method="post">
          <input type="text" id="search" name="search" class="form-control form-control-lg" placeholder="Search product" class="search-field">
          <button class="search-submit" aria-label="search" type="submit" name="action" value="search">
            <i class="fa fa-search" style="font-size:18px"></i>
          </button>
        </form>
        
      </div>

      <a href="#" class="logo">
        <img src="logo.png" width="179" height="26" alt="Glowing">
      </a>

      <div class="header-actions">
        <a href="login.html" class="header-action-btn" aria-label="user">
          <i class="fa fa-user" style="font-size:18px"></i>
        </a>
        <button class="header-action-btn" aria-label="favourite item">
          <i class="fa fa-star" style="font-size:18px"></i>
          <span class="btn-badge">0</span>
        </button>
        <button class="header-action-btn" aria-label="cart item">
          <data class="btn-text" value="0">$0.00</data>
          <i class="fa fa-shopping-bag" style="font-size:18px"></i>
        </button>
      </div>

      <nav class="navbar">
        <ul class="navbar-list">
          <li>
            <a href="index.html" class="navbar-link has-after">Home</a>
          </li>
          <li>
            <a href="listerpr.html" class="navbar-link has-after">products</a>
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

<div class="container3">
  <div class="HHH">
    <h1 class="mb-4"> Edit a product </h1>
  </div>
  <div class="container2">
    <div class="row justify-content-center">
      <div class="col-md-16">
        <div class="border p-4">
          <form class="form" action="ProductServlet" method="post">
            <div class="form-row">
              <div class="form-group col-md-4">
                <label for="id">ID:</label>
                 <input type="text" id="productId" name="productId" value="${product.id}" class="form-control form-control-lg" readonly>
               </div>
              <div class="form-group col-md-4">
                <label for="name">Nom:</label>
                            <input type="text" id="name" name="name" class="form-control form-control-lg" value="${product.name}" required>
              </div>
              <div class="form-group col-md-4">
                 <label for="imageUrl">URL de l'image:</label>
                            <input type="text" id="imageUrl" name="imageUrl" class="form-control form-control-lg" value="${product.imageUrl}" required>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-4">
               <label for="price">Prix:</label>
                            <input type="text" id="price" name="price" class="form-control form-control-lg" value="${product.price}" required>
              </div>
              <div class="form-group col-md-4">
                 <label for="description">Description:</label>
                            <textarea id="description" name="description" class="form-control form-control-lg" required>${product.description}</textarea>
              </div>
              <div class="form-group col-md-4">
              <label for="marque">Marque:</label>
                            <input type="text" id="marque" name="marque" class="form-control form-control-lg" value="${product.marque}" required>
              </div>
            </div>
            <div class="form-group col-md-6 text-right">
              <button type="submit" name="action" value="update" class="B1">edit</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Ajoutez ici vos liens vers les fichiers JavaScript supplémentaires -->
</body>
</html>
