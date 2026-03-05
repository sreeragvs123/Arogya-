package com.Grp._8.backend.dto;

import com.Grp._8.backend.entities.enums.Role;
import lombok.Data;

@Data
public class LoginDTO {
    private String username;
    private String password;
    private Role role;
}
