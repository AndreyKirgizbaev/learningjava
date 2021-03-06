package ru.learningjava.io.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity(name = "comments")
public class CommentEntity implements Serializable {

    private static final long serialVersionUID = -4096430718122326381L;

    @Id
    @GeneratedValue
    private long id;

    @Column(nullable = false, length = 30)
    private String commentId;

    @Column(nullable = false)
    private String comment;

    @Column(nullable = false, length = 2)
    private String theme;

    @Column(nullable = false, length = 15)
    private Date date;

    @Column(nullable = false, length = 15)
    private String username;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCommentId() {
        return commentId;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}

