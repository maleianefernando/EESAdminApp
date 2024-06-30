package admin.emmanuel.english.school.jparepo;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "avaliacao")
@Data
public class Desempenho {

    @Id
    private String idEstudante;

    @Column(name = "teste_escrito1", columnDefinition = "DECIMAL")
    private BigDecimal testeEscrito1;

    @Column
    private BigDecimal testeEscrito2;

    @Column
    private BigDecimal testeEscrito3;

    @Column
    private BigDecimal testeOral1;

    @Column
    private BigDecimal testeOral2;

    @Column
    private BigDecimal testeOral3;

    @Column
    private BigDecimal testeOral4;

    @Column
    private BigDecimal testeOral5;

    @Column
    private BigDecimal media;

}
