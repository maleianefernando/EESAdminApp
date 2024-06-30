package admin.emmanuel.english.school.TeacherController;

import java.util.List;

import admin.emmanuel.english.school.jparepo.Funcionario;

public class FuncionarioListWrapper {

    private List<Funcionario> funcionarios;

    public List<Funcionario> getFuncionarios() {
        return funcionarios;
    }

    public void setFuncionarios(List<Funcionario> funcionarios) {
        this.funcionarios = funcionarios;
    }
}

