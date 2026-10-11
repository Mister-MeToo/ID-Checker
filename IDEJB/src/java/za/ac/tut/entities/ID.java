/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author IC MOTS
 */
@Table(name="ID_TBL")
@Entity
public class ID implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long verificationID;
    
    
    @Column(name="VALID_ID")
    private String validID;
    
    @Column(name="TIMESTAMP")
    @Temporal(TemporalType.TIMESTAMP)
    private Date creationDate;
    
    @ManyToOne
    @JoinColumn(name = "EMP_ID")
    private Employee employee;

    public ID() {
    }

    public ID(String validID, Date creationDate, Employee employee) {
        this.validID = validID;
        this.creationDate = creationDate;
        this.employee = employee;
    }

    public Long getVerificationID() {
        return verificationID;
    }

    public void setVerificationID(Long verificationID) {
        this.verificationID = verificationID;
    }

    public String getValidID() {
        return validID;
    }

    public void setValidID(String validID) {
        this.validID = validID;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
    

}
