package com.yartista.language.business;

import com.yartista.domain.Language;
import com.yartista.framework.business.EntityQuery;

import java.io.Serializable;

public class LanguageList extends EntityQuery<Language> implements Serializable {
// --------------------------- CONSTRUCTORS ---------------------------

    public LanguageList()
    {
        setEjbql("select l from Language l");
    }
}
