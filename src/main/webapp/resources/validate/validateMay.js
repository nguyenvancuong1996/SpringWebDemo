let rowOfTable = 0;

const NAME_REGEX = /^[a-zA-Z ]+$/;
const EMAIL_REGEX = /^[a-z0-9]+([-._][a-z0-9]+)*@fsoft.com.vn$/;
const PHONE_REGEX = /^(0|\+84)(\s|\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\d)(\s|\.)?(\d{3})(\s|\.)?(\d{3})$/;
const ZIP_CODE_REGEX = /^(\d{5})?$/;
const CREDIT_CARD_REGEX = /^[0-9\-]{19}$/;
const CVV_REGEX = /^(\d{3})?$/;
const ADDRESS_REGEX = /^[a-zA-Z0-9 ]+$/;





function validate() {

	let vitri = check('#vitri', ADDRESS_REGEX);
	let trangthai = check('#trangthai', ADDRESS_REGEX);
	
	 if (vitri && trangthai) {return true}

	return false;
}


//CHECK VALIDATE -- REGEX
function check(element, regex) {
	let value = $(element).val().trim();
	let fieldName = $(element).siblings('label').text();
	
	if (value.length == 0) {
		$(element).attr('class', 'form-control is-invalid');
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
