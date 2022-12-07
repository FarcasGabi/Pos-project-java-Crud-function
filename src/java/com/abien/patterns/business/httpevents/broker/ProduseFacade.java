/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.abien.patterns.business.httpevents.broker;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author farca
 */
@Stateless
public class ProduseFacade extends AbstractFacade<Produse> {

    @PersistenceContext(unitName = "HttpEventsPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProduseFacade() {
        super(Produse.class);
    }
    
}
