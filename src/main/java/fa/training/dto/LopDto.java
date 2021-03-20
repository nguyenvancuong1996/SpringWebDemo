package fa.training.dto;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LopDto {
	
	private String maLop;
	
	
	private String tenGV1;
	
	
	private String tenGV2;
	
	
	private String tenLop;
	
	@Size(min = 1,max = 50)
	private String soLuongTre;
	
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate ngayKhaiGiang;
	
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate ngayBeGiang;

}
