package com.sergio.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.sergio.models.Language;
import com.sergio.repositories.LanguageRepository;

@Service
public class LanguageService {
	
	private final LanguageRepository languageRepository;
	
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	
	public List<Language>getAllLanguages(){
		return languageRepository.findAll();
	}
	
	public Language createLanguage(Language language) {
		return languageRepository.save(language);
	}
	
	public Language getLanguageById(int id) {
		Optional<Language>optionalLanguage = languageRepository.findById(id);
		if (optionalLanguage.isPresent()) {
			return optionalLanguage.get();
		}else {
			return null;
		}
	}
	
	public Language updateLanguage(Language language) {
		return languageRepository.save(language);
	}
	
	public void deleteLanguage(int id) {
		Optional<Language>optionalLanguage = languageRepository.findById(id);
		if (optionalLanguage.isPresent()) {
			languageRepository.deleteById(id);
			
			
		}		
		
		
	}

}
