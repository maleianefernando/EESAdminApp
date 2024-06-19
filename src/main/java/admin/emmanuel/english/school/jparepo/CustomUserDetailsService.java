package admin.emmanuel.english.school.jparepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    private static User loggedUser;

    @Autowired
    private UserRepository userRepo;

    @Override
    public UserDetails loadUserByUsername(String nome) throws UsernameNotFoundException {
        
        User user = userRepo.findByNome(nome);

        if(user == null){
            throw new UsernameNotFoundException("Username not found: " + nome);
        }
        System.out.println(user.getNome());
        System.out.println(user.getFuncao());

        loggedUser = user;

        return new CustomUserDetails(user);
    }

    public static User getLoggedUser(){
        return loggedUser;
    }
}
