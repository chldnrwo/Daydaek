package com.daydaek.controller;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.daydaek.service.FirstService;


@Controller
@RequestMapping("head")
public class FirstController {
	
//	@Autowired
//	private FirstService service;
	
	@GetMapping("labo")
	public void labo() throws Exception {

	}
	
	@GetMapping("labo2")
	public void labo2() throws Exception {

	}
	
	@GetMapping("first")
	public void firstMethod(Model model) {
		
	}
	
}
