package com.cohart.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
public class HomeController {
	//======== Mapping for LOG IN page  =======
	@RequestMapping("/")
	public String index() {
		System.out.println("inside index()");
		return "index";
	}
	//======== Mapping for Registration  =======
	@RequestMapping("/registrationPage")
	public String registration() {

		return "registrationPage";
	}
	//======== Mapping for Welcome Page (main page) AFTER LOG IN   =======
	@RequestMapping("/home")
	public String homepage() {
		return "welcomePage";
	}
	@RequestMapping("/productsPage")
	public String productspage() {
		return "productsPage";
	}
	
	}
