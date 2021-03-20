package fa.training.dto;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TheoDoiVangDto {
	
	
	private String tre;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate ngayNghi;
	
	private String thoiGianNghi;
	
	
	private String lyDo;
	
	
	private String anBanTru;

}
