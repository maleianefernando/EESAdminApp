package admin.emmanuel.english.school.jparepo;

import org.springframework.data.jpa.repository.JpaRepository;

import admin.emmanuel.english.school.TeacherController.Funcionario;

import java.util.List;


public interface FuncionarioRepository extends JpaRepository<Funcionario, String> {

    Funcionario findByIdFuncionarios(String idFuncionarios);
}
