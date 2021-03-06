package com.commerce.entities;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class Product_Count implements Serializable {

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
