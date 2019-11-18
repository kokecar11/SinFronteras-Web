/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.service;

import co.edu.sinfronteras.dao.UserDao;
import co.edu.sinfronteras.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author sala1
 */
@Service("userDetailsService")
public class UserDetailsServiceImp implements UserDetailsService{    
    @Autowired
    private UserDao userDetailsDao;

    @Transactional(readOnly = true)
    @Override
    public UserDetails loadUserByUsername(String Email_User) throws UsernameNotFoundException {

        User user = userDetailsDao.findUserByEmail(Email_User);
        UserBuilder builder = null;
        if (user != null) {

            builder = org.springframework.security.core.userdetails.User.withUsername(Email_User);
           // builder.disabled(!user.getUserStatus());
            builder.password(user.getPassword_User());
           /* String[] authorities = user.getAuthorities()
                    .stream().map(a -> a.getAuthority()).toArray(String[]::new);
*/
           String authorities = user.getRol_User();
            builder.authorities(authorities);
        } else {
            throw new UsernameNotFoundException("User not found.");
        }
        return builder.build();
    }
    
    
}
