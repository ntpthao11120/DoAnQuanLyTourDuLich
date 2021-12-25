package com.ntpt.pojos;

import com.ntpt.pojos.CategoryCar;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-11-13T16:58:38")
@StaticMetamodel(Car.class)
public class Car_ { 

    public static volatile SingularAttribute<Car, String> image;
    public static volatile SingularAttribute<Car, Long> price;
    public static volatile SingularAttribute<Car, String> name;
    public static volatile SingularAttribute<Car, String> description;
    public static volatile SingularAttribute<Car, Integer> id;
    public static volatile SingularAttribute<Car, CategoryCar> category;

}