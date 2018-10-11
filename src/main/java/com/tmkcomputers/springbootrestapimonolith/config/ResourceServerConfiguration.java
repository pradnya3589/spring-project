package com.tmkcomputers.springbootrestapimonolith.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;

@Configuration
@EnableResourceServer
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {

	private static final String RESOURCE_ID = "resource-server-rest-api";
	private static final String SECURED_READ_SCOPE = "#oauth2.hasScope('read')";
	private static final String SECURED_WRITE_SCOPE = "#oauth2.hasScope('write')";
	private static final String SECURED_PATTERN = "/api/**";
	//hasRole('ROLE_USER')

	@Override
	public void configure(ResourceServerSecurityConfigurer resources) {
		resources.resourceId(RESOURCE_ID);
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers(HttpMethod.POST, SECURED_PATTERN).access(SECURED_WRITE_SCOPE)
				.antMatchers(HttpMethod.PUT, SECURED_PATTERN).access(SECURED_WRITE_SCOPE)
				.antMatchers(HttpMethod.DELETE, SECURED_PATTERN).access(SECURED_WRITE_SCOPE)
				.antMatchers(HttpMethod.GET, SECURED_PATTERN).access(SECURED_READ_SCOPE)
				.anyRequest().permitAll();
	}
}


//	http.authorizeRequests()
//	.antMatchers("/**").permitAll()
//	.antMatchers(SECURED_PATTERN).access(SECURED_WRITE_SCOPE)
//	.anyRequest().access(SECURED_READ_SCOPE);

// NOTE: This is a first match wins so you may need to play with the order. For
// example, I originally had /** first:
// http.authorizeRequests()
// .antMatchers("/**").access("hasRole('ROLE_USER')")
// .antMatchers("/login**").permitAll()
// .antMatchers("/healthcheck**").permitAll()
// Which caused the site to continually redirect all requests for /login back to
// /login. Likewise I had /admin/** last:
// .antMatchers("/**").access("hasRole('ROLE_USER')")
// .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")