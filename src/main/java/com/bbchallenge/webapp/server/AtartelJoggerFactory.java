package com.bbchallenge.webapp.server;

import org.jogger.Jogger;
import org.jogger.JoggerFactory;
import org.jogger.asset.FileAssetLoader;
import org.jogger.routes.RoutesLoader;
import org.jogger.template.FreemarkerTemplateEngine;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

import freemarker.template.Configuration;
import org.jogger.interceptor.Interceptor;

/**
 * This class is responsible of creating new instances of the <code>Jogger</code> configuration. We could have created a
 * <code>Jogger</code> bean in the spring context with scope prototype but it would have bloated it. Instead, this is an easy
 * way of keeping things clean and centralized.
 *
 * @author German Escobar
 */
public class AtartelJoggerFactory implements JoggerFactory, ApplicationContextAware {

    /**
     * Injected. Used to load the interceptors.
     */
    private ApplicationContext applicationContext;

    /**
     * Injected.
     */
    private RoutesLoader routesLoader;

    /**
     * Injected.
     */
    private Configuration freeMarker;

    /**
     * Injected with default.
     */
    private String staticDirectory = "static";

    @Override
    public Jogger configure() throws Exception {

        Jogger app = new Jogger();
        app.setAssetLoader(new FileAssetLoader(staticDirectory));
        app.setTemplateEngine(new FreemarkerTemplateEngine(freeMarker));
        app.setRoutes(routesLoader.load());

        // add interceptors
        /**Interceptor exceptionInterceptor = applicationContext.getBean("exceptionInterceptor", Interceptor.class);
        app.addInterceptor(exceptionInterceptor);
        Interceptor securityInterceptor = applicationContext.getBean("securityInterceptor", Interceptor.class);
        app.addInterceptor(securityInterceptor);**/


        return app;
    }

    public void setRoutesLoader(RoutesLoader routesLoader) {
        this.routesLoader = routesLoader;
    }

    public void setFreeMarker(Configuration freeMarker) {
        this.freeMarker = freeMarker;
    }

    public void setStaticDirectory(String staticDirectory) {
        this.staticDirectory = staticDirectory;
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}
