package admin.emmanuel.english.school.jparepo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository <Student, String> {

    Student findByIdEstudante(String idEstudante);

    List<Student> findByNivel(String nivel);
}