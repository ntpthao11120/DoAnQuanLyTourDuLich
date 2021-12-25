package com.ntpt.pojos;

import com.ntpt.pojos.Car;
import com.ntpt.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-11-13T16:58:38")
@StaticMetamodel(OrderCar.class)
public class OrderCar_ { 

    public static volatile SingularAttribute<OrderCar, Long> amount;
    public static volatile SingularAttribute<OrderCar, Integer> id;
    public static volatile SingularAttribute<OrderCar, Date> dateRent;
    public static volatile SingularAttribute<OrderCar, User> user;
    public static volatile SingularAttribute<OrderCar, Long> dateNum;
    public static volatile SingularAttribute<OrderCar, Date> createDate;
    public static volatile SingularAttribute<OrderCar, Car> carId;
    public static volatile SingularAttribute<OrderCar, String> status;

}