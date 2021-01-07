package com.sei.springdemo.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import java.util.logging.Logger;

@Aspect
@Component
public class CRMLoggingAspect {

    @Before("com.sei.springdemo.aspect.AOPExpression.forAppFlow()")
    public void before(JoinPoint theJoinPoint) {
        String method = theJoinPoint.getSignature().toShortString();
        System.out.println(" ==>> in @Before: Calling Method " + method);

        Object[] args = theJoinPoint.getArgs();

        for (Object i : args) {
            System.out.println("---> argument: " + i);
        }

    }

    @AfterReturning(pointcut = "com.sei.springdemo.aspect.AOPExpression.forAppFlow()", returning = "result")
    public void afterReturning(JoinPoint theJoinPoint, Object result) {
        String method = theJoinPoint.getSignature().toShortString();
        System.out.println(" ==>> in @Before: Calling Method " + method);

        System.out.println(" ==>> result: " + result);

    }
}
