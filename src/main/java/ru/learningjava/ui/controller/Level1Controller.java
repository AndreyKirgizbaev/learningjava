package ru.learningjava.ui.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.learningjava.service.impl.CompileService;
import ru.learningjava.ui.model.response.CompilerRest;

@Controller
public class Level1Controller {

    @Autowired
    CompileService compileService;

    @RequestMapping(value = "/level1part2.html", method = RequestMethod.GET)
    public ModelAndView loadMainPage(@ModelAttribute("code") String code, @ModelAttribute("result") CompilerRest result) {
        ModelAndView modelAndView = new ModelAndView();
        if (code.isEmpty())
            code = "public class Main {\n" +
                    "   public static void main(String[] args) {\n" +
                    "       System.out.println(\"Hello, World!\");\n" +
                    "   }\n" +
                    "}";
        modelAndView.addObject("code", code);
        modelAndView.addObject("result", result.getOutput());
        modelAndView.setViewName("/level1/level1part2");

        return modelAndView;
    }

    @RequestMapping(value = "/level1part2/compile", method = RequestMethod.POST)
    public ModelAndView compileCode(@RequestParam("code") String code) {
        CompilerRest result = compileService.sendCode(code);
        return loadMainPage(code, result);
    }
}
