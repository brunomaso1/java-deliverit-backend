/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades.servicios;

import com.google.gson.Gson;
import java.util.List;
import javax.persistence.EntityManager;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;


/**
 *
 * @author DeliverIT
 */
public abstract class AbstractFacade<T> {

    private Class<T> entityClass;

    public AbstractFacade(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    protected abstract EntityManager getEntityManager();

    public RespuestaGeneral create(T entity) {
       RespuestaGeneral r = new RespuestaGeneral();
        try {
            
            
            getEntityManager().persist(entity);    
           
            // Se utiliza flush para obtener el Id del nuevo objeto en la base de datos.
            getEntityManager().flush();
            Gson gson = new Gson();
            String jsonObject = gson.toJson(entity);
           
            r.setCodigo(RespuestaGeneral.CODIGO_OK);
            r.setMensaje(RespuestaGeneral.MENSAJE_OK);
            r.setObjeto(jsonObject);
            
        } catch (Exception e) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR);
            r.setMensaje(e.getMessage());
            r.setObjeto(null);
        }   
        return r;
    }

    public void edit(T entity) {
        getEntityManager().merge(entity);
    }

    public void remove(T entity) {
        getEntityManager().remove(getEntityManager().merge(entity));
    }

    public T find(Object id) {
        return getEntityManager().find(entityClass, id);
    }

    public List<T> findAll() {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        cq.select(cq.from(entityClass));
        return getEntityManager().createQuery(cq).getResultList();
    }

    public List<T> findRange(int[] range) {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        cq.select(cq.from(entityClass));
        javax.persistence.Query q = getEntityManager().createQuery(cq);
        q.setMaxResults(range[1] - range[0] + 1);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        javax.persistence.criteria.CriteriaQuery cq = getEntityManager().getCriteriaBuilder().createQuery();
        javax.persistence.criteria.Root<T> rt = cq.from(entityClass);
        cq.select(getEntityManager().getCriteriaBuilder().count(rt));
        javax.persistence.Query q = getEntityManager().createQuery(cq);
        return ((Long) q.getSingleResult()).intValue();
    }
    
}
