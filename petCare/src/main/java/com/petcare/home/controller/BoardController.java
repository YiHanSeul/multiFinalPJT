package com.petcare.home.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petcare.home.model.dto.BoardDto;
import com.petcare.home.model.dto.MapDto;
import com.petcare.home.model.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@GetMapping("/list")
	public String BoardList(Model model, HttpSession session){
		
		List<BoardDto> list = boardService.selectList();
		model.addAttribute("BoardList", list);
		
		BoardDto  dto = boardService.selectKey((String)session.getAttribute("userid"));
		session.setAttribute("userKey", dto.getUserKey());
 
		return  "communityList";
	}
	
	@PostMapping("/write")
	public String write(Model model, BoardDto writeDto) {
		System.out.println(writeDto);
		MapDto mapdto = boardService.selecthosname(writeDto.getField1());
		System.out.println(mapdto);
		if(mapdto==null) {
			model.addAttribute("no", mapdto);
			return "redirect:/board/writeForm";
		}
		int res = -1; 
//		boardService.write(writeDto);
		
		if (res>0) {
			return "redirect:/board/list";
		}else {
			return "redirect:/board/writeForm";
		} 
	}
		
	 
	@GetMapping("/writeForm")
	public String insertForm(Model model) {
		
		
		return "communityWrite";
	}
	
	@GetMapping("/detail")
	public String detail(Model model, int boardCnt) {

		
		BoardDto one= boardService.selectOne(boardCnt);
		
		model.addAttribute("detail", one);
		
		return "communityDetail";
	}
	
}
