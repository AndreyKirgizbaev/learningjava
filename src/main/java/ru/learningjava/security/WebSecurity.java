package ru.learningjava.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import ru.learningjava.service.UserService;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurity extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource dataSource;

//    private final UserService userDetailsService;
//    private final BCryptPasswordEncoder bCryptPasswordEncoder;
//
//    public WebSecurity(UserService userDetailsService, BCryptPasswordEncoder bCryptPasswordEncoder) {
//        this.userDetailsService = userDetailsService;
//        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
//    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.headers().frameOptions().disable();

        http.authorizeRequests()
                .antMatchers("/", "/index", "/resources/**",
                        "/java", "/books", "/levels", "/search", "/registration", "/h2-console/**").permitAll()
                .and()
                .formLogin().loginPage("/login").permitAll().usernameParameter("username")
                .passwordParameter("password").loginProcessingUrl("/spring_security_check").failureUrl("/login?error=true")
                .and()
                .httpBasic()
                .and()
                .authorizeRequests()
                .antMatchers("/security/**").hasRole("ADMIN")
                .antMatchers("/level1part1").hasRole("L1P1")
                .antMatchers("/level1part2").hasRole("L1P2")
                .antMatchers("/level1part3").hasRole("L1P3")
                .antMatchers("/level1part4").hasRole("L1P4")
                .antMatchers("/level1part5").hasRole("L1P5")
                .antMatchers("/level1part6").hasRole("L1P6")
                .antMatchers("/level1part7").hasRole("L1P7")
                .antMatchers("/level1part8").hasRole("L1P8")
                .antMatchers("/level1part9").hasRole("L1P9")
                .antMatchers("/level1part10").hasRole("L1P10")
                .antMatchers("/level2part1").hasRole("L2P1")
                .antMatchers("/level2part2").hasRole("L2P2")
                .antMatchers("/level2part3").hasRole("L2P3")
                .antMatchers("/level2part4").hasRole("L2P4")
                .antMatchers("/level2part5").hasRole("L2P5")
                .antMatchers("/level2part6").hasRole("L2P6")
                .antMatchers("/level2part7").hasRole("L2P7")
                .antMatchers("/level2part8").hasRole("L2P8")
                .antMatchers("/level2part9").hasRole("L2P9")
                .antMatchers("/level2part10").hasRole("L2P10")
                .antMatchers("/user/**").hasRole("USER")
                .anyRequest().authenticated()
                .and()
                .logout().logoutUrl("/j_spring_security_logout").logoutSuccessUrl("/")
                .and()
                .exceptionHandling().accessDeniedPage("/index.jsp")
                .and()
                .rememberMe().key("myKey").tokenValiditySeconds(300)
                .and()
                .csrf().disable();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder);

        auth.jdbcAuthentication()
                .dataSource(dataSource)
                .passwordEncoder(NoOpPasswordEncoder.getInstance())
                .usersByUsernameQuery("select username, encrypted_password, email_verification_status from users where username=?")
                .authoritiesByUsernameQuery("select u.username, ur.roles from users u inner join user_role ur on u.id = ur.user_id where u.username=?");
    }

}
