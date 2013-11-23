package com.bbchallenge.webapp.interceptor;

import org.jogger.http.Request;
import org.jogger.http.Response;
import org.jogger.interceptor.Interceptor;
import org.jogger.interceptor.InterceptorExecution;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 *
 * @author Carlos Sepulveda
 */
public class SecurityInterceptor implements Interceptor {

    private Logger log = LoggerFactory.getLogger(SecurityInterceptor.class);

    @Override
    public void intercept(Request request, Response response, InterceptorExecution execution) throws Exception {
        /**
        Auth auth = getAuth(request);
        if (auth != null) {
            setDataUserToResponse(response, auth.getEmail());
        }

        //check if require authentication
        boolean requiresAuth = requiresAuthentication(execution);
        if (requiresAuth) {
            manageSecuredRequest(request, response, execution);
        } else {
            execution.proceed();
        }**/
    }
}