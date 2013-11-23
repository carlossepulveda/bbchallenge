package com.bbchallenge.webapp.exception;

/**
 *
 * @author Wilson Rivera
 */
public class DuplicatedRecordException extends Exception{
 
    private static final long serialVersionUID = 1L;

    public DuplicatedRecordException() {
    }

    public DuplicatedRecordException(String message) {
        super(message);
    }
    
}
