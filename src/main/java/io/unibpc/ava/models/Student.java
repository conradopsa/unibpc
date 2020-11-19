package io.unibpc.ava.models;

import javax.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "aluno")
public class Student {
    @Id
    @Column(name = "matricula")
    private Integer matriculation;

    @OneToOne
    @JoinColumn(name = "cpfPessoa", referencedColumnName = "cpf", unique = true)
    private User user;
}
