/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author hetpatel
 */
import java.io.Serializable;

public class PTMember implements Serializable {

    private String sir_name, first_name, email;
    private String contact1, whatsapp;
    private String dob, price, gender, first_time;
    private String address2, city;
    private String issue, detail;
    private int age, weight, height;

    public PTMember(){}

    public String getSir_name(){ return sir_name; }
    public void setSir_name(String sir_name){ this.sir_name = sir_name; }

    public String getFirst_name(){ return first_name; }
    public void setFirst_name(String first_name){ this.first_name = first_name; }

    public String getEmail(){ return email; }
    public void setEmail(String email){ this.email = email; }

    public String getContact1(){ return contact1; }
    public void setContact1(String contact1){ this.contact1 = contact1; }

    public String getWhatsapp(){ return whatsapp; }
    public void setWhatsapp(String whatsapp){ this.whatsapp = whatsapp; }

    public String getDob(){ return dob; }
    public void setDob(String dob){ this.dob = dob; }

    public int getAge(){ return age; }
    public void setAge(int age){ this.age = age; }

    public String getPrice(){ return price; }
    public void setPrice(String price){ this.price = price; }

    public String getGender(){ return gender; }
    public void setGender(String gender){ this.gender = gender; }

    public String getFirst_time(){ return first_time; }
    public void setFirst_time(String first_time){ this.first_time = first_time; }

    public String getAddress2(){ return address2; }
    public void setAddress2(String address2){ this.address2 = address2; }

    public String getCity(){ return city; }
    public void setCity(String city){ this.city = city; }

    public int getWeight(){ return weight; }
    public void setWeight(int weight){ this.weight = weight; }

    public int getHeight(){ return height; }
    public void setHeight(int height){ this.height = height; }

    public String getIssue(){ return issue; }
    public void setIssue(String issue){ this.issue = issue; }

    public String getDetail(){ return detail; }
    public void setDetail(String detail){ this.detail = detail; }
}