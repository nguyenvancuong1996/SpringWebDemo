const Int_Dongia = /^[0-9]+$/;
const ADDRESS_REGEX = /^[a-zA-Z0-9 ]+$/;
const NAME_REGEX = /^[a-zA-Z ]+$/;

function validate() {

	/*let ngayKhaiGiang = checkDate('#datemask');
	let ngayBeGiang = checkDate('#datemask2');
	let gioBD = checkDate('#gioSuDung');
	*/
	
	
	let maLop = check('#malop',ADDRESS_REGEX);
	let tenGV1 = check('#tengv1',NAME_REGEX);
	let tenGV2 = check('#tengv2',NAME_REGEX);
	let tenlop = check('#tenlop',NAME_REGEX);
	let soluong = check('#soluongtre',Int_Dongia);
	

	 if (maLop && tenGV1 && tenGV2 && tenlop && soluong) {return true}

	return false;
}

//CHECK VALIDATE -- REGEX
function checkDate(element) {
	let value = $(element).val().trim();
	let fieldName = $(element).siblings('label').text();
	
	if (value.length == 0) {
		$(element).attr('class', 'form-control is-invalid');
		return false;
	}

	$(element).val(value);
		$(element).attr('class', 'form-control is-valid')
		return true;
}

//CHECK VALIDATE -- REGEX
function check(element, regex) {
	let value = $(element).val().trim();
	let fieldName = $(element).siblings('label').text()
	if (value.length == 0) {
		$(element).attr('class', 'form-control is-invalid');
		$(element).siblings('.invalid-feedback').html(fieldName + ' is not blank');
		return false;
	}
	if (regex.test(value)) {
		$(element).val(value);
		$(element).attr('class', 'form-control is-valid')
		return true;
	}
	$(element).attr('class', 'form-control is-invalid');
	$(element).siblings('.invalid-feedback').html(fieldName + ' is not valid');
	return false;
}
