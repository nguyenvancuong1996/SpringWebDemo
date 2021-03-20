package fa.training.dto;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

import fa.training.entities.Lop;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TreDto {

	private String maTre;

	private String hoTenTre;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate ngaySinh;

	private String gioiTinh;

	private String hoTenPH;

	private String quanHe;

	private String soDTPH;

	private String trangThai;

	private String lop;
}
