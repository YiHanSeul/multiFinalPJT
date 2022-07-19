package com.petcare.home.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.dto.UserDto;
import com.petcare.home.model.service.UserService;

<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
@Controller
@RequestMapping("/user")
public class UserController {

   @Autowired
   private UserService userService;
   // 회원가입 폼으로 넘어감

   @GetMapping("/user")
   public String test() {
      return "user";
   }

<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
   @GetMapping("/join")
   public String join() {

      return "join";// jsp 파일리턴
   }

<<<<<<< Updated upstream
=======
   @GetMapping("/calendar")
   public String calendarPage() {
      return "calendar";
   }

>>>>>>> Stashed changes
      @GetMapping("/login")
      public String loginPage() {
         return "login";
      }
<<<<<<< Updated upstream

   @GetMapping("/insertUserForm")
   public String insertUserForm(UserDto user) {

      return "user";
   }
=======
         @GetMapping("/insertUserForm")
   public String insertUserForm() {
      return "user";
   }
      @PostMapping("/loginForm")
      public String loginForm(Model model,HttpServletRequest request, HttpServletResponse response, HttpSession session) {
         String UserId = request.getParameter("UserId");
         String UserPw = request.getParameter("UserPw");
        
         
         session.setAttribute("UserId", UserId);
         session.setAttribute("UserPw", UserPw);
         
         if(0== userService.UserChk(UserId).getGrade()&&UserId.equals(userService.UserChk(UserId).getUserid())&& UserPw.equals(userService.UserChk(UserId).getUserpw())) {
            model.addAttribute("UserId",UserId);
            
            return "adminCheck";
         }else if (1== userService.UserChk(UserId).getGrade()&&UserId.equals(userService.UserChk(UserId).getUserid())&& UserPw.equals(userService.UserChk(UserId).getUserpw())) {
            model.addAttribute("UserId",UserId);
            return "index";
         }
         return "login";
      }
           
>>>>>>> Stashed changes

   // user.jsp파일에서 form 전송 클릭했을경우 실행되는 메소드
   @GetMapping("/insertUser")
   public String insertUser(UserDto user, HttpSession session, Model model, HttpServletRequest request,
         HttpServletResponse response) {
      System.out.println(user);
      int res = userService.joinUser(user);
      if (res > 0) {
         System.out.println(user);
         session.setAttribute("userid", user.getUserid());
         
         return "index";
      } else {
         return "index2";
      }

<<<<<<< Updated upstream

   }

   @PostMapping("/loginForm")
   public String loginForm(Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      String userid = request.getParameter("userid");
      String userpw = request.getParameter("userpw");

      session.setAttribute("userid", userid);
      session.setAttribute("userpw", userpw);

      if (0 == userService.UserChk(userid).getGrade() && userid.equals(userService.UserChk(userid).getUserid())
            && userpw.equals(userService.UserChk(userid).getUserpw())) {
         model.addAttribute("userid", userid);

         return "adminCheck";
      } else if (1 == userService.UserChk(userid).getGrade() && userid.equals(userService.UserChk(userid).getUserid())
            && userpw.equals(userService.UserChk(userid).getUserpw())) {
         model.addAttribute("userid", userid);
         return "index";
      }
      return "login";
=======
>>>>>>> Stashed changes
   }

   @GetMapping("/userMypage")
   public String userMypage(Model model, HttpServletRequest request, HttpServletResponse response, String userid, HttpSession session) {
      String petName = request.getParameter("petName");
      String petAge = request.getParameter("petAge");
      String petGender = request.getParameter("petGender");
      String petN = request.getParameter("petN");
      model.addAttribute("petName", petName);
      model.addAttribute("petAge", petAge);
      model.addAttribute("petGender", petGender);
      model.addAttribute("petN", petN);
      // 가입한거를 가지고 와야하나?
      
      if(petName == null ||  petAge == null || petGender == null|| petN == null) {
     	return "index"; 
      }
      
      userid = (String) session.getAttribute("userid");
      System.out.println(userid);
      UserDto dto = userService.UserChk(userid);
      String username = dto.getUsername();
      String usernick = dto.getUsernick();
      String useremail = dto.getUseremail();
      String userphone = dto.getUserphone();
      
      model.addAttribute("userid", userid);
      model.addAttribute("username", username);
      model.addAttribute("usernick", usernick);
      model.addAttribute("useremail", useremail);
      model.addAttribute("userphone", userphone);
      
     
      
      
      
      return "userMypage";
   }

   @GetMapping("/petInfo")
   public String petIntfo() {

      return "petInfo";
   }

