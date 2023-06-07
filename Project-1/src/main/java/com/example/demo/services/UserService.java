package com.example.demo.services;

import java.util.List;
import java.util.Optional;
import java.util.ArrayList;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class UserService {
	private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}
	public void saveMyUser(User user) {
		userRepository.save(user);
	}
	
	public List<User> showAllUsers(){
		List<User> users = new ArrayList<User>();
		for(User user:userRepository.findAll()) {
			users.add(user);
		}
		return users;
	}
	public void deleteMyUser(int id) {
		userRepository.deleteById(id);
	}
	public User editMyUser(User updatedUser) {		
		User user = userRepository.save(updatedUser);
		return user;
		
	}
	public User findByUsernameAndPassword(String username,String password) {
		return userRepository.findByUsernameAndPassword(username, password);
	}
}

