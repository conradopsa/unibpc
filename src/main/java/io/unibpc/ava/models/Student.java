package io.unibpc.ava.models;

import javax.persistence.*;
import lombok.*;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@Entity
@Table(name = "aluno")
public class Student {

    @Id
    @Column(name = "matricula")
    @GeneratedValue
    private Integer matriculation;

    @NonNull
    @OneToOne
    @JoinColumn(name = "cpfPessoa", referencedColumnName = "cpf", unique = true)
    private User user;
}
