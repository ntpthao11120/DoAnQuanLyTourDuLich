package com.ntpt.pojos;

import com.ntpt.pojos.Comment;
import com.ntpt.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-11-13T16:58:38")
@StaticMetamodel(News.class)
public class News_ { 

    public static volatile SingularAttribute<News, Date> createdDate;
    public static volatile SingularAttribute<News, String> createdBy;
    public static volatile CollectionAttribute<News, Comment> commentCollection;
    public static volatile SingularAttribute<News, Date> modifiedDate;
    public static volatile SingularAttribute<News, String> description;
    public static volatile SingularAttribute<News, String> featureImg;
    public static volatile SingularAttribute<News, String> modifiedBy;
    public static volatile SingularAttribute<News, Integer> id;
    public static volatile SingularAttribute<News, String> title;
    public static volatile SingularAttribute<News, User> user;

}