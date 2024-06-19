// package admin.emmanuel.english.school.jparepo;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.boot.CommandLineRunner;
// import org.springframework.security.crypto.password.PasswordEncoder;
// import org.springframework.stereotype.Component;

// import lombok.extern.slf4j.Slf4j;

// @Slf4j
// @Component
// public class UpdateAnObjectAttribute implements CommandLineRunner {

//     @Autowired
//     private UserRepository userRepo;

//     @Autowired
//     private PasswordEncoder passwordEncoder;

//     @Override
//     public void run(String... args) throws Exception {
//         java.util.List<User> users = userRepo.findAll();

//         for(User user : users){
//             // Integer day = user.getDataNascimento().getDayOfMonth();
//             // Integer month = user.getDataNascimento().getMonthValue();
//             // Integer year = user.getDataNascimento().getYear();

//             // String dayString = day.toString();
//             // String monthString = month.toString();
//             // String passString = "";

//             // if(day < 10){
//             //     dayString = "0" + day;
//             // } 
//             // if(month < 10){
//             //     monthString = "0" + month;
//             // }

//             // Update email
//             // user.setEmail(user.getNomeCompleto().replace(" ", "").replace(".","").toLowerCase() + "@gmail.com");

//             // Update password
//             // passString = new String(dayString + monthString + year.toString());
//             // user.setPassword(passString);
//             if(!user.getPassword().startsWith("{bcrypt}")){
//                 String encodedPassword = passwordEncoder.encode(user.getPassword());

//                 user.setPassword(encodedPassword);
//                 userRepo.save(user);
//                 System.out.println(user.getPassword());
//             }
//         }
//     }
// }
