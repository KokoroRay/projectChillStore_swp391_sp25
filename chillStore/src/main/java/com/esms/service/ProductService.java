package com.esms.service;

import com.esms.model.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ProductService {
    List<Product> findAll();
    Page<Product> getAllProducts(Pageable pageable);
    Product getProductById(Integer productId);
    List<Product> searchProducts(String keyword);
    Page<Product> searchProductsWithFilters(
            String keyword,
            Integer categoryId,
            Integer brandId,
            Double minPrice,
            Double maxPrice,
            Integer minStock,
            String sortBy,
            String sortDir,
            Pageable pageable,
            Boolean status
    );
    List<Product> filterByStatus(boolean status);
    Product updateProduct(Integer productId, Product product);
    void deleteProduct(Integer productId);

}
