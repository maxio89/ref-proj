package com.yartista.language.business;

import com.yartista.YartistaConfig;
import com.yartista.domain.Language;
import com.yartista.framework.business.ApplicationDefault;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Produces;
import javax.inject.Inject;
import javax.inject.Named;

@ApplicationScoped
public class DefaultLanguageProducer {
// ------------------------------ FIELDS ------------------------------

    private Language defaultLanguage;

    @Inject
    private LanguageHome languageHome;

    @SuppressWarnings("CdiInjectionPointsInspection")
    @Inject
    private YartistaConfig yartistaConfig;

// --------------------- GETTER / SETTER METHODS ---------------------

    @ApplicationDefault
    @Named
    @Produces
    public Language getDefaultLanguage()
    {
        if (defaultLanguage == null) {
            final String language = yartistaConfig.getDefaultLanguage();
            languageHome.clearInstance();
            defaultLanguage = languageHome.getLanguageByISO6391(language);
        }
        return defaultLanguage;
    }
}
