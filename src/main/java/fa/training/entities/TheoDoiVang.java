package fa.training.entities;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "TheoDoiVang")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TheoDoiVang {
	
	@EmbeddedId
	private MulTiKeyTheoDoiVang keyTheoDoiVang;
	
	@Column(name = "ThoiGianNghi")
	private String thoiGianNghi;
	
	@Column(name = "LyDo")
	private String lyDo;
	
	@Column(name = "AnBantru")
	private String anBanTru;
	
	@ManyToOne
	@JoinColumn(name = "maTre", insertable = false, updatable = false)
	private Tre tre;

}
