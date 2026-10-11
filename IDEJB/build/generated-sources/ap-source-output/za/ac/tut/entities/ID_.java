package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.Employee;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2026-10-11T14:40:21")
@StaticMetamodel(ID.class)
public class ID_ { 

    public static volatile SingularAttribute<ID, Date> creationDate;
    public static volatile SingularAttribute<ID, Employee> employee;
    public static volatile SingularAttribute<ID, Long> verificationID;
    public static volatile SingularAttribute<ID, String> validID;

}