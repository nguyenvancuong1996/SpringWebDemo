package fa.training.controller;

import java.util.List;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fa.training.dto.TheoDoiVangDto;

import fa.training.entities.MulTiKeyTheoDoiVang;
import fa.training.entities.TheoDoiVang;
import fa.training.entities.Tre;
import fa.training.repositories.TheoDoiVangRepository;
import fa.training.services.TheoDoiVangService;

@Controller
@RequestMapping("/theodoivang")
public class ThongTinVangController {
	@Autowired
	private TheoDoiVangService theoDoiVangService;

	@GetMapping("/")
	public String add(ModelMap model) {
		model.addAttribute("theodoivang", new TheoDoiVangDto());
		return "frontend/TheoDoiVang/saveTheoDoiVang";
	}

	@PostMapping("saveOrUpdate")
	public String saveorUpdate(Model model, @Valid TheoDoiVangDto theoDoiVangDto, BindingResult result,
			RedirectAttributes attributes) {
		TheoDoiVang doiVang = new TheoDoiVang();
		MulTiKeyTheoDoiVang keydoiVang = new MulTiKeyTheoDoiVang();

		keydoiVang.setMaTre(theoDoiVangDto.getTre());
		keydoiVang.setNgayNghi(theoDoiVangDto.getNgayNghi());

		doiVang.setKeyTheoDoiVang(keydoiVang);

		doiVang.setThoiGianNghi(theoDoiVangDto.getThoiGianNghi());
		doiVang.setLyDo(theoDoiVangDto.getLyDo());
		doiVang.setAnBanTru(theoDoiVangDto.getAnBanTru());

		theoDoiVangService.save(doiVang);
		attributes.addFlashAttribute("success", "Thành Công!!");

		return "redirect:/theodoivang/list";
	}

	@RequestMapping("/list")
	public String listResult(Model model) {
		model.addAttribute("listTheoDoi", theoDoiVangService.findAll());
		return "frontend/TheoDoiVang/dsTheoDoiVang";
	}

	@ModelAttribute("resultTre")
	public List<Tre> getCustomer() {
		return theoDoiVangService.findAllMay();
	}

}
