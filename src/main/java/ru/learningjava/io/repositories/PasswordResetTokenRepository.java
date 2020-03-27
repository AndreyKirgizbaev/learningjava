package ru.learningjava.io.repositories;

import org.springframework.data.repository.CrudRepository;
import ru.learningjava.io.entity.PasswordResetTokenEntity;

public interface PasswordResetTokenRepository extends CrudRepository<PasswordResetTokenEntity, Long> {
    PasswordResetTokenEntity findByToken(String token);
}
