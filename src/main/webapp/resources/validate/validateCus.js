
const NAME_REGEX = /^[a-zA-Z ]+$/;
const EMAIL_REGEX = /^[a-z0-9]+([-._][a-z0-9]+)*@fsoft.com.vn$/;
const PHONE_REGEX = /^(0|\+84)(\s|\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\d)(\s|\.)?(\d{3})(\s|\.)?(\d{3})$/;
const ADDRESS_REGEX = /^[a-zA-Z0-9 ]+$/;
const CODE_REGEX = /((KH)+([0-9]{5})\b)/g;
const REGEX_EMAIL = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;





function validate() {

	let makh = check('#makh', CODE_REGEX);
	let tenkh = check('#tenkh', NAME_REGEX);
	let diachi = check('#diachi', ADDRESS_REGEX);
	let sodt = check('#sodt', PHONE_REGEX);
	let email = check('#email', REGEX_EMAIL);

	 if (makh && tenkh && diachi && sodt && email) {return true}

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

$(document).ready(function () {
    $(document).on('click', '#delete', function(e) {
        e.preventDefault();
        var id = $(this).val();
            Swal.fire({
                title: 'Bạn có chắc chắn xóa ?',
                text: "Bạn sẽ mất dữ liệu này !",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Đồng ý',
                cancelButtonText: 'Hủy bỏ'
              }).then((result) => {
                if (result.value) {
                    $.ajax({
                       async: false,
                       type: "GET",
                       url: "/Assigment_BackEnd/customers/delete/"+id,
                      
                       success: function(response){
                           if(response == "OK")
                            {
                                Swal.fire(
                                    'Bạn đã xóa thành công',
                                    'Bạn đã xóa dữ liệu khỏi danh sách',
                                    'success'
                                ).then(function(){
                                    //reload
                                    location.reload();
                                });
                            }
                           }
                       ,
                       error: function(xhr,ajaxOptions,thrownError){
                        Swal.fire(
                            'Báo lỗi',
                            'Vui lòng kiểm tra lại đường truyền',
                            'danger'
                          ).then(function(){
                            location.reload();
                          });
                       }
                    });
                }
              })
    });
});
