package com.sergio.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.Repository;

import com.sergio.models.Language;

public interface LanguageRepository extends Repository<Language, Long> {
	
	List<Language> findAll();
	Language save(Language language);
	Optional<Language>findById(int id);
	void deleteById(int id);

}
