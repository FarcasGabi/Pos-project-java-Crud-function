package service;

import javax.ejb.Stateless;
import javax.interceptor.Interceptors;

/**
 *
 * @author admin
 */
@Stateless
@Interceptors(PositionInterceptor.class)
public class SampleService { // UseCaseController ???
    //@Interceptors(PositionInterceptor.class)

    public boolean addPosition(String id, String name) {
        //adaug in DataBase
        //if (succes) notify()
        return true;// s-a adaugat cu succes      
    }
    
    public boolean validate(String id, String name){
        //...
        return true;
    }
    //si alte Bussines Methods:
    //getPositionById(...)
    //getAllPosition(...)
    //deletePosition(...)

    //metoda de notificate pentru adaugare cu succes
    //notify() ???? => Low Cohesion
}
