package com.commerce.service;

import com.commerce.entities.Product;

public class ProductManager extends ServiceManager_<Product> {

    static {
        tClass = Product.class;
    }

}
