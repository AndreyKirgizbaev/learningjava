package ru.learningjava.ui.controller;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.learningjava.service.UserService;
import ru.learningjava.shared.dto.UserDTO;
import ru.learningjava.ui.model.request.UserDetailsRequestModel;

import java.util.Map;

@Controller
public class SecurityController {

    @Autowired
    UserService userService;

    @GetMapping("/registration")
    public String registration() {
        return "form/registration";
    }

    @PostMapping("/registration")
    public String addUser(UserDetailsRequestModel user, Map<String, Object> model) {

        ModelMapper modelMapper = new ModelMapper();
        UserDTO userDto = modelMapper.map(user, UserDTO.class);

        UserDTO createdUser = userService.createUser(userDto);

        return "redirect:/login";
    }
}
