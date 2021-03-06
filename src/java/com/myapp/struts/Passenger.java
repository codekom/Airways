package com.myapp.struts;
// Generated Jun 27, 2015 11:29:21 AM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Passenger generated by hbm2java
 */
public class Passenger extends org.apache.struts.action.ActionForm implements java.io.Serializable {


     private String name;
     private String passw;
     private String email;
     private String phone;
     private String sq;
     private String ans;
     private String sq2;
     private String ans2;
     private Set bookings = new HashSet(0);

    public Passenger() {
    }

	
    public Passenger(String name) {
        this.name = name;
    }
    public Passenger(String name, String passw, String email, String phone, Set bookings) {
       this.name = name;
       this.passw = passw;
       this.email = email;
       this.phone = phone;
       this.bookings = bookings;
    }
   
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getPassw() {
        return this.passw;
    }
    
    public void setPassw(String passw) {
        this.passw = passw;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public Set getBookings() {
        return this.bookings;
    }
    
    public void setBookings(Set bookings) {
        this.bookings = bookings;
    }

    /**
     * @return the sq
     */
    public String getSq() {
        return sq;
    }

    /**
     * @param sq the sq to set
     */
    public void setSq(String sq) {
        this.sq = sq;
    }

    /**
     * @return the ans
     */
    public String getAns() {
        return ans;
    }

    /**
     * @param ans the ans to set
     */
    public void setAns(String ans) {
        this.ans = ans;
    }

    /**
     * @return the sq2
     */
    public String getSq2() {
        return sq2;
    }

    /**
     * @param sq2 the sq2 to set
     */
    public void setSq2(String sq2) {
        this.sq2 = sq2;
    }

    /**
     * @return the ans2
     */
    public String getAns2() {
        return ans2;
    }

    /**
     * @param ans2 the ans2 to set
     */
    public void setAns2(String ans2) {
        this.ans2 = ans2;
    }




}


