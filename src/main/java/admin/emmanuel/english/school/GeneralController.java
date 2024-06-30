package admin.emmanuel.english.school;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.emmanuel.english.school.jparepo.CustomUserDetailsService;
import admin.emmanuel.english.school.jparepo.User;

@Controller
@RequestMapping("/")
public class GeneralController {
    
    @GetMapping
    public String homePage(){
        User logged = getUser();
        if (! logged.getFuncao().equals("Administrador")) {
            return "home_user";
        } else {
            return "home";
        }
    }

    private User getUser(){
        return CustomUserDetailsService.getLoggedUser();
    }
}
