package apin.business;

public class User {

    private String name;
    private String mobile;
    private String address;
    private String email;
    private String password;
    private Boolean isAdmin;

    public User() {
        name = "";
        mobile = "";
        address = "";
        email = "";
        password = "";
    }

    public User(String name, String mobile, String address, String email, String password) {
        this.name = name;
        this.mobile = mobile;
        this.address = address;
        this.email = email;
        this.password = password;
    }

    public User(String email, String password, String fullName, String telephone) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public Boolean getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Boolean isAdmin) {
        this.isAdmin = isAdmin;
    }
    
    public Boolean hasPassword(String password) {
        if (this.password.trim().equals(password)) {
            return true;
        } else {
            return false;
        }
    }
}
