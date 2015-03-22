package com.home.ahmed.jaxrs;



import org.springframework.stereotype.Service;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

@Service
@Path("/calculer")
public class Calculer {

	@GET
	@Path("/{nb1}/{nb2}/{op}")
	public String calculer(@PathParam("nb1") int nb1,@PathParam("nb2") int nb2, @PathParam("op") String op )
	{
		System.out.println("cal");
		if("+".equals(op)){
			return String.valueOf(nb1+nb2);
		}else if("-".equals(op)){
			return String.valueOf(nb1-nb2);
		}else if("*".equals(op)){
			return String.valueOf(nb1*nb2);
		}
		return "no result";
		
	}
	
	
	
}
