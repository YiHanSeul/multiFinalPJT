//package com.petcare.home.test;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.builders.WebSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
//
//@Configuration
//@EnableWebSecurity
//public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{
//	@Override
//	protected void configure(HttpSecurity http)throws Exception {
//				http
//					.authorizeHttpRequests()
//						.antMatchers("/index").permitAll()
//						.antMatchers("/chat").hasAuthority("ROLE_ADMIN")
//						.anyRequest().authenticated()
//					.and()
//						.formLogin()
//						.loginPage("/user/login")
//						.usernameParameter("userId")
//						.passwordParameter("userPw")
//						.defaultSuccessUrl("index1", true)
//						.permitAll()
//					.and()
//						.logout();
////						.logoutRequestMatcher(new AntPathRequestMatcher("/index"));
//	}
//	
//	@Override
//	public void configure(WebSecurity web) throws Exception{
//		web.ignoring().antMatchers("/static/js/**", "/static/css/**", "/static/img/**");
//		
//	}
//}
