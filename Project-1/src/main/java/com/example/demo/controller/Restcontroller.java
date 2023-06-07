package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.example.demo.model.User;
import com.example.demo.services.UserService;

@RestController
public class Restcontroller {
	@Autowired
	private UserService userService;
	@GetMapping("/")
	public String hello() {
		return "This is The Home Page";
	}
	
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String username,@RequestParam String firstname,@RequestParam String lastname,@RequestParam int age,@RequestParam String password) {
		User user = new User(username,firstname,lastname,age,password);
		userService.saveMyUser(user);
		return  "User is saved";
	}
}
