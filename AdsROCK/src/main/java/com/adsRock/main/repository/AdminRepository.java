package com.adsRock.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.adsRock.main.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Long>{

	/*
	 * @Query("SELECT c FROM Customer c WHERE c.email = ?1") public Admin
	 * findByEmail(String email);
	 * 
	 * public Admin findByResetPasswordToken(String token);
	 */
}

