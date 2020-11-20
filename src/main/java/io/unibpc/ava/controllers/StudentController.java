package io.unibpc.ava.controllers;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.core.MediaType;

import io.unibpc.ava.models.Student;
import io.unibpc.ava.models.User;

import javax.persistence.*;
import javax.json.*;
import javax.ws.rs.*;

@RequestScoped
@Path("/student")
public class StudentController {

    private EntityManagerFactory emf;

    public StudentController() {
        emf = Persistence.createEntityManagerFactory("unibpc");
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public JsonObjectBuilder listStudents() {

        JsonObjectBuilder builder = Json.createObjectBuilder();
        return builder;
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public JsonObjectBuilder insertUserStudent(String body) {

        EntityManager em = emf.createEntityManager();


		User newUser = new User(11111111111L, "Peperoni", "Rua without asphalt - Belford Roxo", 988884444L);
		Student student = new Student(newUser);

		em.persist(student);


        JsonObjectBuilder builder = Json.createObjectBuilder();
        return builder;
    }
}
