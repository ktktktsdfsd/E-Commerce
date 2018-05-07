package com.commerce.service;

import com.commerce.entities.Product;

public class ProductManager extends ServiceManager_<Product> {

    public ProductManager() {
        super(Product.class);
    }
}
