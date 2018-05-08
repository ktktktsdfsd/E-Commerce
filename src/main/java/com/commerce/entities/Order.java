package com.commerce.entities;

import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "tbl_order")
@DynamicUpdate
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    private double sumPrice;

    @Column(nullable = false)
    private Date date;

    private boolean isDeliver = false;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "memberId")
    private Member member;

    @ElementCollection
    @JoinTable(name = "product_orderCount", joinColumns = @JoinColumn(name = "productCountId"))
    private List<Product_Count> product_counts = new ArrayList<>();

    public Order(){
    }

    public Order(double sumPrice, Date date) {
        this.sumPrice = sumPrice;
        this.date = date;
    }

    public Order(double sumPrice, Date date, boolean isDeliver) {
        this.sumPrice = sumPrice;
        this.date = date;
        this.isDeliver = isDeliver;
    }

    public int getId() {
        return id;
    }

    public double getSumPrice() {
        return sumPrice;
    }

    public void setSumPrice(double sumPrice) {
        this.sumPrice = sumPrice;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isDeliver() {
        return isDeliver;
    }

    public void setDeliver(boolean deliver) {
        isDeliver = deliver;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public Collection<Product_Count> getProduct_counts() {
        return product_counts;
    }

    public void setProduct_counts(List<Product_Count> product_counts) {
        this.product_counts = product_counts;
    }
}
