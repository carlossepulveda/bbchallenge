package com.bbchallenge.webapp.server;

import com.bbchallenge.webapp.interceptor.ExceptionInterceptor;
import com.bbchallenge.webapp.interceptor.SecurityInterceptor;
import freemarker.template.Configuration;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import org.jogger.Jogger;
import org.jogger.asset.FileAssetLoader;
import org.jogger.interceptor.Interceptor;
import org.jogger.routes.FileSystemRoutesLoader;
import org.jogger.template.FreemarkerTemplateEngine;

/**
 *
 * @author Carlos Sepulveda
 */
public class AppFactory {

    private static String STATIC_FOLDER = "static";

    public static Jogger buildApp() throws IOException, ParseException {
        Jogger app = new Jogger();

        SecurityInterceptor securityInterceptor = new SecurityInterceptor();
        app.addInterceptor(securityInterceptor);
        Interceptor exceptionInterceptor = new ExceptionInterceptor();
        app.addInterceptor(exceptionInterceptor);

        setTemplateEngine(app);

        FileSystemRoutesLoader routesLoader = new FileSystemRoutesLoader("routes.config");
        routesLoader.setBasePackage("com.atartel.webapp.controller");

        app.setRoutes(routesLoader.load());
        app.setAssetLoader(new FileAssetLoader(STATIC_FOLDER));

        return app;
    }

    private static void setTemplateEngine(Jogger app) throws IOException {
        Configuration freemarker = new Configuration();
        freemarker.setDirectoryForTemplateLoading(new File("templates/"));
        freemarker.setDefaultEncoding("UTF-8");
        app.setTemplateEngine(new FreemarkerTemplateEngine(freemarker));
    }
    
}
