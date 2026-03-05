package com.Grp._8.backend.controllers;

import com.Grp._8.backend.entities.Paitent;
import com.Grp._8.backend.services.DoctorService;
import com.Grp._8.backend.services.PaitentService;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
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

    private final PaitentService paitentService;
    private final DoctorService doctorService;

    @PostMapping("/paitent/signUp")
    public ResponseEntity<Paitent> signUp(@RequestBody Paitent paitent) {
        return ResponseEntity.status(HttpStatus.CREATED).body(null);
    }


}
