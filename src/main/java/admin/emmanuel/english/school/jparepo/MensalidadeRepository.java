package admin.emmanuel.english.school.jparepo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MensalidadeRepository extends JpaRepository <Mensalidade, Integer> {
    Mensalidade findByIdEstudante(String idEstudante);
}
