package com.commerce.test;

import com.commerce.entities.*;
import com.commerce.service.CategoryManager;
import com.commerce.service.MemberManager;
import com.commerce.service.OrderManager;
import com.commerce.service.ProductManager;
import com.github.javafaker.Faker;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class TestInitialize {

    public static void initializeDatabase() {

        CategoryManager categoryManager = new CategoryManager();
        ProductManager productManager = new ProductManager();
        OrderManager orderManager = new OrderManager();
        MemberManager memberManager = new MemberManager();


        Faker faker = new Faker(new Locale("tr", "TR"));

        // TODO Kategori Ekleme
        String[] caregories = {"Beyaz Eşya", "Elektronik", "Oyun", "Kitap & Müzik", "Kırtasiye", "Giyim",
                "Gıda", "Temizlik"};
        for (String categoryName : caregories) {
            Category category = new Category();
            category.setName(categoryName);

            categoryManager.insert(category);
        }

        // TODO Üye Ekleme
        for (int i = 0; i < 10; i++) {
            Member member = new Member();
            member.setName(faker.name().firstName());
            member.setSurname(faker.name().lastName());
            member.setAdress(faker.address().fullAddress());
            member.setMail("_" + i + faker.internet().emailAddress());
            member.setPassword(faker.internet().password(8, 25));

            memberManager.insert(member);
        }

        memberManager.insert(new Member(
                "user", "user", "user@gmail.com", "user",
                "adres", false, true
        ));

        // TODO Admin ekleme
        memberManager.insert(new Member(
                "admin", "admin", "admin@gmail.com", "admin",
                "adres", true, true
        ));

        // TODO Ürün Ekleme
        List<Category> categoryList = categoryManager.getList();
        for (int i = 0; i < 20; i++) {
            Product product = new Product();
            product.setName(faker.commerce().productName());
            product.setDescription(faker.lorem().sentence(5));
            product.setPrice(Double.parseDouble(faker.commerce().price().replace(',', '.')));
            product.setTitle(faker.commerce().productName());
            product.setCategory(categoryList.get(faker.number().numberBetween(0, categoryList.size() - 1)));
            product.setPhotoPath(faker.internet().image());

            productManager.insert(product);
        }
        // TODO Sipariş Ekleme
        List<Product> productList = productManager.getList();
        List<Member> memberList = memberManager.getList();
        for (int i = 0; i < 30; i++) {
            Order order = new Order();
            order.setDate(faker.date().birthday());
            order.setMember(memberList.get(faker.number().numberBetween(0, memberList.size() - 1)));

            double sumPrice = 0;
            for (int k = 0; k < faker.number().numberBetween(2, 4); k++) {
                Product_Count product_count = new Product_Count();
                int randomIndex = (i + k) % productList.size();
                product_count.setProductId(randomIndex);
                product_count.setOrderCount(faker.number().numberBetween(1, 3));
                sumPrice += productList.get(randomIndex).getPrice() * product_count.getOrderCount();
                order.getProduct_counts().add(product_count);
            }
            order.setSumPrice(sumPrice);

            orderManager.insert(order);
        }
    }
}
