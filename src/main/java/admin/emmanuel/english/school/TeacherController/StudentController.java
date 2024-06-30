package admin.emmanuel.english.school.TeacherController;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
import org.springframework.web.bind.annotation.RequestBody;


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
    public String resgistarEstudante(Model model, @RequestParam(name = "success", required = false, defaultValue = "false") boolean success){
        model.addAttribute("estudante", new Student());
        return "registar_estudante";
    }

    // @Transactional
    @PostMapping("/registar/salvar")
    public String salvarEstudante(@ModelAttribute Student st){

        boolean registerSuccess = false;
        try {
            System.out.println(st.getDataNascimento());
            System.out.println(st.getHorario());
            st.setIdEstudante(generateId());
            
            st.setPassword(passwordEncoder.encode(generatePassword(st.getDataNascimento())));

            stRepo.save(st);
            registerSuccess = true;
        } catch (Exception e) {
            
            e.printStackTrace();

            registerSuccess = false;
        }

        return "redirect:/estudante/registar?success="+registerSuccess;
    }

    @GetMapping("/listar")
    public String listarEstudantes(@RequestParam(name = "nivel", required = false, defaultValue = "all") String nivel, Model model){
        EstudanteListWrapper wrapper = new EstudanteListWrapper();

        if(nivel.equalsIgnoreCase("all")){
            List<Student> allSt = stRepo.findAll();
            wrapper.setEstudantes(allSt);

            model.addAttribute("wrapper", wrapper);
        }
        else{
            List<Student> filteredStudent = stRepo.findByNivel(nivel);
            wrapper.setEstudantes(filteredStudent);
            model.addAttribute("wrapper", wrapper);
        }
        // System.out.println(nivel);

        return "lista_estudantes";
    }

    @Transactional
    @PostMapping("/editar")
    public String editarEstudante(@ModelAttribute("wrapper") EstudanteListWrapper wrapper){
        Student tmpSt;

        for(Student s : wrapper.getEstudantes()){
            tmpSt = stRepo.findByIdEstudante(s.getIdEstudante());
            s.setPassword(tmpSt.getPassword());
            
            stRepo.save(s);
            // Class<?> clazz = s.getClass();
            // Field[] fields = clazz.getDeclaredFields();

            // for (Field field : fields) {
            //     field.setAccessible(true);
            //     String fieldName = field.getName();
            //     Object value;

            //     try {
            //         value = field.get(s);
            //         System.out.println(fieldName + ": " + value);
            //     } catch (Exception e) {
            //         e.printStackTrace();
            //     }
            // }
            // System.out.println("Password encoded: " + tmpSt.getPassword());
        }

        return "redirect:/estudante/listar";
    }

    @GetMapping("/desempenho")
    public String desempenho(@RequestParam(name="nivel", required=false, defaultValue = "all") String nivel, Model model){
        List<Student> st = stRepo.findByNivel(nivel);

        List<Desempenho> d;
        DesempenhoWrapper wrapper = new DesempenhoWrapper();
        System.out.println(nivel);
        if(nivel.equalsIgnoreCase("all")){
            d = desempenhoRepo.findAll();
        }
        else{
            System.out.println(nivel);
            d = new ArrayList<>();
            for (Student s : st) {
                d.add(desempenhoRepo.findByIdEstudante(s.getIdEstudante()));
            }
        }
        wrapper.setNotas(new ArrayList<>());
        wrapper.setNotas(d);
        model.addAttribute("wrapper", wrapper);

        return "desempenho";
    }

    @Transactional
    @PostMapping("/lancar_notas")
    public String lancarNotas(@ModelAttribute("wrapper") DesempenhoWrapper wrapper) {
        // System.out.println("post");
        BigDecimal divisor = new BigDecimal(8);
        
        for (Desempenho d : wrapper.getNotas()) {
            d.setMedia((d.getTesteEscrito1().add(d.getTesteEscrito2()).add(d.getTesteEscrito3()).add(d.getTesteOral1()).add(d.getTesteOral2()).add(d.getTesteOral3()).add(d.getTesteOral4()).add(d.getTesteOral5())).divide(divisor));
            System.out.println(d.getMedia());
        }
        desempenhoRepo.saveAll(wrapper.getNotas());

        return "redirect:/estudante/desempenho";
    }
    
    
    @GetMapping("/mensalidades")
    public String mensalidade(@RequestParam(name = "payment_success", required = false, defaultValue = "false") boolean paymentSuccess, Model model){
        MensalidadeListWrapper wrapper = new MensalidadeListWrapper();

        List<Mensalidade> m = mensalidadeRepo.findAll();
        wrapper.setMensalidades(m);

        model.addAttribute("wrapper", wrapper);

        return "mensalidades";
    }
    
    @PostMapping("/pagar/mensalidade")
    public String pagarMensalidade(@ModelAttribute("wrapper") MensalidadeListWrapper wrapper, @RequestParam(value="check", required=false) String check){
        Mensalidade s;
        boolean paymentSuccess = false;
        // System.out.println("pagar");
        for (Mensalidade m : wrapper.getMensalidades()) {
            s = mensalidadeRepo.findByIdEstudante(m.getIdEstudante());

            if(m.getDivida()==0 || m.getDivida()==s.getDivida()){
                m.setStatus("pago");
                mensalidadeRepo.save(m);
                paymentSuccess = true;
            }
            else{
                System.out.println("Nao foi possivel pagar a mensalidade de " + m.getIdEstudante());

                // paymentSuccess = false;
            }
            printObject(m);
        }

        return "redirect:/estudante/mensalidades?payment_succes="+paymentSuccess;
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
