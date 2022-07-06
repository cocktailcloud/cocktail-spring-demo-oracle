/**
 * Copyright ⓒ 2018 Acornsoft. All rights reserved
 * @project     : cocktail-java
 * @category    : run.acloud.framework.filter
 * @class       : TransactionLoggingFilter.java
 * @author      : Gun Kim (gun@acornsoft.io)
 * @date        : 2018. 8. 28 오후 07:30:38
 * @description :
 */
package com.example.doosan.framework;

import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StopWatch;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Slf4j
public class TransactionLoggingFilter implements Filter {
    @Override
    public void doFilter( ServletRequest request, ServletResponse response, FilterChain chain ) throws IOException, ServletException {
        StopWatch sw = new StopWatch();
        sw.start();
        long uuid = UUIDGenerator.tXID();
        String suuid = String.format("%d", uuid);
        request.setAttribute("tom-uuid", suuid);
        try {
            chain.doFilter( request, response );
        } finally {
            sw.stop();
            log.info(String.format("### [%s] Request ended : URI[ %s ] : ExecutionTime[ %ss ]", suuid, ((HttpServletRequest) request).getRequestURI(), sw.getTotalTimeSeconds()));
        }
    }

    @Override
    public void init( FilterConfig config )
        throws ServletException {
    }

    @Override
    public void destroy() {
    }
}
