package crud.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Entity
@Data
public class Student {

	private String studentName;
	private long studentMobile;
	private int studentAge;
	private String studentGender;
	private String[] skills;
	private String studentAddress;
	@Id
	@GeneratedValue
	private int id;

}
