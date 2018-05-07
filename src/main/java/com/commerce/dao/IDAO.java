package com.commerce.dao;

import org.jinq.orm.stream.JinqStream;

import java.util.List;

interface IDAO<T> {

    T get(Integer id);

    void insert(T entity);

    void update(T entity);

    void delete(T entity);

    void delete(Integer id);

    List<T> getList();

    List<T> getList(JinqStream.Where<T, Exception> where);
}
