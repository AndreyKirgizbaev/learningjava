package ru.learningjava.service.impl;

import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;
import ru.learningjava.ui.model.request.CompilerRest;
import ru.learningjava.ui.model.response.JdoodleResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

@Service
public class CompileService {

    private static final String clientId = "f4b89638bd4a3045e252554993e72d62"; //Replace with your client ID
    private static final String clientSecret = "461e22e51676216454c56ae63acec3094a2ecc969cbf36a118029a7be95d3b71"; //Replace with your client Secret
    private static final String language = "java";
    private static final String versionIndex = "3";

    @Autowired
    @Qualifier("messageSource")
    MessageSource messageSource;

    public CompilerRest sendCode(String code) {
        try {
            URL url = new URL("https://api.jdoodle.com/v1/execute");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setDoOutput(true);
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type", "application/json");

            JdoodleResponse response = new JdoodleResponse();
            response.setScript(code);

            Gson gson = new Gson();
            String input = gson.toJson(response);

            System.out.println(input);

            OutputStream outputStream = connection.getOutputStream();
            outputStream.write(input.getBytes());
            outputStream.flush();

            CompilerRest compilerRest;

            if (connection.getResponseCode() != HttpURLConnection.HTTP_OK) {
                compilerRest = new CompilerRest();
                compilerRest.setOutput(messageSource.getMessage("levels.inputError", null, LocaleContextHolder.getLocale()));

                return compilerRest;
            }

            BufferedReader bufferedReader;
            bufferedReader = new BufferedReader(new InputStreamReader(
                    (connection.getInputStream())));

            String output;
            StringBuilder result = new StringBuilder();
            while ((output = bufferedReader.readLine()) != null) {
                result.append(output);
            }

            connection.disconnect();

            compilerRest = gson.fromJson(result.toString(), CompilerRest.class);
            compilerRest.setOutput(compilerRest.getOutput().trim());

            return compilerRest;

        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
