package com.cohart.service;

import java.util.List;

import com.cohart.repository.UserRepository;
import com.cohart.to.User;

//=====================  UserService is the interface that specifies the service methods. ==============================
public class UserService {

	public User validateUser(String username, String password) throws Exception {

		UserRepository userRepository = new UserRepository();

		User user = userRepository.validateUserCredentials(username, password);

		return user;
	}

	public List<User> getAllUsers() throws Exception {

		UserRepository userDao = new UserRepository();

		List<User> users = userDao.getUsers();

		return users;
	}

	public void deleteUser(String username) throws Exception {
		
		UserRepository userRepository = new UserRepository();
		
		userRepository.deleteUser(username);


	}

	public User getUser(String username) throws Exception {

		UserRepository userRepository = new UserRepository();

		User user = userRepository.getUser(username);

		return user;
	}

	public void updateUser(User user) throws Exception {
		
		UserRepository userRepository = new UserRepository();
		
		userRepository.update(user);
	}

}
