package com.bbchallenge.webapp.interceptor;

import com.bbchallenge.webapp.exception.ExceptionHandler;
import org.jogger.http.Request;
import org.jogger.http.Response;
import org.jogger.interceptor.Interceptor;
import org.jogger.interceptor.InterceptorExecution;

/**
 *
 * @author Carlos Sepulveda
 */
public class ExceptionInterceptor implements Interceptor {

    @Override
    public void intercept(Request request, Response response, InterceptorExecution execution) throws Exception {
        try {
            execution.proceed();
        } catch (Exception e) {
            new ExceptionHandler().handle(e, request, response);
        }
    }

}