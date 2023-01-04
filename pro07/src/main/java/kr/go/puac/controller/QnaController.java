package kr.go.puac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.go.puac.dto.QnaDTO;
import kr.go.puac.service.QnaService;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

	@Autowired
	QnaService qnaService;
	
	@GetMapping("list")
	public String qnaList(Model model) throws Exception {
		List<QnaDTO> qnaList = qnaService.QnaList();
		model.addAttribute("qnaList", qnaList);
		return "qna/qnaList";
	}
	
}