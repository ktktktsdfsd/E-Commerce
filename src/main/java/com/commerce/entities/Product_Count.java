package com.commerce.entities;

import javax.persistence.Embeddable;

@Embeddable
public class Product_Count {

    private int productId;

    private int orderCount;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(int orderCount) {
        this.orderCount = orderCount;
    }
}
