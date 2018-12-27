package com.deepesh.schoolmanagement.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deepesh.schoolmanagement.app.model.Assignment;
import com.deepesh.schoolmanagement.app.repository.AssignmentRepository;

@Controller
public class AssignmentController {
	@Autowired
	private AssignmentRepository assignmentRepository;

	@ModelAttribute("assignment")
	public Assignment getAssignment() {
		return new Assignment();
	}

	@RequestMapping(value = "**/teacher/addAssignments", method = RequestMethod.GET)
	public String loadAddAssignments(@RequestParam("class_id")Long class_id, @RequestParam("teacher_id")Long teacher_id, Model model, Model model1) {
	     model.addAttribute("classes", class_id);
	     model.addAttribute("teacher", teacher_id);
		return "teacherAddAssignment";
	}

	@RequestMapping(value = "**/teacher/add-addAssignments", method = RequestMethod.POST)
	public String addAssignments(@ModelAttribute("assignment") Assignment assignment) {
		assignmentRepository.save(assignment);
		return "redirect:teacher/viewAssignments";

	}

	@RequestMapping(value = "**/teacher/viewAssignments", method = RequestMethod.GET)
	public String viewAssignments(Model model) {
		model.addAttribute("assignmentList", assignmentRepository.findAll());
		return "teacherViewAssignment";
	}
	
	@RequestMapping(value = "/viewAssignments", method = RequestMethod.GET)
	public String ad_iewAssignments(Model model) {
		model.addAttribute("assignmentList", assignmentRepository.findAll());
		return "viewAssignment";
	}

	@RequestMapping(value = "delete-deleteAssignment", method = RequestMethod.GET)
	public String deleteAssignment(@RequestParam("id") Long id) {
		assignmentRepository.deleteById(id);
		return "redirect:/viewAssignments";
	}
}
