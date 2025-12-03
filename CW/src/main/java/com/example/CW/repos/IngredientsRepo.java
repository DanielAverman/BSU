package com.example.CW.repos;

import com.example.CW.domain.Ingredients;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IngredientsRepo extends JpaRepository<Ingredients, Long> {
}
