/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.abien.patterns.business.httpevents.broker;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author farca
 */
@Entity
@Table(name = "PRODUSE")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Produse.findAll", query = "SELECT p FROM Produse p"),
    @NamedQuery(name = "Produse.findById", query = "SELECT p FROM Produse p WHERE p.id = :id"),
    @NamedQuery(name = "Produse.findByName", query = "SELECT p FROM Produse p WHERE p.name = :name"),
    @NamedQuery(name = "Produse.findByUnit", query = "SELECT p FROM Produse p WHERE p.unit = :unit"),
    @NamedQuery(name = "Produse.findByQuantity", query = "SELECT p FROM Produse p WHERE p.quantity = :quantity"),
    @NamedQuery(name = "Produse.findByPrice", query = "SELECT p FROM Produse p WHERE p.price = :price")})
public class Produse implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Size(max = 30)
    @Column(name = "NAME")
    private String name;
    @Size(max = 10)
    @Column(name = "UNIT")
    private String unit;
    @Column(name = "QUANTITY")
    private Integer quantity;
    @Column(name = "PRICE")
    private Integer price;

    public Produse() {
    }

    public Produse(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Produse)) {
            return false;
        }
        Produse other = (Produse) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.abien.patterns.business.httpevents.broker.Produse[ id=" + id + " ]";
    }
    
}
