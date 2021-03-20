package fa.training.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.training.dto.TreDto;

import fa.training.entities.Tre;
import fa.training.repositories.TreRepository;
import fa.training.services.TreService;

@Controller
@RequestMapping("/tre")
public class TreController {
	@Autowired
	private TreService treService;

	@GetMapping("edit/{maKH}")
	public String edit(@PathVariable("maKH") String maTre, ModelMap model) {
		System.out.println("EDIT :: ");
		Tre tre = treService.findOne(maTre);
		TreDto treDto = new TreDto();
		treDto.setMaTre(tre.getMaTre());
		treDto.setHoTenTre(tre.getHoTenTre());
		treDto.setNgaySinh(tre.getNgaySinh());
		treDto.setGioiTinh(tre.getGioiTinh());
		treDto.setHoTenPH(tre.getHoTenPH());
		treDto.setQuanHe(tre.getQuanHe());
		treDto.setSoDTPH(tre.getSoDTPH());
		treDto.setLop(tre.getLop().getMaLop());

		model.addAttribute("tre", treDto);
		return "frontend/KhachHang/saveKhachHang";
	}

	@RequestMapping("/list")
	public String listResult(Model model) {
		model.addAttribute("listTre", treService.findAll());
		return "frontend/Tre/dsTre";
	}

	@RequestMapping("/listResult")
	public String list(Model model) {
		model.addAttribute("result", treService.getListResult());
		return "frontend/Tre/dsTre";
	}

	@GetMapping("/timkiem/filter")
	public String filterTheoThang(Model model, @RequestParam("thang") int thang, @RequestParam("nam") int nam) {

		List<Object[]> thongke = treService.thongketheonam(thang, nam);

		model.addAttribute("result", thongke);

		return "frontend/Tre/dsTre";
	}

}
