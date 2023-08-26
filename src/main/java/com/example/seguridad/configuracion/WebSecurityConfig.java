package com.example.seguridad.configuracion;

import com.example.seguridad.service.SecurityUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import static org.springframework.security.web.util.matcher.AntPathRequestMatcher.antMatcher;

@Configuration
public class WebSecurityConfig {

    @Autowired
    SecurityUserDetailsService userDetailsService;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception{
        http
                .authorizeRequests(authorize ->
                {
                    authorize.requestMatchers(antMatcher("/")).permitAll();
                    authorize.requestMatchers(antMatcher("/menu")).permitAll();
                    authorize.requestMatchers(antMatcher("/contactView")).hasRole("CLIENTE");
                    authorize.requestMatchers(antMatcher("/createTrainingView")).hasRole("CLIENTE");
                    authorize.requestMatchers(antMatcher("/listTrainingView")).hasRole("CLIENTE");
                    authorize.requestMatchers(antMatcher("/editUsersView")).hasRole("ADMINISTRATIVO");
                    authorize.requestMatchers(antMatcher("/paysView")).hasRole("ADMINISTRATIVO");
                    authorize.requestMatchers(antMatcher("/visitView")).hasRole("PROFESIONAL");

                    authorize.anyRequest().authenticated();
                })
                .formLogin(Customizer.withDefaults())
                .httpBasic(Customizer.withDefaults());
        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder(){
        return NoOpPasswordEncoder.getInstance();
    }

    @Bean
    SecurityFilterChain authenticationManager(HttpSecurity http, PasswordEncoder passwordEncoder) throws Exception{
        http
                .getSharedObject(AuthenticationManagerBuilder.class)
                .userDetailsService(userDetailsService)
                .passwordEncoder(passwordEncoder);
        return http.build();
    }

}
