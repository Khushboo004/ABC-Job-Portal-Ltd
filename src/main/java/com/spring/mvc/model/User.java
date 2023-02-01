package com.spring.mvc.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@javax.persistence.Entity(name = "users")
@Table(name = "users")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private int id; 
	@Column(unique = true,name = "email")
	private String email;
	@NotNull(message="Full Name can't be Empty")
	private String fullName;
	@NotNull(message="Email can't be Empty")
	private String password;
	@NotNull(message="Phone Number can't be Empty")
	private String pNo;
	private String country;
	@NotNull(message="Gender can't be Empty")
	private String gender;
	
	@NotNull(message = "Address may not be blank")
	private String address;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getpNo() {
        return pNo;
    }
    public void setpNo(String pNo) {
        this.pNo = pNo;
    }
    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", email=" + email + ", fullName=" + fullName + ", password=" + password + ", pNo="
                + pNo + ", country=" + country + ", gender=" + gender + ", address=" + address+ "]";
    }
    public User(int id, String email, String fullName, String password, String pNo, String country, String gender,
            String address) {
        super();
        this.id = id;
        this.email = email;
        this.fullName = fullName;
        this.password = password;
        this.pNo = pNo;
        this.country = country;
        this.gender = gender;
        this.address = address;
    }
    public User() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	
}
