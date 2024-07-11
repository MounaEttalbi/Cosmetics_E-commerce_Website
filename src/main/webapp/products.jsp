<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gestion</title>

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
  
  <style>
  .header-top {
      max-width: 1200px; /* Définir la largeur maximale */
      margin: 0 auto; /* Centrer horizontalement */
      background-color: #fff; /* Exemple de couleur de fond */
      padding: 0px 10px; /* Espacement intérieur */
    }
    </style>
</head>

<body id="top">

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
        <form action="ProductServlet" method="post">
          <input type="text" id="search" name="search" class="form-control form-control-lg" placeholder="Search product" class="search-field">
          <button class="search-submit" aria-label="search" type="submit" name="action" value="search">
            <i class="fa fa-search" style="font-size:16px"></i>
          </button>
        </form>
     
      </div>

      <a href="#" class="logo">
        <img src="./assets/images/logo4.png" width="179" height="26" alt="Glowing">
      </a>

      <div class="header-actions">
        <a href="login.jsp" class="header-action-btn" aria-label="user">
          <i class="fa fa-user" style="font-size:18px"></i>
        </a>
        
         
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

<div class="sidebar">
  <div class="mobile-navbar" data-navbar>
    <div class="wrapper">
      <a href="#" class="logo">
        <img src="./assets/images/logo4.png" width="179" height="26" alt="Glowing">
      </a>
      <button class="nav-close-btn" aria-label="close menu" data-nav-toggler>
        <i class="fas fa-times"></i>
      </button>
    </div>
    <ul class="navbar-list">
      <li>
        <a href="index.jsp" class="navbar-link" data-nav-link>Home</a>
      </li>
      <li>
        <a href="#collection" class="navbar-link" data-nav-link>products</a>
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

<div class="container3"class="img js-fullheight" style="background-image: url(images/bglog.webp);"
	id="top">
  <div class="HHH">
    <h1 class="mb-4">Add a product </h1>
  </div>
  <div class="container2">
    <div class="row justify-content-center">
      <div class="col-md-16">
        <div class="border p-4">
          <form class="form" action="ProductServlet" method="post">
            <div class="form-row">
              <div class="form-group col-md-4">
              <label for="id">ID:</label>
              <input type="text" id="id" name="id" class="form-control form-control-lg" required>
               </div>
              <div class="form-group col-md-4">
                <label for="name">Nom:</label>
                <input type="text" id="name" name="name" class="form-control form-control-lg" required>
              </div>
              <div class="form-group col-md-4">
                <label for="imageUrl">URL de l'image:</label>
                <input type="text" id="imageUrl" name="imageUrl" class="form-control form-control-lg" required>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-4">
                <label for="price">Prix:</label>
                <input type="text" id="price" name="price" class="form-control form-control-lg" required>
              </div>
              <div class="form-group col-md-4">
                <label for="description">Description:</label>
                <textarea id="description" name="description" class="form-control form-control-lg" required></textarea>
              </div>
              <div class="form-group col-md-4">
                <label for="marque">Marque:</label>
               <input type="text" id="marque" name="marque" class="form-control form-control-lg" required>
              </div>
            </div>
            <div class="form-group col-md-6 text-right">
              <button type="submit" name="action" value="add" class="B1">Add</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="HHH">
  <h1 class="mb-4">Our products</h1>
</div>

<div class="container">
    <div class="row">
        <c:choose>
            <c:when test="${not empty searchResults}">
                <c:forEach var="product" items="${searchResults}">
                    <div class="col-md-2">
                        <div class="shop-card">
                            <div class="card-banner img-holder">
                                <img src="${product.imageUrl}" loading="lazy" alt="${product.name}" class="img-cover" width="200" height="200">
                            </div>
                            <div class="card-content">
                                <div class="price">
                                    <span class="span">${product.price} MAD</span>
                                </div>
                                <div class="brand">
                                    <span class="span">${product.marque}</span>
                                </div>
                                <h3 class="card-title">
                                    <a href="#" class="card-title">${product.name}</a>
                                </h3>
                                <!-- Boutons Modifier et Supprimer -->
                                <div class="product-actions">
                                      <form action="editProduct.jsp" method="post">
                                      <input type="hidden" name="productId" value="${product.id}">
                                       <button type="submit" name="action" value="edit" class="action-btn" aria-label="Modifier" title="Modifier">
                                            <i class="fa fa-edit" style="font-size:18px"></i>
                                       </button>
                                      </form>
                                     <button type="button" class="action-btn delete-product-btn" aria-label="Supprimer" title="Supprimer" data-product-id="${product.id}">
                                     <i class="fa fa-trash-alt" style="font-size:18px"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <c:forEach var="product" items="${products}">
                    <div class="col-md-2">
                        <div class="shop-card">
                            <div class="card-banner img-holder">
                                <img src="${product.imageUrl}" loading="lazy" alt="${product.name}" class="img-cover" width="200" height="200">
                            </div>
                            <div class="card-content">
                                <div class="price">
                                    <span class="span">${product.price} MAD</span>
                                </div>
                                <div class="brand">
                                    <span class="span">${product.marque}</span>
                                </div>
                                <h3 class="card-title">
                                    <a href="#" class="card-title">${product.name}</a>
                                </h3>
                                <!-- Boutons Modifier et Supprimer -->
                                <div class="product-actions" >
                                     <form action="ProductServlet" method="post">
                                      <input type="hidden" name="productId" value="${product.id}">
                                       <button type="submit" name="action" value="edit" class="action-btn" aria-label="Modifier" title="Modifier">
                                            <i class="fa fa-edit" style="font-size:18px"></i>
                                       </button>
                                      </form>
                                    <button type="button" class="action-btn delete-product-btn" aria-label="Supprimer" title="Supprimer" data-product-id="${product.id}">
                                      <i class="fa fa-trash-alt" style="font-size:18px"></i>
                                      </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<div id="confirmationModal" class="modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Confirmation de suppression</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Êtes-vous sûr de vouloir supprimer ce produit ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="cancelDeleteBtn" data-dismiss="modal">Annuler</button>
                <button type="button" class="btn btn-danger" id="confirmDeleteBtn">Oui, supprimer</button>
            </div>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
function deleteProduct(productId) {
    // Vous pouvez utiliser une requête AJAX pour supprimer le produit sans recharger la page
    $.ajax({
        type: 'POST',
        url: 'ProductServlet',
        data: {
            action: 'delete',
            productId: productId
        },
        success: function(response) {
            console.log('Réponse du serveur après la suppression :', response);
            // Vous pouvez mettre à jour l'interface utilisateur ici si nécessaire
            // Par exemple, supprimer visuellement le produit de la liste
            // Cela empêchera également la boîte de dialogue de se fermer immédiatement
            // Vous pouvez également recharger la page ici si nécessaire
            // Ici, nous rechargeons simplement la page pour refléter les changements
            window.location.reload();
        },
        error: function(xhr, status, error) {
            console.error(xhr.responseText);
            alert('Une erreur s\'est produite lors de la suppression du produit.');
        }
    });
}

// Ajouter un gestionnaire d'événements pour le clic sur le bouton de suppression
var deleteButtons = document.querySelectorAll(".delete-product-btn");
deleteButtons.forEach(function(button) {
    button.addEventListener("click", function() {
        // Récupérer l'ID du produit à supprimer
        var productId = button.getAttribute("data-product-id");
        // Appeler la fonction de suppression directement
        deleteProduct(productId);
    });
});
</script>

</body>
</html>
