package admin.emmanuel.english.school.jparepo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "utilizadores")
@Data
public class User {
    
    @Id
    private String idUtilizador;

    @Column
    private String nome;

    @Column(name = "senha_encoded")
    private String password;

    @Column
    private String funcao;
}
