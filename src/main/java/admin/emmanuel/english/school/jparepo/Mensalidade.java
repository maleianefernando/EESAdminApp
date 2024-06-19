package admin.emmanuel.english.school.jparepo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "mensalidade")
@Data
public class Mensalidade {
    
    @Id
    private String idMensalidade;

    @Column
    private String idEstudante;

    @Column
    private Integer mes;

    @Column
    private String status;

    @Column
    private Integer divida;
}
