package ru.learningjava.service.impl;

import com.google.gson.Gson;
import org.springframework.stereotype.Service;
import ru.learningjava.ui.model.response.CompilerRest;

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

    public CompilerRest sendCode(String code) {
        try {
            URL url = new URL("https://api.jdoodle.com/v1/execute");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setDoOutput(true);
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type", "application/json");

            code = code.replaceAll("\r\n", "\\\\n");
            code = code.replaceAll("\"", "\\\\\"");

            String input = "{\"clientId\": \"" + clientId + "\",\"clientSecret\":\"" + clientSecret + "\",\"script\":\"" + code +
                    "\",\"language\":\"" + language + "\",\"versionIndex\":\"" + versionIndex + "\"} ";

            System.out.println(input);

            OutputStream outputStream = connection.getOutputStream();
            outputStream.write(input.getBytes());
            outputStream.flush();

            if (connection.getResponseCode() != HttpURLConnection.HTTP_OK) {
                throw new RuntimeException("Please check your inputs : HTTP error code : " + connection.getResponseCode());
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

            return new Gson().fromJson(result.toString(), CompilerRest.class);

        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
