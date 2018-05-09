package com.commerce.service;

import org.jinq.orm.stream.JinqStream;

import java.util.List;

interface IServiceManager_<T> {

    T get(Integer id);

    T get(JinqStream.Where<T, Exception> where);

    void insert(T entity);

    void update(T entity);

    void delete(T entity);

    void delete(Integer id);

    List<T> getList();

    List<T> getList(JinqStream.Where<T, Exception> where);
}
