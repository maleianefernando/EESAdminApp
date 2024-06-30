package admin.emmanuel.english.school.TeacherController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.emmanuel.english.school.jparepo.CustomUserDetailsService;
import admin.emmanuel.english.school.jparepo.User;
import admin.emmanuel.english.school.jparepo.UserRepository;

@Controller
@RequestMapping("/minha_conta")
public class AccountController {

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    UserRepository userRepo;
    
    @GetMapping("/meus_dados")
    public String userAccount(Model model){
        model.addAttribute("user", getUser());
        return "conta";
    }
    
    @PostMapping("/alterar_palavra_passe")
    public String alterarSenha(@ModelAttribute User user){
        String passEncoded = passwordEncoder.encode(user.getPassword());

        user.setPassword(passEncoded);

        System.out.println(user.getPassword());
        userRepo.save(user);

        return "redirect:/funcionario/listar";
    }
    
    
    private User getUser(){
        return CustomUserDetailsService.getLoggedUser();
    }
}
