package com.spring.mvc.model;




import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;




@javax.persistence.Entity(name = "job_Posting")
@Table(name = "job_Posting")
public class Jobs {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	@Column(name = "job_id", unique = true, nullable = false)
    private int job_id; 
	@NotBlank(message="name can't be Empty")
	private String name;
	@NotBlank(message="job-type can't be Empty")
	private String type;
	@NotBlank(message="job-title can't be Empty")
	private String title;
	@NotBlank(message="job-location can't be Empty")
	private String location;
//	@Temporal(TemporalType.TIMESTAMP)
//	Date postedOn;
	@NotBlank(message="job-salary can't be Empty")
	private int salary;
	@NotBlank(message="job-description can't be Empty")
	@Column(length = 100000)
	private String description;
//	@Lob
//	@Column(columnDefinition = "MEDIUMBLOB")
	private String image;
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Jobs(int job_id, @NotBlank(message = "name can't be Empty") String name,
			@NotBlank(message = "job-type can't be Empty") String type,
			@NotBlank(message = "job-title can't be Empty") String title,
			@NotBlank(message = "job-location can't be Empty") String location,
			@NotBlank(message = "job-salary can't be Empty") int salary,
			@NotBlank(message = "job-description can't be Empty") String description, String image) {
		super();
		this.job_id = job_id;
		this.name = name;
		this.type = type;
		this.title = title;
		this.location = location;
		this.salary = salary;
		this.description = description;
		this.image = image;
	}
	@Override
	public String toString() {
		return "Jobs [job_id=" + job_id + ", name=" + name + ", type=" + type + ", title=" + title + ", location="
				+ location + ", salary=" + salary + ", description=" + description + ", image=" + image + "]";
	}
	public Jobs() {
		super();
		// TODO Auto-generated constructor stub
	}
}