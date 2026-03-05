package com.Grp._8.backend.services;

import com.Grp._8.backend.entities.Paitent;
import com.Grp._8.backend.repositories.PaitentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;


@Service
@RequiredArgsConstructor
public class PaitentService implements UserDetailsService {

    private final PaitentRepository paitentRepository;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
          return paitentRepository.findByUsername(username)
                  .orElseThrow(() -> new UsernameNotFoundException(username));

    }
}
