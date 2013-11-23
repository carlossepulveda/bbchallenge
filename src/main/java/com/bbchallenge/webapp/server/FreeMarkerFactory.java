package com.bbchallenge.webapp.server;

import java.io.File;
import java.io.IOException;

import freemarker.template.Configuration;

/**
 * A custom freemarker configuration factory used for Jogger and to render emails.
 *
 * @author German Escobar
 */
public class FreeMarkerFactory {

    private String defaultEncoding = "UTF-8";

    private String templatesDirectory = "templates/";

    public Configuration create() throws IOException {

        Configuration configuration = new Configuration();
        configuration.setDefaultEncoding(defaultEncoding);
        configuration.setDirectoryForTemplateLoading(new File(templatesDirectory));

        return configuration;

    }

    public void setDefaultEncoding(String defaultEncoding) {
        this.defaultEncoding = defaultEncoding;
    }

    public void setTemplatesDirectory(String templatesDirectory) {
        this.templatesDirectory = templatesDirectory;
    }

}
