package edu.upc.dao;

public class User {
    private String id;
    private String password;
    private String card;
    private double wage;
    private String call;
    private Integer age;

    public User() {
        super();
    }

    public User(String id, String password, String card, double wage, String call, Integer age) {
        super();
        this.id = id;
        this.password = password;
        this.card = card;
        this.wage = wage;
        this.call = call;
        this.age = age;
    }

    public User(String id, String password) {
        super();
        this.id = id;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public double getWage() {
        return wage;
    }

    public void setWage(double wage) {
        this.wage = wage;
    }

    public String getCall() {
        return call;
    }

    public void setCall(String call) {
        this.call = call;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    //@override
    //+ toString():String
}
