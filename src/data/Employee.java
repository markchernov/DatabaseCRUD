package data;

import java.util.Date;

public class Employee {

	
			
	String firstname;		
	String middlename;		
	String lastname;			
	String gender;		
	String email;		
	int extension;		
	Date hiredate;		
	int salary;		
	int commission_pct;	
	int department_id;		
	int job_id;		
	String address;	
	String city;		
	String state;		
	int zipcode;		
	int version;
	
	
	
	
	
	
	    public Employee(String firstname, String middlename, String lastname, String gender, String email,
			int extension, Date hiredate, int salary, int commission_pct, int department_id, int job_id, String address,
			String city, String state, int zipcode, int version) {
		super();
		
		this.firstname = firstname;
		this.middlename = middlename;
		this.lastname = lastname;
		this.gender = gender;
		this.email = email;
		this.extension = extension;
		this.hiredate = hiredate;
		this.salary = salary;
		this.commission_pct = commission_pct;
		this.department_id = department_id;
		this.job_id = job_id;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
		this.version = version;
	}
	    
	    
	    
	    
	    
	
	public String getFirstname() {
		return firstname;
	}
	public String getMiddlename() {
		return middlename;
	}
	public String getLastname() {
		return lastname;
	}
	public String getGender() {
		return gender;
	}
	public String getEmail() {
		return email;
	}
	public int getExtension() {
		return extension;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public int getSalary() {
		return salary;
	}
	public int getCommission_pct() {
		return commission_pct;
	}
	public int getDepartment_id() {
		return department_id;
	}
	public int getJob_id() {
		return job_id;
	}
	public String getAddress() {
		return address;
	}
	public String getCity() {
		return city;
	}
	public String getState() {
		return state;
	}
	public int getZipcode() {
		return zipcode;
	}
	public int getVersion() {
		return version;
	}
	
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setExtension(int extension) {
		this.extension = extension;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public void setCommission_pct(int commission_pct) {
		this.commission_pct = commission_pct;
	}
	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public void setVersion(int version) {
		this.version = version;
	}





	@Override
	public String toString() {
		return "Employee [firstname=" + firstname + ", middlename=" + middlename + ", lastname="
				+ lastname + ", gender=" + gender + ", email=" + email + ", extension=" + extension + ", hiredate="
				+ hiredate + ", salary=" + salary + ", commission_pct=" + commission_pct + ", department_id="
				+ department_id + ", job_id=" + job_id + ", address=" + address + ", city=" + city + ", state=" + state
				+ ", zipcode=" + zipcode + ", version=" + version + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
