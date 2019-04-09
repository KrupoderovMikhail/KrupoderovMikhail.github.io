package ru.krupoderov.chatter.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.krupoderov.chatter.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
