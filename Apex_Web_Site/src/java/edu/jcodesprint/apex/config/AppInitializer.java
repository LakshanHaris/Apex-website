package edu.jcodesprint.apex.config;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class AppInitializer implements WebApplicationInitializer {

    private int maxUploadSizeInMb = 10 * 1024 * 1024;

    @Override
    public void onStartup(ServletContext container) throws ServletException {

        AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
        ctx.register(AppConfigure.class);
        ctx.setServletContext(container);

        ServletRegistration.Dynamic servlet = container.addServlet(
                "dispatcher", new DispatcherServlet(ctx));

        MultipartConfigElement multipartConfigElement = new MultipartConfigElement("/",
                maxUploadSizeInMb, maxUploadSizeInMb * 2, maxUploadSizeInMb / 2);

        servlet.setMultipartConfig(multipartConfigElement);

        servlet.setLoadOnStartup(1);
        servlet.addMapping("/");
    }

}
