package com.jsp.spring.vms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.spring.vms.entity.Vehicle;
import com.jsp.spring.vms.repository.VehicleRepository;

@Service
public class VehicleService {
	
	@Autowired
	private VehicleRepository vehicleRepository;

	public ModelAndView addVehicle(Vehicle vehicle) {
		vehicleRepository.addVehicle(vehicle);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index.jsp");
		return mav;
	}

	public ModelAndView displayAllVehicles() {
		List<Vehicle> vehicles = vehicleRepository.findAllVehicles();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("DisplayAllVehicles.jsp");
		mav.addObject("vehicleList", vehicles);
		return mav;
	}

	public ModelAndView findVehicleById(int vehicleId) {
		
		Vehicle vehicle = vehicleRepository.findVehicleById(vehicleId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("UpdateVehicle.jsp");
		mav.addObject("vehicleObject", vehicle);
		return mav;
	}
	
	public ModelAndView saveUpdatedVehicle(Vehicle vehicle) {
		vehicleRepository.saveUpdatedVehicle(vehicle);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:display-all-vehicles");
		return mav;
	}

	public ModelAndView deleteVehicleByID(int vehicleId) 
	{
		vehicleRepository.deleteVehicleById(vehicleId);
		ModelAndView m =new ModelAndView();
		m.setViewName("redirect:display-all-vehicles");
		return m;
	}

}
