package ru.learningjava.ui.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.learningjava.service.impl.CompileService;
import ru.learningjava.ui.model.request.CompilerRest;

@Controller
public class Level1Controller {

    @Autowired
    CompileService compileService;

    @Autowired
    @Qualifier("messageSource")
    MessageSource messageSource;

    @RequestMapping(value = "/level1part1.html", method = RequestMethod.GET)
    public ModelAndView loadPart1Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part1");

        return modelAndView;
    }

    @RequestMapping(value = "/level1part2.html", method = RequestMethod.GET)
    public ModelAndView loadPart2Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part2");

        return modelAndView;
    }

    @RequestMapping(value = "/level1part3.html", method = RequestMethod.GET)
    public ModelAndView loadPart3Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part3");

        modelAndView.addObject("code","");

        return modelAndView;
    }

    @RequestMapping(value = "/level1part4.html", method = RequestMethod.GET)
    public ModelAndView loadPart4Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part4");

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       \n"+
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part5.html", method = RequestMethod.GET)
    public ModelAndView loadPart5Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part5");

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

    @RequestMapping(value = "/level1part6.html", method = RequestMethod.GET)
    public ModelAndView loadPart6Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part6");

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       int a = 5;\n" +
                "       \n" +
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part7.html", method = RequestMethod.GET)
    public ModelAndView loadPart7Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part7");

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       \n" +
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part8.html", method = RequestMethod.GET)
    public ModelAndView loadPart8Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part8");

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       \n" +
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }
}
