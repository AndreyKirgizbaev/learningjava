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

        if (correctAnswer.equals(answer.replaceFirst("\n", ""))) {
            modelAndView.addObject("result", true);
        } else {
            modelAndView.addObject("result", false);
        }

        modelAndView.addObject("answer", answer);

        return modelAndView;
    }
}
