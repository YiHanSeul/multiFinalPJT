
$(document).ready(function(){
	getInfo(); 
	 }); 
var areanum = true;

function openarea() {
  if (areanum) {
     areanum = false;
     document.getElementById("area").style.display = "block";
     document.getElementById("area").style.zIndex = 100;
  } else {
     areanum = true;
     document.getElementById("area").style.display = "none";
     document.body.style.background = "white";
  }
}

function chageSelect() {
  var selectList = document.getElementById("region")

  if (selectList.options[selectList.selectedIndex].value == "서울특별시") {
     $("<option value='종로구' class='seoul'>종로구</option>").insertAfter("#zone");
     $("<option value='중구' class='seoul'>중구</option>").insertAfter("#zone");
     $("<option value='용산구' class='seoul'>용산구</option>").insertAfter("#zone");
     $("<option value='성동구' class='seoul'>성동구</option>").insertAfter("#zone");
     $("<option value='광진구' class='seoul'>광진구</option>").insertAfter("#zone");
     $("<option value='동대문구' class='seoul'>동대문구</option>").insertAfter("#zone");
     $("<option value='중랑구' class='seoul'>중랑구</option>").insertAfter("#zone");
     $("<option value='성북구' class='seoul'>성북구</option>").insertAfter("#zone");
     $("<option value='강북구' class='seoul'>강북구</option>").insertAfter("#zone");
     $("<option value='도봉구' class='seoul'>도봉구</option>").insertAfter("#zone");
     $("<option value='노원구' class='seoul'>노원구</option>").insertAfter("#zone");
     $("<option value='은평구' class='seoul'>은평구</option>").insertAfter("#zone");
     $("<option value='서대문구'class='seoul'>서대문구</option>").insertAfter("#zone");
     $("<option value='강서구' class='seoul'>강서구</option>").insertAfter("#zone");
     $("<option value='구로구' class='seoul'>구로구</option>").insertAfter("#zone");
     $("<option value='영등포구' class='seoul'>영등포구</option>").insertAfter("#zone");
     $("<option value='금천구' class='seoul'>금천구</option>").insertAfter("#zone");
     $("<option value='동작구' class='seoul'>동작구</option>").insertAfter("#zone");
     $("<option value='관악구' class='seoul'>관악구</option>").insertAfter("#zone");
     $("<option value='서초구' class='seoul'>서초구</option>").insertAfter("#zone");
     $("<option value='강남구' class='seoul'>강남구</option>").insertAfter("#zone");
     $("<option value='송파구' class='seoul'>송파구</option>").insertAfter("#zone");
     $("<option value='강동구' class='seoul'>강동구</option>").insertAfter("#zone");
  }
  else{ 
     $(".seoul").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "부산광역시") {
     $("<option value='중구' class='busan'>중구</option>").insertAfter("#zone");
     $("<option value='서구' class='busan'>서구</option>").insertAfter("#zone");
     $("<option value='동구' class='busan'>동구</option>").insertAfter("#zone");
     $("<option value='영도구' class='busan'>영도구</option>").insertAfter("#zone");
     $("<option value='부산진구' class='busan'>부산진구</option>").insertAfter("#zone");
     $("<option value='동래구' class='busan'>동래구</option>").insertAfter("#zone");
     $("<option value='남구' class='busan'>남구</option>").insertAfter("#zone");
     $("<option value='북구' class='busan'>북구</option>").insertAfter("#zone");
     $("<option value='강서구' class='busan'>강서구</option>").insertAfter("#zone");
     $("<option value='해운대구' class='busan'>해운대구</option>").insertAfter("#zone");
     $("<option value='사하구' class='busan'>사하구</option>").insertAfter("#zone");
     $("<option value='금정구' class='busan'>금정구</option>").insertAfter("#zone");
     $("<option value='연제구' class='busan'>연제구</option>").insertAfter("#zone");
     $("<option value='수영구' class='busan'>수영구</option>").insertAfter("#zone");
     $("<option value='사상구' class='busan'>사상구</option>").insertAfter("#zone");
  }
  else{
     $(".busan").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "대구광역시") {
     $("<option value='중구' class='daegu'>중구</option>").insertAfter("#zone");
     $("<option value='동구' class='daegu'>동구</option>").insertAfter("#zone");
     $("<option value='서구' class='daegu'>서구</option>").insertAfter("#zone");
     $("<option value='남구' class='daegu'>남구</option>").insertAfter("#zone");
     $("<option value='북구' class='daegu'>북구</option>").insertAfter("#zone");
     $("<option value='수성구' class='daegu'>수성구</option>").insertAfter("#zone");
     $("<option value='달서구' class='daegu'>달서구</option>").insertAfter("#zone");
     $("<option value='달성군' class='daegu'>달성군</option>").insertAfter("#zone");
  }
  else{
     $(".daegu").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "인천광역시") {
     $("<option value='중구' class='inchan'>중구</option>").insertAfter("#zone");
     $("<option value='동구' class='inchan'>동구</option>").insertAfter("#zone");
     $("<option value='미추홀구' class='inchan'>미추홀구</option>").insertAfter("#zone");
     $("<option value='연수구' class='inchan'>연수구</option>").insertAfter("#zone");
     $("<option value='남동구' class='inchan'>남동구</option>").insertAfter("#zone");
     $("<option value='부평구' class='inchan'>부평구</option>").insertAfter("#zone");
     $("<option value='계양구' class='inchan'>계양구</option>").insertAfter("#zone");
     $("<option value='서구' class='inchan'>서구</option>").insertAfter("#zone");
     $("<option value='강화군' class='inchan'>강화군</option>").insertAfter("#zone");
     $("<option value='웅진군' class='inchan'>웅진군</option>").insertAfter("#zone");
  }else{
     $(".inchan").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "광주광역시") {
     $("<option value='동구' class='gwangju'>동구</option>").insertAfter("#zone");
     $("<option value='서구' class='gwangju'>서구</option>").insertAfter("#zone");
     $("<option value='남구' class='gwangju'>남구</option>").insertAfter("#zone");
     $("<option value='북구' class='gwangju'>북구</option>").insertAfter("#zone");
     $("<option value='광산구' class='gwangju'>광산구</option>").insertAfter("#zone");
  }else{
     $(".gwangju").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "대전광역시") {
     $("<option value='동구' class='daejeon'>동구</option>").insertAfter("#zone");
     $("<option value='중구' class='daejeon'>중구</option>").insertAfter("#zone");
     $("<option value='서구' class='daejeon'>서구</option>").insertAfter("#zone");
     $("<option value='유성구' class='daejeon'>유성구</option>").insertAfter("#zone");
     $("<option value='대덕구' class='daejeon'>대덕구</option>").insertAfter("#zone");
  }else{
     $(".daejeon").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "울산광역시") {
     $("<option value='남구' class='ulsan'>남구</option>").insertAfter("#zone");
     $("<option value='중구' class='ulsan'>중구</option>").insertAfter("#zone");
     $("<option value='북구' class='ulsan'>북구</option>").insertAfter("#zone");
     $("<option value='동구' class='ulsan'>동구</option>").insertAfter("#zone");
     $("<option value='울주군' class='ulsan'>울주군</option>").insertAfter("#zone");
  }else{
     $(".ulsan").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "경기도") {
     $("<option value='수원시 장안구' class='gyeonggido'>수원시 장안구</option>").insertAfter("#zone");
     $("<option value='수원시 권선구' class='gyeonggido'>수원시 권선구</option>").insertAfter("#zone");
     $("<option value='수원시 팔달구' class='gyeonggido'>수원시 팔달구</option>").insertAfter("#zone");
     $("<option value='수원시 영통구' class='gyeonggido'>수원시 영통구</option>").insertAfter("#zone");
     $("<option value='성남시 수정구' class='gyeonggido'>성남시 수정구</option>").insertAfter("#zone");
     $("<option value='성남시 중원구' class='gyeonggido'>성남시 중원구</option>").insertAfter("#zone");
     $("<option value='성남시 분당구' class='gyeonggido'>성남시 분당구</option>").insertAfter("#zone");
     $("<option value='안양시 만안구' class='gyeonggido'>안양시 만안구</option>").insertAfter("#zone");
     $("<option value='안양시 동안구' class='gyeonggido'>안양시 동안구</option>").insertAfter("#zone");
     $("<option value='용인시 처인구' class='gyeonggido'>용인시 처인구</option>").insertAfter("#zone");
     $("<option value='용인시 기흥구' class='gyeonggido'>용인시 기흥구</option>").insertAfter("#zone");
     $("<option value='용인시 수지구' class='gyeonggido'>용인시 수지구</option>").insertAfter("#zone");
     $("<option value='부천시' class='gyeonggido'>부천시</option>").insertAfter("#zone");
     $("<option value='광명시' class='gyeonggido'>광명시</option>").insertAfter("#zone");
     $("<option value='평택시' class='gyeonggido'>평택시</option>").insertAfter("#zone");
     $("<option value='과천시' class='gyeonggido'>과천시</option>").insertAfter("#zone");
     $("<option value='오산시' class='gyeonggido'>오산시</option>").insertAfter("#zone");
     $("<option value='시흥시' class='gyeonggido'>시흥시</option>").insertAfter("#zone");
     $("<option value='군포시' class='gyeonggido'>군포시</option>").insertAfter("#zone");
     $("<option value='의왕시' class='gyeonggido'>의왕시</option>").insertAfter("#zone");
     $("<option value='하남시' class='gyeonggido'>하남시</option>").insertAfter("#zone");
     $("<option value='이천시' class='gyeonggido'>이천시</option>").insertAfter("#zone");
     $("<option value='안성시' class='gyeonggido'>안성시</option>").insertAfter("#zone");
     $("<option value='김포시' class='gyeonggido'>김포시</option>").insertAfter("#zone");
     $("<option value='화성시' class='gyeonggido'>화성시</option>").insertAfter("#zone");
     $("<option value='광주시' class='gyeonggido'>광주시</option>").insertAfter("#zone");
     $("<option value='여주시' class='gyeonggido'>여주시</option>").insertAfter("#zone");             
     $("<option value='양평군' class='gyeonggido'>양평군</option>").insertAfter("#zone");             
     $("<option value='고양시 덕양구' class='gyeonggido'>고양시 덕양구</option>").insertAfter("#zone");             
     $("<option value='고양시 일산동구' class='gyeonggido'>고양시 일산동구</option>").insertAfter("#zone");             
     $("<option value='고양시 일산서구' class='gyeonggido'>고양시 일산서구</option>").insertAfter("#zone");             
     $("<option value='의정부시' class='gyeonggido'>의정부시</option>").insertAfter("#zone");             
     $("<option value='동두천시' class='gyeonggido'>동두천시</option>").insertAfter("#zone");             
     $("<option value='구리시' class='gyeonggido'>구리시</option>").insertAfter("#zone");             
     $("<option value='남양주시' class='gyeonggido'>남양주시</option>").insertAfter("#zone");             
     $("<option value='파주시' class='gyeonggido'>파주시</option>").insertAfter("#zone");             
     $("<option value='양주시' class='gyeonggido'>양주시</option>").insertAfter("#zone");             
     $("<option value='포천시' class='gyeonggido'>포천시</option>").insertAfter("#zone");             
     $("<option value='연천군' class='gyeonggido'>연천군</option>").insertAfter("#zone");             
     $("<option value='가평군' class='gyeonggido'>가평군</option>").insertAfter("#zone");             
  }else{
     $(".gyeonggido").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "강원도") {
     $("<option value='양양군' class='gangwondo'>양양군</option>").insertAfter("#zone");
     $("<option value='고성군' class='gangwondo'>고성군</option>").insertAfter("#zone");
     $("<option value='인제군' class='gangwondo'>인제군</option>").insertAfter("#zone");
     $("<option value='양구군' class='gangwondo'>양구군</option>").insertAfter("#zone");
     $("<option value='화천군' class='gangwondo'>화천군</option>").insertAfter("#zone");
     $("<option value='철원군' class='gangwondo'>철원군</option>").insertAfter("#zone");
     $("<option value='정선군' class='gangwondo'>정선군</option>").insertAfter("#zone");
     $("<option value='평창군' class='gangwondo'>평창군</option>").insertAfter("#zone");
     $("<option value='영월군' class='gangwondo'>영월군</option>").insertAfter("#zone");
     $("<option value='횡성군' class='gangwondo'>횡성군</option>").insertAfter("#zone");
     $("<option value='홍천구' class='gangwondo'>홍천구</option>").insertAfter("#zone");
     $("<option value='삼척시' class='gangwondo'>삼척시</option>").insertAfter("#zone");
     $("<option value='속초시' class='gangwondo'>속초시</option>").insertAfter("#zone");
     $("<option value='태백시' class='gangwondo'>태백시</option>").insertAfter("#zone");
     $("<option value='동해시' class='gangwondo'>동해시</option>").insertAfter("#zone");
     $("<option value='강릉시' class='gangwondo'>강릉시</option>").insertAfter("#zone");
     $("<option value='원주시' class='gangwondo'>원주시</option>").insertAfter("#zone");
     $("<option value='춘천시' class='gangwondo'>춘천시</option>").insertAfter("#zone");
  }else{
     $(".gangwondo").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "충청북도") {
     $("<option value='단양군' class='cbukdo'>단양군</option>").insertAfter("#zone");
     $("<option value='음성군' class='cbukdo'>음성군</option>").insertAfter("#zone");
     $("<option value='괴산군' class='cbukdo'>괴산군</option>").insertAfter("#zone");
     $("<option value='진천군' class='cbukdo'>진천군</option>").insertAfter("#zone");
     $("<option value='증평군' class='cbukdo'>증평군</option>").insertAfter("#zone");
     $("<option value='영동군' class='cbukdo'>영동군</option>").insertAfter("#zone");
     $("<option value='옥천구' class='cbukdo'>옥천구</option>").insertAfter("#zone");
     $("<option value='보은군' class='cbukdo'>보은군</option>").insertAfter("#zone");
     $("<option value='제천시' class='cbukdo'>제천시</option>").insertAfter("#zone");
     $("<option value='충주시' class='cbukdo'>충주시</option>").insertAfter("#zone");
     $("<option value='청주시 청원구' class='cbukdo'>청주시 청원구</option>").insertAfter("#zone");
     $("<option value='청주시 서원구' class='cbukdo'>청주시 서원구</option>").insertAfter("#zone");
     $("<option value='청주시 흥덕구' class='cbukdo'>청주시 흥덕구</option>").insertAfter("#zone");
     $("<option value='청주시 상당구' class='cbukdo'>청주시 상당구</option>").insertAfter("#zone");
  }else{
     $(".cbukdo").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "충청남도") {
     $("<option value='태안군' class='cnamdo'>태안군</option>").insertAfter("#zone");
     $("<option value='예산군' class='cnamdo'>예산군</option>").insertAfter("#zone");
     $("<option value='홍성군' class='cnamdo'>홍성군</option>").insertAfter("#zone");
     $("<option value='청양군' class='cnamdo'>청양군</option>").insertAfter("#zone");
     $("<option value='서천군' class='cnamdo'>서천군</option>").insertAfter("#zone");
     $("<option value='부여군' class='cnamdo'>부여군</option>").insertAfter("#zone");
     $("<option value='금산군' class='cnamdo'>금산군</option>").insertAfter("#zone");
     $("<option value='당진시' class='cnamdo'>당진시</option>").insertAfter("#zone");
     $("<option value='계룡시' class='cnamdo'>계룡시</option>").insertAfter("#zone");
     $("<option value='논산시' class='cnamdo'>논산시</option>").insertAfter("#zone");
     $("<option value='서산시' class='cnamdo'>서산시</option>").insertAfter("#zone");
     $("<option value='아산시' class='cnamdo'>아산시</option>").insertAfter("#zone");
     $("<option value='보령시' class='cnamdo'>보령시</option>").insertAfter("#zone");
     $("<option value='공주시' class='cnamdo'>공주시</option>").insertAfter("#zone");
     $("<option value='천안시 동남구' class='cnamdo'>천안시 동남구</option>").insertAfter("#zone");
     $("<option value='천안시 서북구' class='cnamdo'>천안시 서북구</option>").insertAfter("#zone");
  }else{
     $(".cnamdo").remove();
  }if (selectList.options[selectList.selectedIndex].value == "전라북도") {
     $("<option value='부안군' class='jbukdo'>부안군</option>").insertAfter("#zone");
     $("<option value='고창군' class='jbukdo'>고창군</option>").insertAfter("#zone");
     $("<option value='순창군' class='jbukdo'>순창군</option>").insertAfter("#zone");
     $("<option value='임실군' class='jbukdo'>임실군</option>").insertAfter("#zone");
     $("<option value='장수군' class='jbukdo'>장수군</option>").insertAfter("#zone");
     $("<option value='무주군' class='jbukdo'>무주군</option>").insertAfter("#zone");
     $("<option value='진안군' class='jbukdo'>진안군</option>").insertAfter("#zone");
     $("<option value='완주군' class='jbukdo'>완주군</option>").insertAfter("#zone");
     $("<option value='김제시' class='jbukdo'>김제시</option>").insertAfter("#zone");
     $("<option value='남원시' class='jbukdo'>남원시</option>").insertAfter("#zone");
     $("<option value='정읍시' class='jbukdo'>정읍시</option>").insertAfter("#zone");
     $("<option value='익산시' class='jbukdo'>익산시</option>").insertAfter("#zone");
     $("<option value='군산시' class='jbukdo'>군산시</option>").insertAfter("#zone");
     $("<option value='전주시 덕진구' class='jbukdo'>전주시 덕진구</option>").insertAfter("#zone");
     $("<option value='전주시 완산구' class='jbukdo'>전주시 완산구</option>").insertAfter("#zone");
  }else{
     $(".jbukdo").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "전라남도") {
     $("<option value='신안군' class='jnamdo'>신안군</option>").insertAfter("#zone");
     $("<option value='진도군' class='jnamdo'>진도군</option>").insertAfter("#zone");
     $("<option value='완도군' class='jnamdo'>완도군</option>").insertAfter("#zone");
     $("<option value='장성군' class='jnamdo'>장성군</option>").insertAfter("#zone");
     $("<option value='영광군' class='jnamdo'>영광군</option>").insertAfter("#zone");
     $("<option value='함평군' class='jnamdo'>함평군</option>").insertAfter("#zone");
     $("<option value='무안군' class='jnamdo'>무안군</option>").insertAfter("#zone");
     $("<option value='영암군' class='jnamdo'>영암군</option>").insertAfter("#zone");
     $("<option value='해남군' class='jnamdo'>해남군</option>").insertAfter("#zone");
     $("<option value='강진군' class='jnamdo'>강진군</option>").insertAfter("#zone");
     $("<option value='장흥군' class='jnamdo'>장흥군</option>").insertAfter("#zone");
     $("<option value='화순군' class='jnamdo'>화순군</option>").insertAfter("#zone");
     $("<option value='보성군' class='jnamdo'>보성군</option>").insertAfter("#zone");
     $("<option value='고흥군' class='jnamdo'>고흥군</option>").insertAfter("#zone");
     $("<option value='구례군' class='jnamdo'>구례군</option>").insertAfter("#zone");
     $("<option value='곡성군' class='jnamdo'>곡성군</option>").insertAfter("#zone");
     $("<option value='담양군' class='jnamdo'>담양군</option>").insertAfter("#zone");
     $("<option value='광양시' class='jnamdo'>광양시</option>").insertAfter("#zone");
     $("<option value='나주시' class='jnamdo'>나주시</option>").insertAfter("#zone");
     $("<option value='순천시' class='jnamdo'>순천시</option>").insertAfter("#zone");
     $("<option value='여수시' class='jnamdo'>여수시</option>").insertAfter("#zone");
     $("<option value='목포시' class='jnamdo'>목포시</option>").insertAfter("#zone");          
  }else{
     $(".jnamdo").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "경상북도") {
     $("<option value='울릉군' class='gbukdo'>울릉군</option>").insertAfter("#zone");
     $("<option value='울진군' class='gbukdo'>울진군</option>").insertAfter("#zone");
     $("<option value='봉화군' class='gbukdo'>봉화군</option>").insertAfter("#zone");
     $("<option value='예천군' class='gbukdo'>예천군</option>").insertAfter("#zone");
     $("<option value='칠곡군' class='gbukdo'>칠곡군</option>").insertAfter("#zone");
     $("<option value='성주군' class='gbukdo'>성주군</option>").insertAfter("#zone");
     $("<option value='고령군' class='gbukdo'>고령군</option>").insertAfter("#zone");
     $("<option value='청도군' class='gbukdo'>청도군</option>").insertAfter("#zone");
     $("<option value='영덕군' class='gbukdo'>영덕군</option>").insertAfter("#zone");
     $("<option value='영양군' class='gbukdo'>영양군</option>").insertAfter("#zone");
     $("<option value='청송군' class='gbukdo'>청송군</option>").insertAfter("#zone");
     $("<option value='의성군' class='gbukdo'>의성군</option>").insertAfter("#zone");
     $("<option value='군위군' class='gbukdo'>군위군</option>").insertAfter("#zone");
     $("<option value='경산시' class='gbukdo'>경산시</option>").insertAfter("#zone");
     $("<option value='문경시' class='gbukdo'>문경시</option>").insertAfter("#zone");
     $("<option value='상주시' class='gbukdo'>상주시</option>").insertAfter("#zone");
     $("<option value='영천시' class='gbukdo'>영천시</option>").insertAfter("#zone");
     $("<option value='영주시' class='gbukdo'>영주시</option>").insertAfter("#zone");
     $("<option value='구미시' class='gbukdo'>구미시</option>").insertAfter("#zone");
     $("<option value='안동시' class='gbukdo'>안동시</option>").insertAfter("#zone");
     $("<option value='김천시' class='gbukdo'>김천시</option>").insertAfter("#zone");
     $("<option value='경주시' class='gbukdo'>경주시</option>").insertAfter("#zone");
     $("<option value='포항시 북구' class='gbukdo'>포항시 북구</option>").insertAfter("#zone");
     $("<option value='포항시 남구' class='gbukdo'>포항시 남구</option>").insertAfter("#zone");
  }else{
     $(".gbukdo").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "경상남도") {
     $("<option value='합천군' class='gnamdo'>합천군</option>").insertAfter("#zone");
     $("<option value='거창군' class='gnamdo'>거창군</option>").insertAfter("#zone");
     $("<option value='함양군' class='gnamdo'>함양군</option>").insertAfter("#zone");
     $("<option value='산청군' class='gnamdo'>산청군</option>").insertAfter("#zone");
     $("<option value='하동군' class='gnamdo'>하동군</option>").insertAfter("#zone");
     $("<option value='남해군' class='gnamdo'>남해군</option>").insertAfter("#zone");
     $("<option value='고성군' class='gnamdo'>고성군</option>").insertAfter("#zone");
     $("<option value='창녕군' class='gnamdo'>창녕군</option>").insertAfter("#zone");
     $("<option value='함안군' class='gnamdo'>함안군</option>").insertAfter("#zone");
     $("<option value='의령군' class='gnamdo'>의령군</option>").insertAfter("#zone");
     $("<option value='양산시' class='gnamdo'>양산시</option>").insertAfter("#zone");
     $("<option value='거제시' class='gnamdo'>거제시</option>").insertAfter("#zone");
     $("<option value='밀양시' class='gnamdo'>밀양시</option>").insertAfter("#zone");
     $("<option value='김해시' class='gnamdo'>김해시</option>").insertAfter("#zone");
     $("<option value='사천시' class='gnamdo'>사천시</option>").insertAfter("#zone");
     $("<option value='통영시' class='gnamdo'>통영시</option>").insertAfter("#zone");
     $("<option value='진주시' class='gnamdo'>진주시</option>").insertAfter("#zone");
     $("<option value='창원시 진해구' class='gnamdo'>창원시 진해구</option>").insertAfter("#zone");
     $("<option value='창원시 마산회원구' class='gnamdo'>창원시 마산회원구</option>").insertAfter("#zone");
     $("<option value='창원시 마산합포구' class='gnamdo'>창원시 마산합포구</option>").insertAfter("#zone");
     $("<option value='창원시 성산구' class='gnamdo'>창원시 성산구</option>").insertAfter("#zone");
     $("<option value='창원시 의창구' class='gnamdo'>창원시 의창구</option>").insertAfter("#zone");
  }else{
     $(".gnamdo").remove();
  }
  if (selectList.options[selectList.selectedIndex].value == "제주특별자치도") {
     $("<option value='서귀포시' class='jeju'>서귀포시</option>").insertAfter("#zone");
     $("<option value='제주시' class='jeju'>제주시</option>").insertAfter("#zone");
  }else{
     $(".jeju").remove();
  }
}




	function res(i){ 
	
	    var HospitalName = listname[i];
	    let Vacc1=listVacc1[i];
	    let Vacc2=listVacc2[i];
	    let Vacc3=listVacc3[i];
	    console.log(HospitalName,Vacc1,Vacc2,Vacc3);
	    location.href="/vacc/vacccalendar?HospitalName="+HospitalName+"&Vacc1="+Vacc1+"&Vacc2="+Vacc2+"&Vacc3="+Vacc3;
	       }
	       
   
   function getInfo() {
       // 지도의 현재 중심좌표를 얻어옵니다 
       var center = map.getCenter(); 
       
       // 지도의 현재 레벨을 얻어옵니다
       var level = map.getLevel();
       
       // 지도타입을 얻어옵니다
       var mapTypeId = map.getMapTypeId(); 
       
       // 지도의 현재 영역을 얻어옵니다 
       var bounds = map.getBounds();
       
       // 영역의 남서쪽 좌표를 얻어옵니다 
       var swLatLng = bounds.getSouthWest(); 
       
       // 영역의 북동쪽 좌표를 얻어옵니다 
       var neLatLng = bounds.getNorthEast(); 
       
       // 영역정보를 문자열로 얻어옵니다. ((남,서), (북,동)) 형식입니다
       var boundsStr = bounds.toString();
       
       
       
       var message = '지도 중심좌표는 위도 ' + center.getLat() + ', <br>';
       message += '경도 ' + center.getLng() + ' 이고 <br>';
       message += '지도 레벨은 ' + level + ' 입니다 <br> <br>';
       message += '지도 타입은 ' + mapTypeId + ' 이고 <br> ';
       message += '지도의 남서쪽 좌표는 ' + swLatLng.getLat() + ', ' + swLatLng.getLng() + ' 이고 <br>';
       message += '북동쪽 좌표는 ' + neLatLng.getLat() + ', ' + neLatLng.getLng() + ' 입니다';
       
       // 개발자도구를 통해 직접 message 내용을 확인해 보세요.
        console.log(message);
        $(".ge").remove();  
        var n = 0;
    	var sum = new Array();
        for (var i = 0; i < listlng.length; i++) {
        	if((swLatLng.getLat() <= listlat[i] && listlat[i] <= neLatLng.getLat()) && (swLatLng.getLng() <= listlng[i] && listlng[i] <= neLatLng.getLng())&&n<5){	        		
        		n+=1
        		sum.push(i);
        	}
        	
        } 
		  $("#a").remove();  
	        for(var i = 0; i< sum.length; i++){
	       		if(sum.length==0){
					 $("#a").remove();  
				}	       		
				else if(sum.length>0 && i==0){
					$("#list").append("<tr id='a'><th>병원명</th><th>주소</th><th>종합7종백신</th><th>코로나 장염</th><th>켄넬코프</th></tr>");
	       		}
	       		$("#list").append("<tr class='ge'><td id='hname'>"+listname[sum[i]]+"</td><td>"+listAddr[sum[i]]+"</td><td>"+listVacc1[sum[i]]+"원</td><td>"+listVacc2[sum[i]]+"원</td><td>"+listVacc3[sum[i]]+"원</td><td id='tbt'><button class='btn btn-warning' onclick=res("+sum[i]+");>예약하기</button></td></tr>");
	        }
		       
	        
        }
      
   
   
   //현재 위치로 변경
	function now() {
		if( navigator.geolocation){
			navigator.geolocation.getCurrentPosition(function(position){
				
				var lat = position.coords.latitude,
					lon = position.coords.longitude;
				
				locPosition = new kakao.maps.LatLng(lat,lon);
				map.setCenter(locPosition);
			}); 
		}
   } 
   