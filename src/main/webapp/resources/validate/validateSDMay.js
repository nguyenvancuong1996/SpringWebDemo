
function validate() {

	let ngayBD = checkDate('#datemask2');
	let gioBD = checkDate('#gioBatDauSuDung2');
	let tgSD = checkDate('#thoigianSuDung2');
	

	 if (ngayBD && gioBD && tgSD) {return true}

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

