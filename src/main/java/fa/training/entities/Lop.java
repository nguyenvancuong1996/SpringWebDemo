package fa.training.entities;

import java.time.LocalDate;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "Lop")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Lop {
	@Id
	@Column(name = "MaLop")
	private String maLop;
	
	@Column(name = "TenGV1")
	private String tenGV1;
	
	@Column(name = "TenGV2")
	private String tenGV2;
	
	@Column(name = "TenLop")
	private String tenLop;
	
	@Column(name = "SoLuongTre")
	private String soLuongTre;
	
	@Column(name = "NgayKhaiGiang")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate ngayKhaiGiang;
	
	@Column(name = "NgayBeGiang")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate ngayBeGiang;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "lop")
	private Set<Tre> tre;

}
