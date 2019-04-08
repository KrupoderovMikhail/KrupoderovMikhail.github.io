package ru.krupoderov.chatter.repos;

import org.springframework.data.repository.CrudRepository;
import ru.krupoderov.chatter.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);
}
