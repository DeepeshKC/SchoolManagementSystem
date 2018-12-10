package com.deepesh.schoolmanagement.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deepesh.schoolmanagement.app.model.Exam;
import com.deepesh.schoolmanagement.app.repository.ExamRepository;

@Controller
public class ExamController {
	@Autowired
	private ExamRepository examRepository;

	@ModelAttribute("exam")

	public Exam getExam() {
		return new Exam();
	}

	@RequestMapping(value = "addExam", method = RequestMethod.GET)
	public String loadAddExam() {
		return "addExam";
	}

	@RequestMapping(value = "add-add-exam", method = RequestMethod.POST)
	public String addExam(@ModelAttribute("exam") Exam exam) {
		examRepository.save(exam);
		return "redirect:/viewExams";
	}

	@RequestMapping(value = "viewExams", method = RequestMethod.GET)
	public String viewExam(Model model) {
		model.addAttribute("examList", examRepository.findAll());
		return "viewExam";
	}

	@RequestMapping(value = "deleteExam", method = RequestMethod.GET)
	public String deleteExam(@RequestParam("id") Long id) {
		examRepository.deleteById(id);
		return "redirect:/viewExams";
	}
}