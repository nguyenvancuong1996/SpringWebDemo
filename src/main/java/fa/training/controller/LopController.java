package fa.training.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fa.training.dto.LopDto;

import fa.training.entities.Lop;
import fa.training.services.LopService;

@Controller
@RequestMapping("/lop")
public class LopController {
	@Autowired
	private LopService lopService;

	@GetMapping("/")
	public String add(ModelMap model) {
		model.addAttribute("class", new LopDto());
		return "frontend/Lop/saveLop";
	}

	@PostMapping("saveOrUpdate")
	public String saveorUpdate(Model model, @ModelAttribute("class") @Valid LopDto lopDto, BindingResult result) {

		if (lopService.exists(lopDto.getMaLop())) {
			model.addAttribute("edit", true);

		}
		if (result.hasErrors()) {
			// model.addAttribute("customers", customerDto);
			return "frontend/Lop/saveLop";
		}

		if (lopService.findOne(lopDto.getMaLop()) != null) {
			model.addAttribute("message", "MaLop da ton tai");
			return "frontend/Lop/saveLop";

		}

		Lop lop = new Lop();

		lop.setMaLop(lopDto.getMaLop());
		lop.setTenGV1(lopDto.getTenGV1());
		lop.setTenGV2(lopDto.getTenGV2());
		lop.setTenLop(lopDto.getTenLop());
		lop.setSoLuongTre(lopDto.getSoLuongTre());
		lop.setNgayKhaiGiang(lopDto.getNgayKhaiGiang());
		lop.setNgayBeGiang(lopDto.getNgayBeGiang());

		lopService.save(lop);

		return "redirect:/lop/list";
	}

	@RequestMapping("/list")
	public String listResult(Model model) {
		model.addAttribute("listClass", lopService.findAll());
		return "frontend/Lop/dsLop";
	}

}
