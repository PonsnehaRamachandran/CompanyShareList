package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.entity.Company;
import com.example.demo.service.CompanyServiceImpl;

@Controller
@RequestMapping
public class CompanyController {
	@Autowired
	private CompanyServiceImpl companyservice;

	@GetMapping("/home")
	private ModelAndView display() {
		ModelAndView mv = new ModelAndView("companystocks");
		mv.addObject("companystocks", companyservice.getAll());
		return mv;
	}

	@GetMapping("delete-company")

	public ModelAndView deleteCompany(@RequestParam("id") long id) {
		ModelAndView mv = new ModelAndView("redirect:/home");
		companyservice.deleteCompany(id);
		return mv;
	}

	@GetMapping("/add")
	public ModelAndView newAdd(Model model) {
		ModelAndView mv = new ModelAndView("add");
		mv.addObject("addCompany", new Company());
		return mv;
	}

	@PostMapping("/save")
	public ModelAndView saveCourse(@ModelAttribute("addCompany") Company company) {
		ModelAndView mv = new ModelAndView("redirect:/home");
		companyservice.addCompany(company);
		return mv;
	}

	@GetMapping("/editCompany")
	public ModelAndView editCourse(@RequestParam("id") long id) {
		ModelAndView mv = new ModelAndView("EditCompany");
		Company updatedcompany = companyservice.get(id);
		mv.addObject("addCompany", updatedcompany);
		return mv;
	}
}