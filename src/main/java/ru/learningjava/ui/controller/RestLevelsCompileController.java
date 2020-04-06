package ru.learningjava.ui.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.learningjava.service.impl.CompileService;
import ru.learningjava.ui.model.request.CompileRequestModel;
import ru.learningjava.ui.model.response.CompileStatusModel;
import ru.learningjava.ui.model.request.CompilerRest;

@RestController
public class RestLevelsCompileController {

    @Autowired
    CompileService compileService;

    @Autowired
    @Qualifier("messageSource")
    MessageSource messageSource;

    @PostMapping(value = "/level1part1compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part1Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();
        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("23")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part1.task.error1");
        } else if (!code.contains("'$'")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part1.task.error2");
        } else if (!code.contains("\"I love Java\"")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part1.task.error3");
        }

        returnValue.setResult(true);
        returnValue.setAnswer("23 $ I love Java");

        return returnValue;
    }

    @PostMapping(value = "/level1part2compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part2Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();
        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("System.out.println(\"I know 2 methods for text output:\");")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part2.task.error1");
        } else if (!code.contains("System.out.println(\"println\");")) {
            return setCompileStatusAnswer(returnValue,"levels.level1.part2.task.error2");
        } else if (!code.contains("System.out.println(\"print\");")) {
            return setCompileStatusAnswer(returnValue,"levels.level1.part2.task.error3");
        }

        returnValue.setResult(true);
        returnValue.setAnswer("I know 2 methods for text output:\n" +
                "println\n" +
                "print");

        return returnValue;
    }

    @PostMapping(value = "/level1part3compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part3Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();
        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        }

        return setCompileAnswer(returnValue, "Writing programs is very interesting!");
    }

    @PostMapping(value = "/level1part4compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part4Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();
        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("programLanguage")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part4.task.error1");
        } else if (!code.contains("\"Java\"")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part4.task.error2");
        } else if (!code.contains("apples")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part4.task.error3");
        } else if (!code.contains("5")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part4.task.error4");
        }

        return setCompileAnswer(returnValue,"Java\n" +
                "5");
    }

    @PostMapping(value = "/level1part5compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part5Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();
        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("System.out.print(\"Hello \");") || !code.contains("System.out.println(\"World!\");")
                || !code.contains("System.out.println(\"I love Java!\");")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part5.task.error");
        }

        return setCompileAnswer(returnValue, "Hello World!\n" +
                "I love Java!");
    }

    @PostMapping(value = "/level1part6compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part6Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();
        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("int a = 5;")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part6.task.error1");
        } else if (!code.contains("11")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part6.task.error2");
        } else if (!code.contains("4")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part6.task.error3");
        }

        return setCompileAnswer(returnValue, "4");
    }

    @PostMapping(value = "/level1part7compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part7Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();
        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("double")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part7.task.error1");
        } else if (!code.contains("k")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part7.task.error2");
        } else if (!code.contains("36")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part7.task.error3");
        } else if (!code.contains("15")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part7.task.error4");
        }

        return setCompileAnswer(returnValue, "2.4");
    }

    @PostMapping(value = "/level1part8compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part8Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        code = code.replace("public static void main(String[] args) {\n",
                "public static void main(String[] args) {\n" +
                        "       int n = 0;\n");

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("boolean")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part8.task.error1");
        } else if (!code.contains("isPositive")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part8.task.error2");
        } else if (!code.contains("n > 0")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part8.task.error3");
        } else if (!code.contains("if")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part8.task.error4");
        }

        return setCompileAnswer(returnValue, "isPositive = false");
    }

    public CompileStatusModel setCompileCode(String code) {
        CompileStatusModel returnValue = new CompileStatusModel();
        returnValue.setCode(code);

        return returnValue;
    }

    public CompileStatusModel setCompileStatusAnswer(CompileStatusModel compileStatusModel, String answer) {
        compileStatusModel.setResult(false);
        compileStatusModel.setAnswer(
                messageSource.getMessage(answer, null, LocaleContextHolder.getLocale()));

        return compileStatusModel;
    }

    public CompileStatusModel setCompileAnswer(CompileStatusModel compileStatusModel, String correctAnswer) {
        CompilerRest compilerRest = compileService.sendCode(compileStatusModel.getCode());

        String answer = compilerRest.getOutput();

        if (answer.isEmpty())
            answer = messageSource.getMessage("levels.null", null, LocaleContextHolder.getLocale());

        if (correctAnswer.equals(answer)) {
            compileStatusModel.setResult(true);
        } else {
            compileStatusModel.setResult(false);
        }

        compileStatusModel.setAnswer(answer);

        return compileStatusModel;
    }
}