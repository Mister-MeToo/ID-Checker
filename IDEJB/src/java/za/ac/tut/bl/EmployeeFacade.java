/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Employee;

/**
 *
 * @author IC MOTS
 */
@Stateless
public class EmployeeFacade extends AbstractFacade<Employee> implements EmployeeFacadeLocal {

    @PersistenceContext(unitName = "IDEJBPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EmployeeFacade() {
        super(Employee.class);
    }

    @Override
    public List<Employee> findByUserName(String userName) {
        String queryStr = "select e from Employee e where LOWER(e.userName) LIKE LOWER(?1)";
        Query query = em.createQuery(queryStr);
        query.setParameter(1, "%" + userName + "%");
        List <Employee> employees = query.getResultList();
        return employees;
    }
    
}
