package com.adsRock.main.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adsRock.general.Argon2HashedPassword;
import com.adsRock.main.dto.AdminDTO;
import com.adsRock.main.model.Admin;
import com.adsRock.main.repository.AdminRepository;
import com.adsRock.main.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminRepository adminRepository;

	
	  public void createOrUpdateAdmin(AdminDTO adDto) { Admin admin =
	  convertDtoToModel(adDto); adminRepository.save(admin); }
	  
	  public List<AdminDTO> getAllAdmin() { List<Admin> list =
			  adminRepository.findAll(); List<AdminDTO> adminList = list.stream()
	  .map(AdminDTO::new) .collect(Collectors.toCollection(ArrayList::new));
	  return adminList; }
	 
	
	public void deleteAdmin(Long id) {
		adminRepository.deleteById(id);
	}
	
	public AdminDTO editAdmin(Long id) {
		Admin admin = adminRepository.getOne(id);
		return convertModelToDTO(admin);
	}
	
	private Admin convertDtoToModel(AdminDTO adDto) {
		Admin admin = new Admin();
		if (adDto.getId() != null) {
			admin.setId(adDto.getId());
		}
		
		admin.setPassword(adDto.getPassword());
		admin.setUserName(adDto.getUserName());
		return admin;
	}
	
	private AdminDTO convertModelToDTO(Admin admin) {
		AdminDTO adDTO = new AdminDTO();
		
		adDTO.setPassword(admin.getPassword());
		adDTO.setUserName(admin.getUserName());
		return adDTO;
	}

	@Override
	public boolean matchAdminLoginDetails(Admin adDto) {
		List<Admin> list =adminRepository.findAll();
		boolean status=false;
		 for (int i=0; i<list.size(); i++)
		 {
			 if(adDto.getUserName()==null ||list.get(i).getUserName().toString()==null)
			 {
				 status=false;
			 }
			 else if(adDto.getUserName().equals(list.get(i).getUserName().toString()) && Argon2HashedPassword.matches(adDto.getPassword(),list.get(i).getPassword().toString()))
			 {
				 status=true;
				 break;
			 }
		}
		return status;
	}

	//adding forget password methos...
	
	/*
	 * public void updateResetPasswordToken(String token, String email) throws
	 * CustomerNotFoundException { Admin admin = adminRepository.findByEmail(email);
	 * if (admin != null) { admin.setResetPasswordToken(token);
	 * adminRepository.save(admin); } else { throw new
	 * CustomerNotFoundException("Could not find any user with the email " + email);
	 * } }
	 * 
	 * public Admin getByResetPasswordToken(String token) { return
	 * adminRepository.findByResetPasswordToken(token); }
	 * 
	 * public void updatePassword(Admin admin, String newPassword) {
	 * 
	 * String encodedPassword =Argon2HashedPassword.hashedPassword(newPassword);
	 * admin.setPassword(encodedPassword);
	 * 
	 * admin.setResetPasswordToken(null); adminRepository.save(admin); }
	 */
	
}
