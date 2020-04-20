package ru.learningjava.service.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import ru.learningjava.io.entity.CommentEntity;
import ru.learningjava.io.entity.Role;
import ru.learningjava.io.repositories.CommentRepository;
import ru.learningjava.shared.Utils;
import ru.learningjava.shared.dto.CommentDTO;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class CommentService {

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    Utils utils;

    public void createComment(CommentDTO comment) {

        ModelMapper modelMapper = new ModelMapper();
        CommentEntity commentEntity = modelMapper.map(comment, CommentEntity.class);

        String publicCommentId = utils.generateUserId(30);

        commentEntity.setCommentId(publicCommentId);
        commentRepository.save(commentEntity);

    }

    public List<CommentDTO> getComments(int page, int limit) {
        List<CommentDTO> returnValue = new ArrayList<>();

        if (page > 0)
            page--;

        Pageable pageableRequest = PageRequest.of(page, limit);
        Page<CommentEntity> commentsPage = commentRepository.findAll(pageableRequest);

        List<CommentEntity> comments = commentsPage.getContent();
        for (CommentEntity commentEntity : comments) {
            CommentDTO userDto = new CommentDTO();
            BeanUtils.copyProperties(commentEntity, userDto);
            returnValue.add(userDto);
        }

        return returnValue;
    }

    public List<CommentDTO> getCommentsByTheme(String theme) {
        List<CommentDTO> returnValue = new ArrayList<>();

        List<CommentEntity> comments = commentRepository.findAllByThemeOrderByDateDesc(theme);

        for (CommentEntity commentEntity : comments) {
            CommentDTO commentDto = new CommentDTO();
            BeanUtils.copyProperties(commentEntity, commentDto);
            returnValue.add(commentDto);
        }

        return returnValue;
    }
}
