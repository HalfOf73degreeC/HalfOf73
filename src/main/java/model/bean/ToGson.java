package model.bean;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.google.gson.Gson;

@Configuration
public class ToGson {
	@Bean
	public Gson gson() {
		Gson gson = new Gson();
		
		return gson;
	}
}
