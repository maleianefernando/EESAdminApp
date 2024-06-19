package admin.emmanuel.english.school.jparepo;

import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "estudante")
@Data
public class Student {
    
    @Id
    private String idEstudante;

    @Column(nullable = false)
    private String nomeCompleto;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private LocalDate dataNascimento;

    @Column(nullable = false)
    private String horario;

    @Column(nullable = false)
    private String morada;

    @Column(nullable = false)
    private String bairro;

    @Column(nullable = true, name = "numero_celular")
    private String numeroCelular;

    @Column
    private String sexo;

    @Column(nullable = false)
    private String nivel;

    @Column
    private String password;
}