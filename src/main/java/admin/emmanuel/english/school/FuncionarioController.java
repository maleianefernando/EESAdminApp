package admin.emmanuel.english.school;

import java.lang.reflect.Field;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.emmanuel.english.school.TeacherController.FuncionarioListWrapper;
import admin.emmanuel.english.school.jparepo.Funcionario;
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
    public String listarFuncionarios(Model model){
        FuncionarioListWrapper wrapper = new FuncionarioListWrapper();
        
        List<Funcionario> fc = funcRepo.findAll();
        wrapper.setFuncionarios(fc);

        model.addAttribute("wrapper", wrapper);

        return "listar_funcionarios";
    }

    @PostMapping("/editar")
    public String editarFuncionarios(@ModelAttribute("wrapper") FuncionarioListWrapper wrapper){

        // for(Funcionario f : wrapper.getFuncionarios()){
        //     printObject(f);
        // }
        funcRepo.saveAll(wrapper.getFuncionarios());

        return "redirect:/funcionario/listar";
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

    public void printObject(Object obj){
        Class<?> clazz = obj.getClass();
        Field[] fields = clazz.getDeclaredFields();

        System.out.println(clazz.getSimpleName()+" {");
        for (Field field : fields) {
            field.setAccessible(true);
            String fieldName = field.getName();
            Object value;

            try {
                value = field.get(obj);
                System.out.println("\t" + fieldName + ": " + value);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        System.out.println("}");
    }
}