   @GetMapping("/userMypageRes")
   //값을 여기서 받고 처리해줌
   public String userMypageRes(HttpServletRequest request, HttpServletResponse response, HttpSession session, String userid, String usernick, Model model) {
<<<<<<< Updated upstream
//      System.out.println(userid);
//      System.out.println(usernick);
      
=======

>>>>>>> Stashed changes
      userid = (String) session.getAttribute("userid");
      int res = userService.updateUserNick(userid, usernick);
      if(res>0) {
         UserDto dto = userService.UserChk(userid);
         String username = dto.getUsername();
         
         String useremail = dto.getUseremail();
         String userphone = dto.getUserphone();
         
         model.addAttribute("userid", userid);
         model.addAttribute("username", username);
         model.addAttribute("usernick", usernick);
         model.addAttribute("useremail", useremail);
         model.addAttribute("userphone", userphone);
         
         return "userMypage";
      }else {
         return "index2";
      }
<<<<<<< Updated upstream
//      return "userMypage";
=======
>>>>>>> Stashed changes
   }
   
   @GetMapping("/userMypageRes2")
   //값을 여기서 받고 처리해줌
   public String userMypageRes2(HttpServletRequest request, HttpServletResponse response, HttpSession session, String userid, String useremail, Model model) {
      
<<<<<<< Updated upstream

      userid = (String) session.getAttribute("userid");
      
//      System.out.println(userid);
      int res = userService.updateUserEmail(userid, useremail);
=======
      userid = (String) session.getAttribute("userid");
      int res = userService.updateUserNick(userid, useremail);
>>>>>>> Stashed changes
      if(res>0) {
         UserDto dto = userService.UserChk(userid);
         String username = dto.getUsername();
         
         String usernick = dto.getUsernick();
         String userphone = dto.getUserphone();
         
         model.addAttribute("userid", userid);
         model.addAttribute("username", username);
         model.addAttribute("useremail", useremail);
         model.addAttribute("usernick", usernick);
         model.addAttribute("userphone", userphone);
<<<<<<< Updated upstream

=======
         
>>>>>>> Stashed changes
         return "userMypage";
      }else {
         return "index2";
      }
<<<<<<< Updated upstream
//      return "userMypage";
   }
   @GetMapping("/userMypageRes3")
   //값을 여기서 받고 처리해줌
   public String userMypageRes3(HttpServletRequest request, HttpServletResponse response, HttpSession session, String userid, String userphone, Model model) {
      

      userid = (String) session.getAttribute("userid");
      int res = userService.updateUserPhone(userid, userphone);
      if(res>0) {
         UserDto dto = userService.UserChk(userid);
         String username = dto.getUsername();
         
         String usernick = dto.getUsernick();
         String useremail = dto.getUseremail();
         
         model.addAttribute("userid", userid);
         model.addAttribute("username", username);
         model.addAttribute("useremail", useremail);
         model.addAttribute("usernick", usernick);
         model.addAttribute("userphone", userphone);

         return "userMypage";
      }else {
         return "index2";
      }
//      return "userMypage";
   }
   
   
   
=======
   }
   
   
>>>>>>> Stashed changes
   @GetMapping("/testNext")
   public String testNext(HttpSession session, String userid, Model model) {
      userid = (String) session.getAttribute("userid");
      System.out.println(userid);
      UserDto dto = userService.UserChk(userid);
      String usernick = dto.getUsernick();
      model.addAttribute("usernick", usernick);
      return "testNext";
   }
   
   @GetMapping("/testNext2")
   public String testNext2(HttpSession session, String userid, Model model) {
      userid = (String) session.getAttribute("userid");
      UserDto dto = userService.UserChk(userid);
      String useremail = dto.getUseremail();
      model.addAttribute("useremail", useremail);
<<<<<<< Updated upstream
      System.out.println(useremail);
=======
>>>>>>> Stashed changes
      return "testNext2";
   }
   
   @GetMapping("/testNext3")
   public String testNext3(HttpSession session, String userid, Model model) {
	   userid = (String) session.getAttribute(userid);
	  
	   UserDto dto = userService.UserChk(userid);
	   String userphone = dto.getUserphone();
	   model.addAttribute("userphone", userphone);
	   
	   return "testNext3";
   }
   
   @GetMapping("/userDelete")
   public String userDelete(HttpSession session) {
	   String userid = (String)session.getAttribute("userid");
//	   System.out.println(userid);
	   return "userDelete";
   }
   
   @GetMapping("/delete")
   public String delete(HttpSession session, String userpw) {
	   String userid = (String)session.getAttribute("userid");
	   System.out.println(userid);
	   System.out.println(userpw);
	   System.out.println(userService.UserChk(userid).getUserpw());
	   
	   if(userpw.equals(userService.UserChk(userid).getUserpw())) {
		   
		   
		   userService.deleteUser(userid);
		   session.removeAttribute(userid);
		   session.invalidate();
		   return "index";
	   }

	   return "index2";
   }
   
   @GetMapping("/logout")
   public String logout(HttpSession session) {
	   String userid =(String)session.getAttribute("userid");
	   session.removeAttribute(userid);
	   session.invalidate();
	   return "index";
   }
   
   

}