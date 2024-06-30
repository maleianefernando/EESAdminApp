package admin.emmanuel.english.school.jparepo;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface FuncionarioRepository extends JpaRepository<Funcionario, String> {

    Funcionario findByIdFuncionarios(String idFuncionarios);
}
