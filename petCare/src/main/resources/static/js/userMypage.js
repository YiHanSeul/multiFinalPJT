/**
 * 
 */
 
 	function userDelete() {
		console.log("test");
		if (confirm("회원 탈퇴하시겠습니까?")) {
			window.open("/user/userDelete", "PopupNew",
					"width=500,height=400");
			//추후 주소가 바뀌면 그 주소로 해줘야함
		} else {
			alert("취소를 누르셨습니다.");
		}
	}
	function petRegitst() {
		const popup = document.querySelector('#petAdd-forms');
		popup.classList.add('has-filter');
		popup.classList.remove('hide');
	}
	function closePopup() {
		const popup = document.querySelector('#petAdd-forms');
		popup.classList.add('hide');

	}
	test = "${vaccResDto}";
 