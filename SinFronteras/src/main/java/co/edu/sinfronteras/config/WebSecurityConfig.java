/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

  @Autowired
  private UserDetailsService userDetailsService;
  
  @Bean
  public BCryptPasswordEncoder passwordEncoder() {
    return new BCryptPasswordEncoder();
  };
  
  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
  }
@Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/nosotros").permitAll()
                .antMatchers("/nosotros/contacto").permitAll()
                .antMatchers("/fundaciones").permitAll()
                .antMatchers("/fundaciones/ciegos").permitAll()
                .antMatchers("/fundaciones/sordos").permitAll()
                .antMatchers("/instituciones").permitAll()
                .antMatchers("/instituciones/ciegos").permitAll()
                .antMatchers("/instituciones/sordos").permitAll()
                .antMatchers("/naturalDisasters").permitAll()
                .antMatchers("/registerUsers").permitAll()
                .antMatchers("/addUser").permitAll()
                .antMatchers("/").permitAll()
                .antMatchers("/login").permitAll()
                .antMatchers("/perfilUser").hasAnyAuthority("ADMIN","USUARIOCOMUN")
                .antMatchers("/administracion").hasAnyAuthority("ADMIN")
                .antMatchers("/configCurrentWeather").hasAnyAuthority("ADMIN")
                .antMatchers("/contentManagement").hasAnyAuthority("ADMIN")
                .antMatchers("/configBiological").hasAnyAuthority("ADMIN")
                .antMatchers("/configGeophysical").hasAnyAuthority("ADMIN")
                .antMatchers("/configHome").hasAnyAuthority("ADMIN")
                .antMatchers("/configHydrological").hasAnyAuthority("ADMIN")
                .antMatchers("/configMetereological").hasAnyAuthority("ADMIN")
                .antMatchers("/configMitigation").hasAnyAuthority("ADMIN")
                .antMatchers("/configNaturalDisasters").hasAnyAuthority("ADMIN")
                .antMatchers("/control").hasAnyAuthority("ADMIN")
                .antMatchers("/foro").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/eliminarUsuario").hasAnyAuthority("ADMIN")
                .antMatchers("/selectUser").permitAll()
                .antMatchers("/guardarUsuario").permitAll()
                .antMatchers("/modificarUsuario").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/guardarComentario").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/modificarComentario").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/eliminarComentario").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/editComentario").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/loginAction").permitAll()
                .antMatchers("/error").permitAll()
                .antMatchers("/accesoNoAutorizado").permitAll()
                .antMatchers("/foroManagement").hasAnyAuthority("ADMIN")
                .antMatchers("/editUserAll").hasAnyAuthority("ADMIN","COMUN")
                .antMatchers("/modificarUsuarioAll").permitAll()
                .anyRequest().authenticated()
                .and()
                // form login
                .csrf().disable().formLogin()
                .loginPage("/login").loginProcessingUrl("/loginAction").permitAll()
                .usernameParameter("Email_User")
                .passwordParameter("Password_User")
                .failureUrl("/error")
                .defaultSuccessUrl("/")
                .and()
                // logout
                .logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/login").and()
                .exceptionHandling()
                .accessDeniedPage("/accesoNoAutorizado");
       
       
    }
  @Override
    public void configure(WebSecurity web) throws Exception {
            web.ignoring().antMatchers("/css/**","/img/**","/js/**");
    }
}