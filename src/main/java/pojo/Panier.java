package pojo;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Panier {
    private List<Product> products;

    public Panier() {
        products = new ArrayList<>();
    }

    public void addProduct(Product product) {
        products.add(product);
    }

    public List<Product> getProducts() {
        return products;
    }
    public void deleteProduct(int id) {
        // Parcourir la liste des produits
        Iterator<Product> iterator = products.iterator();
        while (iterator.hasNext()) {
            Product product = iterator.next();
            // Vérifier si l'identifiant du produit correspond
            if (product.getId() == id) {
                // Supprimer le produit
                iterator.remove();
                break; // Sortir de la boucle après avoir trouvé et supprimé le produit
            }
        }
    }
}
