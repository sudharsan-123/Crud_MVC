package crud.configuration;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@ComponentScan("crud")
public class Myconfigration {
	
	
	
//	@Bean
//	ViewResolver get()
//	{
//		return new InternalResourceViewResolver("frontend/",".jsp");
//	}
	
	@Bean
	EntityManager manager() {
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}

}
