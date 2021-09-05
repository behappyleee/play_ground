package com.spring.play.service;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface HostService {

	public void inventory_add(MultipartHttpServletRequest req , Model model);
	
	
}
