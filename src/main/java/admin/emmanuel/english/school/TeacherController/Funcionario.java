package admin.emmanuel.english.school.TeacherController;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "funcionarios")
@Data
public class Funcionario {
    
    @Id
    private String idFuncionarios;

    @Column
    private String idUtilizador;

    @Column
    private String nome;

    @Column
    private Integer idade;

    @Column
    private String identificacao;

    @Column
    private String experienciaProfissional;

    @Column
    private String habilidades;

    @Column
    private String funcao;
}
