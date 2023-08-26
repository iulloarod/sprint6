package com.example.seguridad.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class PersonaDtoRequest {

    private String nombre;
    private String apellido;
    private String direccion;

}
