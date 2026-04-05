package com.Grp._8.backend.services;

import com.Grp._8.backend.dto.LoginRequestDTO;
import com.Grp._8.backend.dto.LoginResponseDTO;
import com.Grp._8.backend.dto.UserSignUpDTO;
import com.Grp._8.backend.entities.UserEntity;
import com.Grp._8.backend.entities.enums.Role;
import com.Grp._8.backend.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;



@Service
@RequiredArgsConstructor
public class UserService  {

    private final UserRepository userRepository;
    private final ModelMapper modelMapper;




}
