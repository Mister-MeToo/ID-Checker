/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.ID;

/**
 *
 * @author IC MOTS
 */
@Local
public interface IDFacadeLocal {

    void create(ID iD);

    void edit(ID iD);

    void remove(ID iD);

    ID find(Object id);

    List<ID> findAll();

    List<ID> findRange(int[] range);

    int count();
    
    
    
}
