package ru.learningjava.ui.model.response;

public class JdoodleResponse {

    private String clientId = "f4b89638bd4a3045e252554993e72d62";
    private String clientSecret;
    private String language;
    private String versionIndex;
    private String script;

    public JdoodleResponse() {
        clientId = "f4b89638bd4a3045e252554993e72d62";
        clientSecret = "461e22e51676216454c56ae63acec3094a2ecc969cbf36a118029a7be95d3b71";
        language = "java";
        versionIndex = "3";
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public String getClientSecret() {
        return clientSecret;
    }

    public void setClientSecret(String clientSecret) {
        this.clientSecret = clientSecret;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getVersionIndex() {
        return versionIndex;
    }

    public void setVersionIndex(String versionIndex) {
        this.versionIndex = versionIndex;
    }

    public String getScript() {
        return script;
    }

    public void setScript(String script) {
        this.script = script;
    }
}

