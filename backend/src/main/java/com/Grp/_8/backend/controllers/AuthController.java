package com.Grp._8.backend.controllers;

import com.Grp._8.backend.dto.LoginRequestDTO;
import com.Grp._8.backend.dto.LoginResponseDTO;
import com.Grp._8.backend.dto.UserSignUpDTO;
import com.Grp._8.backend.services.AuthService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RequestMapping("/auth")
@RestController
@Slf4j
public class AuthController {


    private final AuthService authService;

    @PostMapping("/signUp")
    public ResponseEntity<UserSignUpDTO> UsersignUp(@RequestBody UserSignUpDTO user) {
        UserSignUpDTO savedPaitent = authService.signUp(user);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedPaitent);
    }

    @PostMapping("/login")
    public ResponseEntity<LoginResponseDTO> login(@RequestBody LoginRequestDTO loginRequest) {
        LoginResponseDTO tokens = authService.login(loginRequest);
        return ResponseEntity.ok(tokens);
    }

}