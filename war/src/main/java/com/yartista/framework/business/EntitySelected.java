package com.yartista.framework.business;

import javax.inject.Qualifier;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.PARAMETER;

@Qualifier
@Target({FIELD, PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface EntitySelected {

}
