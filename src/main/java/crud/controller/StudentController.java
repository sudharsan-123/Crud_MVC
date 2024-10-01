package crud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crud.dao.StudentDao;
import crud.dto.Student;

@Controller
public class StudentController {

	@Autowired
	StudentDao dao;

	@GetMapping("/")
	public String loadHome() {
		return "home.jsp";
	}

	@GetMapping("/add-student")
	public String addStudent() {
		return "add-student.jsp";
	}

	@PostMapping("/add-student")
	public String addStudent(Student student, ModelMap map) {
		dao.save(student);
		map.put("success", "Record Added Success");
		return "home.jsp";
	}

	@RequestMapping("/fetch-students")
	public String fetchStudents(ModelMap map) {
		map.put("students", dao.fetchAll());
		return "fetch.jsp";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam int id, ModelMap map) {
		dao.delete(id);
		map.put("sucecss", "Data Deleted Success");
		return "fetch-students";
	}

	@GetMapping("/edit")
	public String edit(@RequestParam int id, ModelMap map) {
		map.put("student", dao.find(id));
		return "edit.jsp";
	}

	@PostMapping("/update-student")
	public String updateStudent(@ModelAttribute Student student, ModelMap map) {
		dao.update(student);
		map.put("success", "Data Updated Success");
		return "fetch-students";
	}
}
