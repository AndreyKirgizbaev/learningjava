package ru.learningjava.ui.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.learningjava.service.impl.CompileService;
import ru.learningjava.ui.model.response.CompilerRest;

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

    @RequestMapping(value = "/level1part1.html", method = RequestMethod.POST)
    public ModelAndView compilePart1Code(@RequestParam("code") String code) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("code", code);

        if (code.isEmpty()) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("error",
                    messageSource.getMessage("levels.empty", null, LocaleContextHolder.getLocale()));
        } else if (!code.contains("23")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("error",
                    messageSource.getMessage("levels.level1.part1.task.error1", null, LocaleContextHolder.getLocale()));
        } else if (!code.contains("'$'")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("error",
                    messageSource.getMessage("levels.level1.part1.task.error2", null, LocaleContextHolder.getLocale()));
        } else if (!code.contains("\"I love Java\"")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("error",
                    messageSource.getMessage("levels.level1.part1.task.error3", null, LocaleContextHolder.getLocale()));
        } else {
            modelAndView.addObject("result", true);
        }

        modelAndView.setViewName("/level1/level1part1");
        return modelAndView;
    }

    @RequestMapping(value = "/level1part2.html", method = RequestMethod.GET)
    public ModelAndView loadPart2Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part2");

        return modelAndView;
    }

    @RequestMapping(value = "/level1part2.html", method = RequestMethod.POST)
    public ModelAndView compilePart2Code(@RequestParam("code") String code) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("code", code);

        if (code.isEmpty()) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("error",
                    messageSource.getMessage("levels.empty", null, LocaleContextHolder.getLocale()));
        } else if (!code.contains("System.out.println(\"I know 2 methods for text output:\");")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("error",
                    messageSource.getMessage("levels.level1.part2.task.error1", null, LocaleContextHolder.getLocale()));
        } else if (!code.contains("System.out.println(\"println\");")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("error",
                    messageSource.getMessage("levels.level1.part2.task.error2", null, LocaleContextHolder.getLocale()));
        } else if (!code.contains("System.out.println(\"print\");")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("error",
                    messageSource.getMessage("levels.level1.part2.task.error3", null, LocaleContextHolder.getLocale()));
        } else {
            modelAndView.addObject("result", true);
        }

        modelAndView.setViewName("/level1/level1part2");
        return modelAndView;
    }

    @RequestMapping(value = "/level1part3.html", method = RequestMethod.GET)
    public ModelAndView loadPart3Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part3");

        return modelAndView;
    }

    @RequestMapping(value = "/level1part3.html", method = RequestMethod.POST)
    public ModelAndView compilePart3Code(@RequestParam("code") String code) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("code", code);

        modelAndView.setViewName("/level1/level1part3");

        if (code.isEmpty()) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.empty", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        }

        CompilerRest compilerRest = compileService.sendCode(code);

        String answer = compilerRest.getOutput();

        String correctAnswer = "Writing programs is very interesting!";

        if (correctAnswer.equals(answer)) {
            modelAndView.addObject("result", true);
        } else {
            modelAndView.addObject("result", false);
        }

        modelAndView.addObject("answer", answer);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part4.html", method = RequestMethod.GET)
    public ModelAndView loadPart4Page() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/level1/level1part4");

        String code = "public class Main {\n" +
                "    public static void main(String[] args) {\n" +
                "String programLanguage = \"Java\";\n" +
                "int apples = 5;\n" +
                "System.out.println(programLanguage);\n" +
                "System.out.println(apples);\n" +
                "    }\n" +
                "  }";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part4.html", method = RequestMethod.POST)
    public ModelAndView compilePart4Code(@RequestParam("code") String code) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("code", code);

        modelAndView.setViewName("/level1/level1part4");

        if (code.isEmpty()) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.empty", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        } else if (!code.contains("programLanguage")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.level1.part4.task.error1", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        } else if (!code.contains("\"Java\"")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.level1.part4.task.error2", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        } else if (!code.contains("apples")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.level1.part4.task.error3", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        } else if (!code.contains("5")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.level1.part4.task.error4", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        }

        CompilerRest compilerRest = compileService.sendCode(code);

        String answer = compilerRest.getOutput();

        String correctAnswer = "Java\n" +
                "5";

        if (correctAnswer.equals(answer)) {
            modelAndView.addObject("result", true);
        } else {
            modelAndView.addObject("result", false);
        }

        modelAndView.addObject("answer", answer);

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
                "  }";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part5.html", method = RequestMethod.POST)
    public ModelAndView compilePart5Code(@RequestParam("code") String code) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("code", code);

        modelAndView.setViewName("/level1/level1part5");

        if (code.isEmpty()) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.empty", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        } else if (!code.contains("System.out.print(\"Hello \");") || !code.contains("System.out.println(\"World!\");")
                        || !code.contains("System.out.println(\"I love Java!\");")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.level1.part5.task.error", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        }

        CompilerRest compilerRest = compileService.sendCode(code);

        String answer = compilerRest.getOutput();

        String correctAnswer = "Hello World!\n" +
                "I love Java!";

        if (correctAnswer.equals(answer)) {
            modelAndView.addObject("result", true);
        } else {
            modelAndView.addObject("result", false);
        }

        modelAndView.addObject("answer", answer);

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
                "  }";
        modelAndView.addObject("code", code);

        return modelAndView;
    }

    @RequestMapping(value = "/level1part6.html", method = RequestMethod.POST)
    public ModelAndView compilePart6Code(@RequestParam("code") String code) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("code", code);

        modelAndView.setViewName("/level1/level1part6");

        if (code.isEmpty()) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.empty", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        } else if (!code.contains("int a = 5;")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.level1.part6.task.error1", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        } else if (!code.contains("11")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.level1.part6.task.error2", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        } else if (!code.contains("4")) {
            modelAndView.addObject("result", false);
            modelAndView.addObject("answer",
                    messageSource.getMessage("levels.level1.part6.task.error3", null, LocaleContextHolder.getLocale()));
            return modelAndView;
        }

        CompilerRest compilerRest = compileService.sendCode(code);

        String answer = compilerRest.getOutput();

        String correctAnswer = "4";

        if (correctAnswer.equals(answer)) {
            modelAndView.addObject("result", true);
        } else {
            modelAndView.addObject("result", false);
        }

        modelAndView.addObject("answer", answer);

        return modelAndView;
    }
}
