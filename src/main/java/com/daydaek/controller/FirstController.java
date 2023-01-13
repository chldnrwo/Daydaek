package com.daydaek.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("head")
public class FirstController {
	
	@GetMapping("first")
	public void firstMethod() {
		
	}
}
