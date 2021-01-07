package com.sei.springdemo.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AOPExpression {

    @Pointcut("execution(* com.sei.springdemo.controller.*.*(..))")
    public void forControllerPackage() {
    }

    @Pointcut("execution(* com.sei.springdemo.service.*.*(..))")
    public void forServicePackage() {
    }

    @Pointcut("execution(* com.sei.springdemo.dao.*.*(..))")
    public void forDaoPackage() {
    }

    @Pointcut("forServicePackage() || forControllerPackage() || forDaoPackage()")
    public void forAppFlow() {
    }
}
