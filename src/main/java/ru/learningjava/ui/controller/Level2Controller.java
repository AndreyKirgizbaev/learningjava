package ru.learningjava.ui.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.learningjava.service.impl.CompileService;

@Controller
public class Level2Controller {

    @Autowired
    CompileService compileService;

    @Autowired
    @Qualifier("messageSource")
    MessageSource messageSource;

    @RequestMapping(value = "/level2part1", method = RequestMethod.GET)
    public ModelAndView loadPart1Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level2/level2part1");

        return modelAndView;
    }

    @RequestMapping(value = "/level2part2", method = RequestMethod.GET)
    public ModelAndView loadPart2Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level2/level2part2");

        return modelAndView;
    }

    @RequestMapping(value = "/level2part3", method = RequestMethod.GET)
    public ModelAndView loadPart3Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level2/level2part3");

        modelAndView.addObject("code","");

        return modelAndView;
    }

    @RequestMapping(value = "/level2part4", method = RequestMethod.GET)
    public ModelAndView loadPart4Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level2/level2part4");

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       \n"+
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level2part5", method = RequestMethod.GET)
    public ModelAndView loadPart5Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level2/level2part5");

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

    @RequestMapping(value = "/level2part6", method = RequestMethod.GET)
    public ModelAndView loadPart6Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level2/level2part6");

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       int a = 5;\n" +
                "       \n" +
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level2part7", method = RequestMethod.GET)
    public ModelAndView loadPart7Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level2/level2part7");

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       \n" +
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level2part8", method = RequestMethod.GET)
    public ModelAndView loadPart8Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level2/level2part8");

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "       \n" +
                "    }\n" +
                "}";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level2part9", method = RequestMethod.GET)
    public ModelAndView loadPart9Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level2/level2part9");

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

    @RequestMapping(value = "/level2part10", method = RequestMethod.GET)
    public ModelAndView loadPart10Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level2/level2part10");

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
