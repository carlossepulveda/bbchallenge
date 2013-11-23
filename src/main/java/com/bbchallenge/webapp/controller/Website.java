package com.bbchallenge.webapp.controller;

import com.atartel.webapp.helpers.ResponseFormat;
import org.jogger.http.Request;
import org.jogger.http.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author axelav
 */
public class Website {
    
    private static Logger log = LoggerFactory.getLogger(Website.class);

    public void index(Request request, Response response) {
        response.contentType(ResponseFormat.HTML.getContentType()).render("index.ftl");
    }

}