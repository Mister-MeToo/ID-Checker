package za.ac.tut.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.ID;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2026-10-11T14:40:21")
@StaticMetamodel(Employee.class)
public class Employee_ { 

    public static volatile SingularAttribute<Employee, String> empID;
    public static volatile SingularAttribute<Employee, String> userName;
    public static volatile ListAttribute<Employee, ID> verifications;

}