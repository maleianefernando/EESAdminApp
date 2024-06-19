package admin.emmanuel.english.school;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class GeneralController {
    
    @GetMapping
    public String homePage(){
        return "home";
    }
}
