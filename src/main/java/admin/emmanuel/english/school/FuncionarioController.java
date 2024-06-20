package admin.emmanuel.english.school;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.emmanuel.english.school.TeacherController.Funcionario;
import admin.emmanuel.english.school.jparepo.FuncionarioRepository;

@RequestMapping("/funcionario")
@Controller
public class FuncionarioController {
    
    @Autowired
    FuncionarioRepository funcRepo;

    @Autowired
    PasswordEncoder passwordEncoder;


    @GetMapping("/registar")
    public String registarFuncionario(Model model){
        model.addAttribute("funcionario", new Funcionario());

        return "registar_funcionario";
    }

    @PostMapping("/registar/salvar")
    public String salvarFuncionarios(@ModelAttribute Funcionario f){

        try {

            f.setIdFuncionarios(generateId());
            f.setIdUtilizador(generateUserId());
            System.out.println(f.getIdFuncionarios());
            System.out.println(f.getNome());

            funcRepo.save(f);
        } catch (Exception e) {
            
            e.printStackTrace();
        }


        return "redirect:/funcionario/registar";
    }

    @GetMapping("/listar")
    public String listarFuncionarios(){

        return "listar_funcionarios";
    }

    private String generateId(){
        String id = "func_";
        Random r = new Random();

        for(int i = 0; i < 4; i++){
            id = id + r.nextInt(9);
        }

        return id;
    }

    private String generateUserId(){
        String id = "user_";
        Random r = new Random();

        for(int i = 0; i < 4; i++){
            id = id + r.nextInt(9);
        }

        return id;
    }
}
