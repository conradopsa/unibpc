package io.unibpc.ava;

import java.sql.DriverManager;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.Test;

public class CreateTablesTest {

    @Test
    void testJDBC() throws Exception {
        String jdbcUrl = "jdbc:mysql://localhost:3306/unibpc_test?useTimezone=true&serverTimezone=UTC";
        String user = "root";
        String pass = "1234";

        DriverManager.getConnection(jdbcUrl, user, pass);
    }

    @Test
    public void createTables() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("unibpc");
        emf.createEntityManager();
        emf.close();

    }
}
