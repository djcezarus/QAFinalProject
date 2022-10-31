package com.cohart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cohart.repository.UserRepository;
import com.cohart.service.UserService;
import com.cohart.to.User;

@Controller
public class UserController {
// ========== Registration Function =========================================================
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(String username, String password, String firstName, String lastName, String email)
			throws Exception {
		System.out.println("inside register method.." + username + ", " + password + ", " + firstName + ", " + lastName
				+ ", " + email);
		if (username.equals("") || password.equals("")|| firstName.equals("")||lastName.equals("")) {// This would return the register page with error message if any 
														// of the fields are empty

			ModelAndView modelAndView = new ModelAndView("index");
			modelAndView.addObject("loginErrorMessage", "Please do Not submit empty fields!");

			return modelAndView;
		} else {
			UserRepository userRepository = new UserRepository();

			ModelAndView modelAndView = null;

			User user = new User(username, password, firstName, lastName, email);

			userRepository.save(user);

			modelAndView = new ModelAndView("index");
			modelAndView.addObject("registrationSuccessful", "Registration Successful, please log in!");
			return modelAndView;
		}
	}

	// ========== Log in Function ============================================================
	@RequestMapping("/login")
	public ModelAndView login(String username, String password, HttpServletRequest request) throws Exception {

		System.out.println("The username is " + username + ", the password is " + password);

		if (username.equals("") || password.equals("")) {// This would return the index or login page back to user if
															// either username or
															// password or both are incorrect...

			ModelAndView modelAndView = new ModelAndView("index");
			modelAndView.addObject("loginErrorMessage", "Please do not submit empty fields!");

			return modelAndView;
		}

		UserService userService = new UserService();

		User user = userService.validateUser(username, password);

		if (user != null) {

			ModelAndView modelAndView = new ModelAndView("welcomePage");
			HttpSession session = request.getSession();
			session.setAttribute("userData", user);
			modelAndView.addObject("userData", user);
			return modelAndView;
		} else {
			ModelAndView modelAndView = new ModelAndView("index");
			modelAndView.addObject("loginErrorMessage", "Incorrect credentials, please try again!");

			return modelAndView;
		}
	}
//======================================= Delete User ===========================================
	@RequestMapping("delete/{username}")
	public ModelAndView deleteUser(@PathVariable String username,HttpServletRequest request) throws Exception {
		
		System.out.println("the userid is "+username);
		
		UserService userService = new UserService();
		
		userService.deleteUser(username);
		HttpSession session = request.getSession();
		session.setAttribute("userData", session);
		List<User> users = userService.getAllUsers();
		
		ModelAndView modelAndView = new ModelAndView("masterUserPage");
		
		modelAndView.addObject("allUsers", users);
		
		return modelAndView;	
	}

// ======================================= Update User ==============================================
	@RequestMapping("/updateUserPage/{username}")
	public ModelAndView updateUser(@PathVariable String username,HttpServletRequest request) throws Exception {
		
		System.out.println("inside updateUser "+username);
		
		ModelAndView modelAndView = new ModelAndView("updateUserPage");
		
		 UserService userService = new UserService();
		 
		 User user = userService.getUser(username);
		 HttpSession session = request.getSession();
		 
	session.setAttribute("userData", session);
			

		modelAndView.addObject("userData", user);
		 
		return modelAndView;
		

	}
	@RequestMapping("/updateUserPagenew")
	public ModelAndView updatingUser() {
		System.out.println("inside updatingUser");
		
		ModelAndView modelAndView = new ModelAndView("updateUserPage");
		
		return modelAndView;
	}

}
