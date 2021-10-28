package com.sergio.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sergio.models.Language;
import com.sergio.services.LanguageService;

@Controller
public class LanguagesController {
	
	private final LanguageService languageService;
	
	public LanguagesController(LanguageService languageService) {
		this.languageService = languageService;
	}

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String displayMain(@ModelAttribute("language") Language language, Model model) {
		List<Language> languageList = languageService.getAllLanguages();
		
		model.addAttribute("languageList", languageList);
		
		return "index.jsp";
	}
	
	@RequestMapping(value="/create", method = RequestMethod.POST)
	public String createLanguage(@RequestParam(value="nameLanguage")String nameLanguage,
			@RequestParam(value="creatorLanguage")String creatorLanguage,
			@RequestParam(value="versionLanguage")String versionLanguage,
			RedirectAttributes redirectAttributes) {
		
		Language language = new Language(nameLanguage, creatorLanguage, versionLanguage);
		languageService.createLanguage(language);
		
		return "redirect:/";
	}
	
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
		public String showData(@PathVariable(value="id")int id,
				RedirectAttributes redirectAttributes, Model model) {
		
		Language currentLanguage = languageService.getLanguageById(id);
		
		System.out.println(currentLanguage);
		
		if(currentLanguage == null) {
			
			redirectAttributes.addFlashAttribute("errorMessage", "That id doesnt exists");
		}else {
			
			model.addAttribute("language", currentLanguage);
			return "editLanguage.jsp";
		}
		return "redirect:/";
	}
		
	
	
	@RequestMapping(value="/updated/{id}", method=RequestMethod.POST)
	public String updateLanguage(@PathVariable(value="id")int id,
			@RequestParam(value="languageName")String languageName,
			@RequestParam(value="creatorName") String creatorName,
			@RequestParam(value="versionLanguage")String versionLanguage,
			RedirectAttributes redirectAttributes) {
		
		Language currentLanguage = languageService.getLanguageById(id);
		
		if(currentLanguage == null) {
			
			redirectAttributes.addFlashAttribute("errorMessage", "That id doesnt exists");
		}else {
			currentLanguage.setName(languageName);
			currentLanguage.setCreator(creatorName);
			currentLanguage.setVersion(versionLanguage);
			languageService.updateLanguage(currentLanguage);
		}
		
		return "redirect:/";
	}
	
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.POST)
	public String deleteData(@PathVariable(value="id")int id,
			RedirectAttributes redirectAttributes) {
	
	Language currentLanguage = languageService.getLanguageById(id);
	
	//System.out.println(currentLanguage.getName());
	
	if(currentLanguage == null) {
		
		redirectAttributes.addFlashAttribute("errorMessage", "That id doesnt exists");
	}else {
		
		languageService.deleteLanguage(id);
		return "redirect:/";
		
	}
	return "redirect:/";
}
	
}
