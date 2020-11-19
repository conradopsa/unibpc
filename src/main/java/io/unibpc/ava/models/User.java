package io.unibpc.ava.models;

import javax.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "pessoa")
public class User {
    @Id
    private Long cpf;

    @Column(name = "nome", nullable = false)
    private String name;

    @Column(name = "endereco", nullable = false)
    private String address;

    @Column(name = "telefone", nullable = false)
    private Long phone;
}
