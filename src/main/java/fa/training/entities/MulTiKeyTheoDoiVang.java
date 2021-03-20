package fa.training.entities;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MulTiKeyTheoDoiVang implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column(name = "maTre",columnDefinition = "char(7)")
	private String maTre;
	
	@Column(name = "NgayNghi")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate ngayNghi;
	
	

}
