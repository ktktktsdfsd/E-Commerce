package com.commerce.dao;

import org.jinq.orm.stream.JinqStream;

import javax.persistence.EntityManager;
import java.util.List;

public class Dao<T> implements IDAO<T> {

    private Class<T> tClass;

    public Dao(Class<T> tClass) {
        this.tClass = tClass;
    }

    @Override
    public T get(Integer id) {
        EntityManager entityManager = Util.createEntityManager();
        try {
            return entityManager.find(tClass, id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
        return null;
    }

    @Override
    public void insert(T entity) {
        EntityManager entityManager = Util.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(entity);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }

    @Override
    public void update(T entity) {
        EntityManager entityManager = Util.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.merge(entity);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }

    @Override
    public void delete(T entity) {
        EntityManager entityManager = Util.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.remove(entity);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }

    @Override
    public void delete(Integer id) {
        EntityManager entityManager = Util.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.remove(get(id));
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }

    @Override
    public List<T> getList() {
        EntityManager entityManager = Util.createEntityManager();
        try {
            return Util.JPA_STREAM_PROVIDER.streamAll(entityManager, tClass).toList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
        return null;
    }

    @Override
    public List<T> getList(JinqStream.Where<T, Exception> where) {
        EntityManager entityManager = Util.createEntityManager();
        try {
            return Util.JPA_STREAM_PROVIDER.streamAll(entityManager, tClass).where(where).toList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
        return null;
    }
}
