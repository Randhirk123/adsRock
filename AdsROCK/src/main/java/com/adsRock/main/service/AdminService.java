package com.adsRock.main.service;

import java.util.List;

import com.adsRock.main.dto.AdminDTO;
import com.adsRock.main.model.Admin;

public interface AdminService {

	public void createOrUpdateAdmin(AdminDTO adDTO);
	
	public List<AdminDTO> getAllAdmin();
	
	public void deleteAdmin(Long id);
	
	public AdminDTO editAdmin(Long id);

	public boolean matchAdminLoginDetails(Admin adDto);
	
}
