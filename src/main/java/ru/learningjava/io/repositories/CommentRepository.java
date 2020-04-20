package ru.learningjava.io.repositories;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import ru.learningjava.io.entity.CommentEntity;

import java.util.List;

@Repository
public interface CommentRepository extends PagingAndSortingRepository<CommentEntity, Long> {
    CommentEntity findCommentByTheme(String theme);

    List<CommentEntity> findAllByThemeOrderByDateDesc(String theme);
}
