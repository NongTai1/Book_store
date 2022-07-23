package NongDucTai.com.DATotNghiep.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import NongDucTai.com.DATotNghiep.repositories.ContactRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AdminContactController {
	@Autowired
	ContactRepo contactRepo;
	
	@RequestMapping(value = { "/admin/contact" }, method = RequestMethod.GET)
	public String listCategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("contacts", contactRepo.findAll());
		return "admin/contact/list-contact";
	}
}
