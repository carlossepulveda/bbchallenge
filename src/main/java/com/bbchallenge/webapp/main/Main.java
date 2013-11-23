package com.bbchallenge.webapp.main;

import java.io.IOException;
import java.text.ParseException;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author Carlos Sepulveda
 */
public class Main {

    public static void main(String [] args) throws IOException, ParseException, InterruptedException {
        try {
            String[] contextLocations = {
                "classpath*:application-context.xml",
                "classpath*:web-context.xml"
            };
            ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(contextLocations);
            context.registerShutdownHook();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
