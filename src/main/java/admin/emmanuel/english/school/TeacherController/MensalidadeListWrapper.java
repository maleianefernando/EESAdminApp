package admin.emmanuel.english.school.TeacherController;

import java.util.List;

import admin.emmanuel.english.school.jparepo.Mensalidade;

public class MensalidadeListWrapper {
    private List<Mensalidade> mensalidades;

    public List<Mensalidade> getMensalidades() {
        return mensalidades;
    }

    public void setMensalidades(List<Mensalidade> mensalidade) {
        this.mensalidades = mensalidade;
    }
}
