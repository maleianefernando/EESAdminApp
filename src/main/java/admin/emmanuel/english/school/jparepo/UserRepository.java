package admin.emmanuel.english.school.jparepo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository <User, String>{
    User findByIdUtilizador(String idUtilizador);    

    User findByNome(String nome);
}
