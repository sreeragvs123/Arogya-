package com.Grp._8.backend.dto;


import com.Grp._8.backend.entities.enums.Role;
import lombok.Data;

@Data
public class PaitentSignUpDTO {
    private String name;
    private String username;
    private String email;
    private String password;
    private Role role;

}
