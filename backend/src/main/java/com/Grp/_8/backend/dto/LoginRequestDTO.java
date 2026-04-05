package com.Grp._8.backend.dto;

import com.Grp._8.backend.entities.enums.Role;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class LoginRequestDTO {

    private String username;
    private String password;
    private Role role;

}
