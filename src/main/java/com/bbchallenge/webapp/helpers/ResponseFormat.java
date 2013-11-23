package com.atartel.webapp.helpers;

/**
 *
 * @author axelav
 * @author Carlos Sepulveda
 */
public enum ResponseFormat {
    HTML("text/html; charset=UTF-8"),
    JSON("application/json"),
    XML("application/xml");

    private String contentType;

    private ResponseFormat(String contentType) {
        this.contentType = contentType;
    }

    public String getContentType() {
        return contentType;
    }

    public static ResponseFormat getResponseFormat(String accepts) {
        if (accepts != null && accepts.contains("json")) {
            return JSON;
        }
        return HTML;
    }
}
