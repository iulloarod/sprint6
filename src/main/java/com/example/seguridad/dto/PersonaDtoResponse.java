package com.example.seguridad.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class PersonaDtoResponse {

    private String nombre;
    private String apellido;
    private String direccion;

}
