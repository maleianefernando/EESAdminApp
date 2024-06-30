package admin.emmanuel.english.school.TeacherController;

import java.util.List;

import admin.emmanuel.english.school.jparepo.Student;

public class EstudanteListWrapper {
    private List<Student> estudantes;

    public List<Student> getEstudantes() {
        return estudantes;
    }

    public void setEstudantes(List<Student> estudantes) {
        this.estudantes = estudantes;
    }
}
