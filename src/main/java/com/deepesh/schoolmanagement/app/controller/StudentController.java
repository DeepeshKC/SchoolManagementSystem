package com.deepesh.schoolmanagement.app.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.deepesh.schoolmanagement.app.model.Student;
import com.deepesh.schoolmanagement.app.model.UserType;
import com.deepesh.schoolmanagement.app.repository.StudentRepository;

@Controller
public class StudentController {
	@Autowired
	private StudentRepository studentRepository;

	@ModelAttribute("student")
	public Student getStudent() {
		return new Student();
	}

	@RequestMapping(value = "/addStudents", method = RequestMethod.GET)
	public String loadAddStudentPage() {
		return "addStudent";
	}

	@RequestMapping(value = "add-addStudent", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute("student")Student student) {
		UserType ut = new UserType();
		ut.setUserTypeId(2);
	  student.setUserType(ut);
		studentRepository.save(student);
		return "redirect:viewStudents";
	}
	

	@RequestMapping(value = "viewStudents", method = RequestMethod.GET)
	public String loadViewStudent(Model model) {
		model.addAttribute("studentsList", studentRepository.findAll());
		return "viewStudent";
	}
	@RequestMapping(value = "deleteStudents", method = RequestMethod.GET)
	public String deleteStudent(@RequestParam("id") Long id) {
		studentRepository.deleteById(id);
		return "redirect:/viewStudents";
	}

	@RequestMapping(value = "/updateStudents", method = RequestMethod.GET)
	public String loadUpdateStudentForm(@RequestParam("id") Long id, Model model) {
		Optional<Student> student = studentRepository.findById(id);
		Student s = student.get();
		model.addAttribute("student", s);
		return "updateStudent";
	}

	@RequestMapping(value = "update-updateStudent", method = RequestMethod.POST)
	public String updateStudent(@ModelAttribute("student") Student student) {
		UserType ur = new UserType();
		ur.setUserTypeId(3);
		student.setUserType(ur);
		studentRepository.save(student);
		return "redirect:/viewStudents";
	}
}
