package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.CompanyServiceImpl;

@Controller
@RequestMapping("company")
public class CompanyController {
	@Autowired
	private CompanyServiceImpl companyservice;

	
	@GetMapping("home")
	private ModelAndView display()
	{
		ModelAndView mv = new ModelAndView("companystocks");
		mv.addObject("companystocks", companyservice.getAll());
		return mv;
		
	}
	@GetMapping("delete-company")
	public String deleteCompany(@RequestParam long id) {
		System.out.println(id);
		companyservice.deleteCompany(id);
		return "redirect:/company/home";
	}

}
