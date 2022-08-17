package com.petcare.home.controller;

 
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petcare.home.model.dto.BoardDto;
import com.petcare.home.model.dto.MapDto;
import com.petcare.home.model.service.BoardService;


@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@GetMapping("/list")
	public String BoardList(Model model, HttpSession session, RedirectAttributes rttr){
		
		try {
			List<BoardDto> list = boardService.selectList();
			model.addAttribute("BoardList", list);
			model.addAttribute("num", 1);
			model.addAttribute("begin", 0);
			model.addAttribute("end", 8);
			
			BoardDto  dto = boardService.selectKey((String)session.getAttribute("userid"));
			session.setAttribute("userKey", dto.getUserKey());
		} catch (Exception e) {
			session.setAttribute("no", 1);
			
			return "redirect:/user/login";
			
		}
 
		return  "communityList";
	}
	

	
	@GetMapping("/cleanNum")
	@ResponseBody
	public void cleanNum(HttpSession session) {
		session.setAttribute("no", 0);
	}
	
	
	
	
	@GetMapping("/list1")
	public String BoardList1(int num, Model model, HttpSession session){
		
		List<BoardDto> list = boardService.selectList();
		model.addAttribute("BoardList", list);
		model.addAttribute("num", num);
		
		if(list.size()/9==(num-1)) {
		model.addAttribute("begin", (num-1)*9);
		model.addAttribute("end", list.size()-1);
		}else {
			model.addAttribute("begin", (num-1)*9);
			model.addAttribute("end", (num*9)-1);
		}
		BoardDto  dto = boardService.selectKey((String)session.getAttribute("userid"));
		session.setAttribute("userKey", dto.getUserKey());
		return  "communityList";
	}
	
	@PostMapping("/write")
	public String write(Model model, BoardDto writeDto,@RequestParam("file") 
	MultipartFile file) throws IOException {
	 int num = 0;
		System.out.println(writeDto); 
		try {
			num = boardService.selecthosname(writeDto.getField1());		
			System.out.println(num);
		} catch (Exception e) {
			model.addAttribute("no", 1);
			return "communityWrite";
		}
			if(num<=0) {
				model.addAttribute("no", 1);
				return "communityWrite";
			}else {
				int res = boardService.write(writeDto);
				if(res > 0) {
					
//					File saveFile = null;
//					String projectPath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\files";
//					
//					saveFile = new File(projectPath,writeDto.getUserKey()+writeDto.getComTitle());
					
//					try {
//						file.transferTo(saveFile);
//					} catch (Exception e) {
//						e.printStackTrace();
//					}
			        InputStream in = null;
			        OutputStream out = null;
			         
			        in = file.getInputStream();
			        //out = new FileOutputStream("C:\\Users\\ihans\\OneDrive\\바탕 화면\\img\\"+writeDto.getUserKey()+writeDto.getComTitle());
	                 out = new FileOutputStream(writeDto.getUserKey()+writeDto.getComTitle());
			        while(true) {
			        	int data = in.read();
			        	if(data==-1) {
			        		break;
			        	}
			        	out.write(data);
			        }
			        in.close();
			        out.close();
			        
					return "redirect:/board/list";				
				}else {
					model.addAttribute("no", 2);
					return "communityWrite";
				}
			} 
	}
	 
	@GetMapping("/writeForm")
	public String insertForm(Model model) {
		model.addAttribute("no", 0); 
		return "communityWrite";
	}
	
	@GetMapping("/detail")
	public String detail(Model model, int boardCnt) {

		BoardDto one= boardService.selectOne(boardCnt);
		
		model.addAttribute("detail", one);
		
		return "communityDetail";
	}
	@GetMapping("/del")
	public String del(int boardCnt) {
		int res = 0;
		try {
			res = boardService.del(boardCnt);
		} catch (Exception e) {
			return "redirect:/board/list";
		}
		if(res>0) {
			return "redirect:/board/list";
		}
		return "redirect:/board/list";
	}
	
	@GetMapping("/aj")
	@ResponseBody
	public List<MapDto> aj(@RequestParam("name") String name){
		List<MapDto> Dto = null;
		if (name == null || name == "" ) {
			return Dto;
		}
		try {
			Dto = boardService.selectBoardList(name);
		} catch (Exception e) {
			System.out.println("찾는 데이티가 없음");
		}
		return Dto;
	}
}
