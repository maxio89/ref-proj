package com.yartista.test;

import com.yartista.YartistaConfig;
import org.jboss.solder.servlet.WebApplication;

import javax.annotation.PostConstruct;
import javax.enterprise.inject.Alternative;
import javax.enterprise.inject.Specializes;

@Alternative
@Specializes
public class YartistaTestConfig extends YartistaConfig {
// -------------------------- OTHER METHODS --------------------------

  @PostConstruct
  public void init()
  {
    super.init();
    reload();
  }

  @Override
  protected void onStartup(WebApplication ignore)
  {
    /**
     * We don't want to init this component on startup because database may not be ready during deployment.
     */
  }
}
