/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Employee;

/**
 *
 * @author IC MOTS
 */
@Local
public interface EmployeeFacadeLocal {

    void create(Employee employee);

    void edit(Employee employee);

    void remove(Employee employee);

    Employee find(Object id);

    List<Employee> findAll();

    List<Employee> findRange(int[] range);

    int count();
    
    List <Employee> findByUserName(String userName);
    
}
