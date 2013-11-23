package com.bbchallenge.webapp.server;

import java.io.IOException;
import java.text.ParseException;
import org.jogger.JoggerServer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author Carlos Sepulveda
 */
public class Server {

    private static int PORT = 5000;

    private static Logger log = LoggerFactory.getLogger(Server.class);

    private JoggerServer server;

    public void run() throws IOException, ParseException, InterruptedException {
        server = new JoggerServer(AppFactory.buildApp());
        server.listen(getPort());
        server.join();
    }

    private int getPort() {
        try {
            return Integer.parseInt(System.getenv("PORT"));
        } catch (Exception e) {
            return PORT;
        }
    }

    public void stop() {
        server.stop();
    }
}
