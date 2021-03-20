package fa.training.entities;

import java.time.LocalDate;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "Tre")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Tre {
	@Id
	@Column(name = "MaTre",columnDefinition = "char(7)")
	private String maTre;
	
	@Column(name = "HoTenTre")
	private String hoTenTre;
	
	@Column(name = "NgaySinh")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate ngaySinh;
	
	@Column(name = "GioiTinh")
	private String gioiTinh;
	
	@Column(name = "HoTenPH")
	private String hoTenPH;
	
	@Column(name = "QuanHe")
	private String quanHe;
	
	@Column(name = "SoDienThoaiPH")
	private String soDTPH;
	
	@Column(name = "TrangThai")
	private String trangThai;
	
	@ManyToOne
	@JoinColumn(name = "maLop")
	private Lop lop;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "tre")
	private Set<TheoDoiVang> theoDoiVang;

}
