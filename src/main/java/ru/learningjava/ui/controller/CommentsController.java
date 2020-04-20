package ru.learningjava.ui.controller;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import ru.learningjava.exceptions.UserServiceException;
import ru.learningjava.service.UserService;
import ru.learningjava.service.impl.CommentService;
import ru.learningjava.shared.dto.CommentDTO;
import ru.learningjava.ui.model.request.CommentRequestModel;

import java.sql.Date;

@RestController
public class CommentsController {

    @Autowired
    CommentService commentService;

    @Autowired
    UserService userService;

    @PostMapping(value = "/createComment", consumes = MediaType.APPLICATION_JSON_VALUE)
    public void createComment(@RequestBody CommentRequestModel commentDetails) throws UserServiceException {

        ModelMapper modelMapper = new ModelMapper();
        CommentDTO commentDto = modelMapper.map(commentDetails, CommentDTO.class);

        commentDto.setDate(new Date(System.currentTimeMillis()));

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();
        commentDto.setUsername(currentPrincipalName);

        commentService.createComment(commentDto);

    }

}
