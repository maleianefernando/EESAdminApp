package admin.emmanuel.english.school.jparepo;

import org.springframework.data.jpa.repository.JpaRepository;


public interface DesempenhoRepository extends JpaRepository <Desempenho, String>{
    Desempenho findByIdEstudante(String idEstudante);
}