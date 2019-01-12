package com.server;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
@EnableWebMvc
@ComponentScan(basePackages={"com.controllers", "com.dao.tables","com.dao.utils","com.server"})
public class DbExpDispatcher implements WebMvcConfigurer {
	
	
	public void configureDefaultServletHandling(
								DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
	
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**")
		.addResourceLocations("/WEB-INF/resources/");
	}
	
    public void configureViewResolvers(ViewResolverRegistry registry) {
      registry.jsp("/WEB-INF/web-pages/", ".jsp");
    }
}
