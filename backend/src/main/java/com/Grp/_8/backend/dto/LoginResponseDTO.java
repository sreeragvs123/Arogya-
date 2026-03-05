package com.Grp._8.backend.dto;

import lombok.Data;

@Data
public class LoginResponseDTO {
    private String refershToken;
    private String accessToken;
}
