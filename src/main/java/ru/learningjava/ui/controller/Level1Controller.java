package ru.learningjava.ui.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.learningjava.io.entity.CommentEntity;
import ru.learningjava.service.impl.CommentService;
import ru.learningjava.service.impl.CompileService;
import ru.learningjava.shared.dto.CommentDTO;

import java.util.List;

@Controller
public class Level1Controller {

    @Autowired
    CompileService compileService;

    @Autowired
    @Qualifier("messageSource")
    MessageSource messageSource;

    @Autowired
    CommentService commentService;

    @RequestMapping(value = "/level1part1", method = RequestMethod.GET)
    public ModelAndView loadPart1Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part1");

        List<CommentDTO> comments = commentService.getCommentsByTheme("11");

        modelAndView.addObject("comments", comments);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part2", method = RequestMethod.GET)
    public ModelAndView loadPart2Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part2");

        List<CommentDTO> comments = commentService.getCommentsByTheme("12");

        modelAndView.addObject("comments", comments);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part3", method = RequestMethod.GET)
    public ModelAndView loadPart3Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part3");

        List<CommentDTO> comments = commentService.getCommentsByTheme("13");

        modelAndView.addObject("comments", comments);

        modelAndView.addObject("code","");

        return modelAndView;
    }

    @RequestMapping(value = "/level1part4", method = RequestMethod.GET)
    public ModelAndView loadPart4Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part4");

        List<CommentDTO> comments = commentService.getCommentsByTheme("14");

        modelAndView.addObject("comments", comments);

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       \n"+
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part5", method = RequestMethod.GET)
    public ModelAndView loadPart5Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part5");

        List<CommentDTO> comments = commentService.getCommentsByTheme("15");

        modelAndView.addObject("comments", comments);

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       // System.out.print(\"Hello \");\n" +
                "       System.out.print(\"World!\");\n" +
                "       // System.out.println(\"World!\");\n" +
                "       /* System.out.println(\"I love Java!\"); */\n" +
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part6", method = RequestMethod.GET)
    public ModelAndView loadPart6Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part6");

        List<CommentDTO> comments = commentService.getCommentsByTheme("16");

        modelAndView.addObject("comments", comments);

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       int a = 5;\n" +
                "       \n" +
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part7", method = RequestMethod.GET)
    public ModelAndView loadPart7Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part7");

        List<CommentDTO> comments = commentService.getCommentsByTheme("17");

        modelAndView.addObject("comments", comments);

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       \n" +
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part8", method = RequestMethod.GET)
    public ModelAndView loadPart8Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part8");

        List<CommentDTO> comments = commentService.getCommentsByTheme("18");

        modelAndView.addObject("comments", comments);

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       \n" +
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part9", method = RequestMethod.GET)
    public ModelAndView loadPart9Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part9");

        List<CommentDTO> comments = commentService.getCommentsByTheme("19");

        modelAndView.addObject("comments", comments);

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       System.out.println(isLove(true));\n" +
                "    }\n" +
                "   \n" +
                "   \n" +
                "   \n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part10", method = RequestMethod.GET)
    public ModelAndView loadPart10Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part10");

        List<CommentDTO> comments = commentService.getCommentsByTheme("10");

        modelAndView.addObject("comments", comments);

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       checkNumber(1);\n" +
                "       checkNumber(2);\n" +
                "       checkNumber(5);\n" +
                "       checkNumber(4);\n" +
                "    }\n" +
                "   \n" +
                "   \n" +
                "   \n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }
}
