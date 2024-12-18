package com.gearing.omikujiform.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;

@Controller
public class OmikujiFormController {
	
	@GetMapping("")
	@ResponseBody
	public String welcome() {
		return "Welcome!";
	}

	@GetMapping("/today")
	@ResponseBody
	public String today() {
		return "Today you will find luck in all your endeavors!";
	}

	@GetMapping("/tomorrow")
	@ResponseBody
	public String tomorrow() {
		return "Tomorrow, an opportunity will arise, so be sure to be open to new ideas!";
	}
	
	@GetMapping("/omikuji")
	public String omikuji() {
		
		return "omikujiform.jsp";
	}
	
	@PostMapping("/omikuji/submit")
	public String omikujiSubmit(
			@RequestParam int count, @RequestParam String city,
			@RequestParam String name, @RequestParam String hobby,
			@RequestParam String animal, @RequestParam String nicething,
			HttpSession session) {
		session.setAttribute("count", count);
		session.setAttribute("city", city);
		session.setAttribute("name", name);
		session.setAttribute("hobby", hobby);
		session.setAttribute("animal", animal);
		session.setAttribute("nicething", nicething);
		
		
		return "redirect:/omikuji/show";
	}
	
	@GetMapping("/omikuji/show")
	public String showResults() {
		
		return "omikujiresults.jsp";
	}

}
