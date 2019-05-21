package cn.java.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

public class User {
    private Integer id;

    @NotNull(message = "username cannot be empty")
    @Length(min = 5, max = 15, message = "username must be between 5 and 15 characters")
    private String username;

    @NotNull(message = "password cannot be empty")
    @Length(min = 7, max = 15, message = "username must be between 7 and 15 characters")
    private String password;

    private Integer authority;

    @NotNull(message = "Name cannot be empty")
    @Pattern(regexp = "[a-z,A-Z]*", message = "First name has invalid characters, no numbers")
    @Length(min = 0, max = 30, message = "Your first name is too Long, please shorten it, sorry!")
    private String firstName;

    @NotNull(message = "Name cannot be empty")
    @Pattern(regexp = "[a-z,A-Z]*", message = "Last name has invalid characters, no numbers")
    @Length(min = 0, max = 30, message = "Your last name is too Long, please shorten it, sorry!")
    private String lastName;

    private String city;

    private String country;

    private String address;

    private String phoneNum;

    private String photoSrc;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getAuthority() {
        return authority;
    }

    public void setAuthority(Integer authority) {
        this.authority = authority;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getPhotoSrc() {
        return photoSrc;
    }

    public void setPhotoSrc(String photoSrc) {
        this.photoSrc = photoSrc;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", username=" + username + ", password=" + password + ", authority=" + authority
                + ", firstName=" + firstName + ", lastName=" + lastName + ", city=" + city + ", country=" + country
                + ", address=" + address + ", phoneNum=" + phoneNum + ", photoSrc=" + photoSrc + "]";
    }

}