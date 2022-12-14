package com.prabhat.springboot.web.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.prabhat.springboot.web.model.Todo;

public interface TodoRepository extends JpaRepository<Todo, Integer> {

	List<Todo> findByUser(String user);
}
