/**
 * 
 */

		
	      document.getElementById("mainSubmit").onclick = function() {isName();};
      
      function isName() {
         var input = document.getElementById("petName").value;
         if(input == "" || input == null){
            swal('입력 오류',"펫 이름이 비어있어요!", 'error');
         }
         var type = document.getElementsByName("petTypeI");
         let checkbox = document.getElementById("petTypeI_");
         const is_checked = checkbox.checked;
         for( value of type){
            var type1 = value.value;
         }
         if(type1 == "초소형견" && is_checked == true){
            swal('입력 오류',"초소형견은 맹견일 수 없습니다.", 'error');
         }

      }
      function test() {
           
          if (document.getElementById("petTypeI_").checked == true) {   //하나만 가져오는거라서 for문을 쓸 필요가 없음
              const bite = (document.getElementById("petTypeI_").value);
      }
      }
      
      function isType1(){
         if (document.getElementsByName("petTypeI"[0].value) == "초소형견"){
            let bite = document.getElementsByName("petTypeI");
            let type = document.querySelector("input[name=petTypeI]:checked").value;
            console.log(type);
            console.log(bite);
            if(type == "초소형견" && bite == "맹견"){
            } 
         }
         

      }