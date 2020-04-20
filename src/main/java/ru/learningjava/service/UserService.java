package ru.learningjava.service;

import org.springframework.security.core.userdetails.UserDetailsService;
import ru.learningjava.io.entity.Role;
import ru.learningjava.shared.dto.UserDTO;

import java.util.List;

public interface UserService extends UserDetailsService {

    UserDTO createUser(UserDTO user);

    UserDTO getUser(String email);

    UserDTO getUserByUsername(String username);

    UserDTO getUserByUserId(String userId);

    UserDTO updateUser(String userId, UserDTO userDto);

    UserDTO updateUserRoles(String username, Role role);

    void deleteUser(String userId);

    List<UserDTO> getUsers(int page, int limit);

    boolean verifyEmailToken(String token);

    boolean requestPasswordReset(String email);

    boolean resetPassword(String token, String password);
}
