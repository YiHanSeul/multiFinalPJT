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
		MapDto mapdto = null;
		try {
			mapdto = boardService.selecthosname(writeDto.getField1());			
			System.out.println(mapdto);
		} catch (Exception e) {
			model.addAttribute("no", 1);
			return "communityWrite";
		}
			if(mapdto==null) {
				model.addAttribute("no", 1);
				return "communityWrite";
			}else {
				writeDto.setField1(mapdto.getHospitalname());
				int res = boardService.write(writeDto);
				if(res > 0) {
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
	
}
