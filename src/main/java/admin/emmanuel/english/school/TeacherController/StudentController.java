package admin.emmanuel.english.school.TeacherController;

import java.time.LocalDate;
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
import org.springframework.web.bind.annotation.RequestParam;

import admin.emmanuel.english.school.jparepo.Desempenho;
import admin.emmanuel.english.school.jparepo.DesempenhoRepository;
import admin.emmanuel.english.school.jparepo.Mensalidade;
import admin.emmanuel.english.school.jparepo.MensalidadeRepository;
import admin.emmanuel.english.school.jparepo.Student;
import admin.emmanuel.english.school.jparepo.StudentRepository;

@Controller
@RequestMapping("/estudante")
public class StudentController {
    @Autowired
    private StudentRepository stRepo;

    @Autowired
    private DesempenhoRepository desempenhoRepo;

    @Autowired
    private MensalidadeRepository mensalidadeRepo;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("/registar")
    public String resgistarEstudante(Model model){
        model.addAttribute("estudante", new Student());
        return "registar_estudante";
    }

    @PostMapping("/registar/salvar")
    public String salvarEstudante(@ModelAttribute Student st){

        try {
            System.out.println(st.getDataNascimento());
            System.out.println(st.getHorario());
            st.setIdEstudante(generateId());
            
            st.setPassword(passwordEncoder.encode(generatePassword(st.getDataNascimento())));

            stRepo.save(st);
        } catch (Exception e) {
            
            e.printStackTrace();
        }

        return "redirect:/estudante/registar";
    }

    @GetMapping("/listar")
    public String listarEstudantes(Model model){
        List<Student> st = stRepo.findAll();
        model.addAttribute("estudante", st);

        return "lista_estudantes";
    }

    @GetMapping("/desempenho")
    public String desempenho(@RequestParam(name="nivel", required=false, defaultValue = "all") String nivel, Model model){
        List<Desempenho> d = desempenhoRepo.findAll();

        model.addAttribute("notas", d);
        return "desempenho";
    }
    
    @GetMapping("/mensalidades")
    public String mensalidade(Model model){
        List<Mensalidade> m = mensalidadeRepo.findAll();

        model.addAttribute("mensalidade", m);
        return "mensalidades";
    }

    private String generateId(){
        String id = "est_";
        Random r = new Random();

        for(int i = 0; i < 4; i++){
            id = id + r.nextInt(9);
        }

        return id;
    }

    private String generatePassword(LocalDate birth) throws NullPointerException{

        Integer day = birth.getDayOfMonth();
        Integer month = birth.getMonthValue();
        Integer year = birth.getYear();

        String dayString = day.toString();
        String monthString = month.toString();

        if(day < 10){
            dayString = "0" + day;
        } 
        if(month < 10){
            monthString = "0" + month;
        }

        return dayString + monthString + year.toString();
    }
}
