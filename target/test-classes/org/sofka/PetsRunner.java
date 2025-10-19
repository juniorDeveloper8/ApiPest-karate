package org.sofka;

import com.intuit.karate.junit5.Karate;

public class PetsRunner {
    @Karate.Test
    Karate CrudApiPets(){
        return Karate.run("classpath:ApiPets.feature");
    }
}
