/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author hetpatel
 */
import java.io.Serializable;

public class memberBean implements Serializable {

private String sir_name,first_name,last_name,email;
private String contact1,contact2,whatsapp;
private String dob,blood_group,gender,first_time;
private String address1,address2,city,state;
private int age,weight,height;

public memberBean(){}


public String getSir_name(){return sir_name;}
public void setSir_name(String sir_name){this.sir_name=sir_name;}

public String getFirst_name(){return first_name;}
public void setFirst_name(String first_name){this.first_name=first_name;}

public String getLast_name(){return last_name;}
public void setLast_name(String last_name){this.last_name=last_name;}

public String getEmail(){return email;}
public void setEmail(String email){this.email=email;}

public String getContact1(){return contact1;}
public void setContact1(String contact1){this.contact1=contact1;}

public String getContact2(){return contact2;}
public void setContact2(String contact2){this.contact2=contact2;}

public String getWhatsapp(){return whatsapp;}
public void setWhatsapp(String whatsapp){this.whatsapp=whatsapp;}

public String getDob(){return dob;}
public void setDob(String dob){this.dob=dob;}

public int getAge(){return age;}
public void setAge(int age){this.age=age;}

public String getBlood_group(){return blood_group;}
public void setBlood_group(String blood_group){this.blood_group=blood_group;}

public String getGender(){return gender;}
public void setGender(String gender){this.gender=gender;}

public String getFirst_time(){return first_time;}
public void setFirst_time(String first_time){this.first_time=first_time;}

public String getAddress1(){return address1;}
public void setAddress1(String address1){this.address1=address1;}

public String getAddress2(){return address2;}
public void setAddress2(String address2){this.address2=address2;}

public String getCity(){return city;}
public void setCity(String city){this.city=city;}

public String getState(){return state;}
public void setState(String state){this.state=state;}

public int getWeight(){return weight;}
public void setWeight(int weight){this.weight=weight;}

public int getHeight(){return height;}
public void setHeight(int height){this.height=height;}

}