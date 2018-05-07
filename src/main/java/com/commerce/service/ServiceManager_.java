package com.commerce.service;

import com.commerce.dao.Dao;
import org.jinq.orm.stream.JinqStream;

import java.util.List;

class ServiceManager_<T> implements IServiceManager_<T> {

    private Class tClass;
    private Dao<T> dao;

    public ServiceManager_(Class tClass) {
        this.tClass = tClass;
        dao = new Dao<>(tClass);
    }

    @Override
    public T get(Integer id) {
        return dao.get(id);
    }

    @Override
    public void insert(T entity) {
        dao.insert(entity);
    }

    @Override
    public void update(T entity) {
        dao.update(entity);
    }

    @Override
    public void delete(T entity) {
        dao.delete(entity);
    }

    @Override
    public void delete(Integer id) {
        dao.delete(id);
    }

    @Override
    public List<T> getList() {
        return dao.getList();
    }

    @Override
    public List<T> getList(JinqStream.Where<T, Exception> where) {
        return dao.getList(where);
    }
}
