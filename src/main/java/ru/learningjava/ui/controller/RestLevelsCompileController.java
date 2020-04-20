package ru.learningjava.ui.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import ru.learningjava.io.entity.Role;
import ru.learningjava.service.UserService;
import ru.learningjava.service.impl.CompileService;
import ru.learningjava.shared.dto.UserDTO;
import ru.learningjava.ui.model.request.CompileRequestModel;
import ru.learningjava.ui.model.response.CompileStatusModel;
import ru.learningjava.ui.model.request.CompilerRest;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import static ru.learningjava.io.entity.Role.*;

@RestController
public class RestLevelsCompileController {

    @Autowired
    CompileService compileService;

    @Autowired
    @Qualifier("messageSource")
    MessageSource messageSource;

    @Autowired
    UserService userService;

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

        addRole(ROLE_L1P2);

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
            return setCompileStatusAnswer(returnValue, "levels.level1.part2.task.error2");
        } else if (!code.contains("System.out.println(\"print\");")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part2.task.error3");
        }

        returnValue.setResult(true);
        returnValue.setAnswer("I know 2 methods for text output:\n" +
                "println\n" +
                "print");

        addRole(ROLE_L1P3);

        return returnValue;
    }

    @PostMapping(value = "/level1part3compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part3Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();
        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        }

        return setCompileAnswer(returnValue, "Writing programs is very interesting!", ROLE_L1P4);
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

        return setCompileAnswer(returnValue, "Java\n" +
                "5", ROLE_L1P5);
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
                "I love Java!", ROLE_L1P6);
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

        return setCompileAnswer(returnValue, "4", ROLE_L1P7);
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

        return setCompileAnswer(returnValue, "2.4", ROLE_L1P8);
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

        return setCompileAnswer(returnValue, "isPositive = false", ROLE_L1P9);
    }

    @PostMapping(value = "/level1part9compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part9Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static String isLove(boolean n)")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part9.task.error1");
        } else if (!code.contains("I love Java")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part9.task.error2");
        } else if (!code.contains("I dont love Java :C")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part9.task.error3");
        } else if (!code.contains("System.out.println(isLove(true));")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part9.task.error4");
        }

        return setCompileAnswer(returnValue, "I love Java", ROLE_L1P10);
    }

    @PostMapping(value = "/level1part10compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel1Part10Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void checkNumber(int n)")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part10.task.error1");
        } else if (!code.contains("even")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part10.task.error2");
        } else if (!code.contains("odd")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part10.task.error3");
        } else if (!code.contains("checkNumber(1);") && !code.contains("checkNumber(2);") &&
                !code.contains("checkNumber(5);") && !code.contains("checkNumber(4);")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part10.task.error4");
        } else if (!code.contains("switch")) {
            return setCompileStatusAnswer(returnValue, "levels.level1.part10.task.error5");
        }

        return setCompileAnswer(returnValue, "odd\n" +
                "even\n" +
                "odd\n" +
                "even", ROLE_L2P1);
    }

    @PostMapping(value = "/level2part1compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel2Part1Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void main(String[] args)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part1.task.error5");
        } else if (!code.contains("str")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part1.task.error1");
        } else if (!code.contains("Java is the best!")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part1.task.error2");
        } else if (!code.contains("charAt(9)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part1.task.error3");
        } else if (!code.contains("charAt(5)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part1.task.error4");
        }

        return setCompileAnswer(returnValue, "hi", ROLE_L2P2);
    }

    @PostMapping(value = "/level2part2compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel2Part2Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void main(String[] args)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part2.task.error5");
        } else if (!code.contains("str")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part2.task.error1");
        } else if (!code.contains("String.format(\"Мy level in java = %d\", lvl)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part2.task.error2");
        } else if (!code.contains("lvl")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part2.task.error3");
        } else if (!code.contains("2")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part2.task.error4");
        }

        return setCompileAnswer(returnValue, "Мy level in java = 2", ROLE_L2P3);
    }

    @PostMapping(value = "/level2part3compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel2Part3Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void main(String[] args)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part3.task.error7");
        } else if (!code.contains("a")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part3.task.error1");
        } else if (!code.contains("2")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part3.task.error2");
        } else if (!code.contains("b")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part3.task.error3");
        } else if (!code.contains("6")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part3.task.error4");
        } else if (!code.contains("max")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part3.task.error5");
        } else if (!code.contains("?") && !code.contains(":")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part3.task.error6");
        }

        return setCompileAnswer(returnValue, "6", ROLE_L2P4);
    }

    @PostMapping(value = "/level2part4compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel2Part4Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void main(String[] args)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part4.task.error4");
        } else if (!code.contains("numbers1")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part4.task.error1");
        } else if (!code.contains("numbers2")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part4.task.error2");
        } else if (!code.contains("Arrays.equals")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part4.task.error3");
        }

        return setCompileAnswer(returnValue, "false", ROLE_L2P5);
    }

    @PostMapping(value = "/level2part5compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel2Part5Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void main(String[] args)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part5.task.error3");
        } else if (!code.contains("str.split")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part5.task.error1");
        } else if (!code.contains("String str = \"I dont love the java\";")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part5.task.error2");
        }

        return setCompileAnswer(returnValue, "I love java", ROLE_L2P6);
    }

    @PostMapping(value = "/level2part6compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel2Part6Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void main(String[] args)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part6.task.error3");
        } else if (!code.contains("for")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part6.task.error1");
        } else if (!code.contains("int[] numbers = { 1, 2, 4, 5, 6, 7, 8, 9, 10, 12, 14 };")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part6.task.error2");
        }

        return setCompileAnswer(returnValue, "4 5 6 7", ROLE_L2P7);
    }

    @PostMapping(value = "/level2part7compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel2Part7Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void main(String[] args)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part7.task.error2");
        } else if (!code.contains("[][]")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part7.task.error1");
        }

        return setCompileAnswer(returnValue, "2 1 2\n" +
                "2 2 4\n" +
                "2 3 6\n" +
                "2 4 8\n" +
                "2 5 10\n" +
                "2 6 12\n" +
                "2 7 14\n" +
                "2 8 16\n" +
                "2 9 18\n" +
                "2 10 20", ROLE_L2P8);
    }

    @PostMapping(value = "/level2part8compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel2Part8Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void main(String[] args)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part8.task.error2");
        } else if (!code.contains("print(\"Hi!\");\n" +
                "       print(\"I love java!\", 2);\n" +
                "       print(\"Do you like java?\", 1);")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part8.task.error1");
        }

        return setCompileAnswer(returnValue, "Hi!\n" +
                "Hi!\n" +
                "Hi!\n" +
                "I love java!\n" +
                "I love java!\n" +
                "Do you like java?", ROLE_L2P9);
    }

    @PostMapping(value = "/level2part9compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel2Part9Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void main(String[] args)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part9.task.error3");
        } else if (!code.contains("public static void print(")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part9.task.error1");
        } else if (!code.contains("       int[][] array = {\n" +
                "                {1, 2, 3, 4, 5},\n" +
                "                {6, 7, 8, 9, 0}\n" +
                "       };\n" +
                "       print(array);\n")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part9.task.error2");
        }

        return setCompileAnswer(returnValue, "[1, 2, 3, 4, 5]\n" +
                "[6, 7, 8, 9, 0]", ROLE_L2P10);
    }

    @PostMapping(value = "/level2part10compile", consumes = MediaType.APPLICATION_JSON_VALUE)
    public CompileStatusModel compileLevel2Part10Compile(@RequestBody CompileRequestModel compileRequestModel) {

        String code = compileRequestModel.getCode();

        CompileStatusModel returnValue = setCompileCode(code);

        if (code.isEmpty()) {
            return setCompileStatusAnswer(returnValue, "levels.empty");
        } else if (!code.contains("public static void main(String[] args)")) {
            return setCompileStatusAnswer(returnValue, "levels.level2.part10.task.error1");
        }

        return setCompileAnswer(returnValue, "Hello!\n" +
                "I love Java!\n" +
                "Java the best!", ROLE_L2P10);
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

    public CompileStatusModel setCompileAnswer(CompileStatusModel compileStatusModel, String correctAnswer, Role role) {
        CompilerRest compilerRest = compileService.sendCode(compileStatusModel.getCode());

        String answer = compilerRest.getOutput();

        if (answer.isEmpty())
            answer = messageSource.getMessage("levels.null", null, LocaleContextHolder.getLocale());

        if (correctAnswer.equals(answer)) {
            compileStatusModel.setResult(true);
            addRole(role);
        } else {
            compileStatusModel.setResult(false);
        }

        compileStatusModel.setAnswer(answer);

        return compileStatusModel;
    }

    public void addRole(Role role) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (!authentication.getAuthorities().contains(role)) {

            UserDTO user = userService.updateUserRoles(authentication.getName(), role);

            List<Role> userRoles = new ArrayList<>(user.getRoles());

            List<GrantedAuthority> actualAuthorities = userRoles.stream()
                    .map(userRole -> new SimpleGrantedAuthority(userRole.name())).collect(Collectors.toList());

            Authentication newAuth = new UsernamePasswordAuthenticationToken(authentication.getPrincipal(),
                    authentication.getCredentials(), actualAuthorities);

            SecurityContextHolder.getContext().setAuthentication(newAuth);
        }
    }
}
