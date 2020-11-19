package io.unibpc.ava.controllers;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.core.MediaType;
import javax.json.JsonObjectBuilder;
import javax.json.Json;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

@RequestScoped
@Path("/student")
public class StudentController {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public JsonObjectBuilder getAllConfig() {
        JsonObjectBuilder builder = Json.createObjectBuilder();
        return builder;
    }
}
