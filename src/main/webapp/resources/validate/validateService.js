
const NAME_REGEX = /^[a-zA-Z ]+$/;
const Int_Dongia = /^[0-9]+$/;
const ADDRESS_REGEX = /^[a-zA-Z0-9 ]+$/;
const CODE_REGEX = /((DV)+([0-9]{3})\b)/g;
const PRICE_REGEX = /[0-9]+,[0-9]{3}/;

/*$('#dongia').keyup(function (event) {
	// Skip for arrow keys
	if (event.which >= 37 && event.which <= 40) return;
	// Format number
	$(this).val(function (index, value) {
		return value.replace(/\D/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	});
});*/



function validate() {

	let madv = check('#madv', CODE_REGEX);
	let tendv = check('#tendv', ADDRESS_REGEX);
	
	let donvitinh = check('#donvitinh', NAME_REGEX);
	let dongia = check('#dongia', Int_Dongia);
	

	 if (madv && tendv && donvitinh &&  dongia) {return true}

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
                       url: "/Assigment_BackEnd/services/delete/"+id,
                      
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