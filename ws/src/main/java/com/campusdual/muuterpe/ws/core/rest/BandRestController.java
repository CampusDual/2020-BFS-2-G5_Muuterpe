package com.campusdual.muuterpe.ws.core.rest;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.campusdual.muuterpe.api.core.service.IBandService;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.server.rest.ORestController;
import com.ontimize.jee.server.rest.UpdateParameter;


@RestController
@RequestMapping("/bands")
@ComponentScan(basePackageClasses={com.campusdual.muuterpe.api.core.service.IBandService.class})
public class BandRestController extends ORestController<IBandService> {

	@Autowired
	private IBandService bandService;

	@Override
	public IBandService getService() {
		return this.bandService;
	}
	
	@RequestMapping(value = "/getBandsRecent", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)	
	public EntityResult getBandRecent() {
		return this.bandService.bandsRecent();
	}
	
	@RequestMapping(value = "/getBandsVisits", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)	
	public EntityResult getBandVisits() {
		return this.bandService.bandsMostVisit();
	}
	
	@RequestMapping(value = "/getBandsAndCategory/search", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)	
	public EntityResult getBandsAndCategory() {
		return this.bandService.bandAndCategoryQuery();
	}
	
	@RequestMapping(value = "/getBandsByCategory", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)	
	public EntityResult getBandByCategoy(@RequestParam(required = true) Integer categoryId) {
		return this.bandService.bandByCategoryQuery(categoryId);
	}
	
	@RequestMapping(value = "/getBandsByName", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)	
	public EntityResult getBandByName(@RequestParam(required = true) String bandName) {
		return this.bandService.bandByNameQuery(bandName);
	}
	
	@RequestMapping(value = "/getBandsEmph/search", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)	
	public EntityResult getBandEmph() {
		return this.bandService.getBox();
	}
	
	@RequestMapping(value = "/getBandComment/search", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)	
	public EntityResult getBandComment(@RequestBody Map<String, Object> body) {
		return this.bandService.bandCommentsQuery(body);
	}
	
	@RequestMapping(value = "/getBandSongs/search", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)	
	public EntityResult getBandSongs(@RequestBody Map<String, Object> body) {
		return this.bandService.bandSongsQuery(body);
	}
	
	
	@RequestMapping(value = "/getBandImage/search", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)	
	public EntityResult bandImageQuery(@RequestBody Map<String, Object> body) {
		return this.bandService.bandImageQuery(body);
	}
//	
//	@RequestMapping(value = "/bandsVisits", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)	
//	public void updateBandVisits(@RequestBody Map<String, Object> body) {
//		this.bandService.bandsVisitsUpdate(body);
//	}
	
//	@RequestMapping(value = "/{name}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
//    public ResponseEntity<EntityResult> update(@PathVariable("name") String name, @RequestBody UpdateParameter updateParameter) {
//		return new ResponseEntity<>(new EntityResult(), HttpStatus.OK);
//	}
}
