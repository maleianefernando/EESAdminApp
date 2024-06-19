package admin.emmanuel.english.school.TeacherController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.emmanuel.english.school.jparepo.CustomUserDetailsService;
import admin.emmanuel.english.school.jparepo.User;

@Controller
@RequestMapping("/minha_conta")
public class AccountController {
    
    @GetMapping("/meus_dados")
    public String userAccount(Model model){
        model.addAttribute("user", getUser());
        return "conta";
    }

    private User getUser(){
        return CustomUserDetailsService.getLoggedUser();
    }
}
