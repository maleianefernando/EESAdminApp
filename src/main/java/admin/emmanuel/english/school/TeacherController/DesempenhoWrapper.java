package admin.emmanuel.english.school.TeacherController;

import java.util.List;

import admin.emmanuel.english.school.jparepo.Desempenho;

public class DesempenhoWrapper {
    private List<Desempenho> notas;

    public List<Desempenho> getNotas() {
        return notas;
    }

    public void setNotas(List<Desempenho> notas) {
        this.notas = notas;
    }
}