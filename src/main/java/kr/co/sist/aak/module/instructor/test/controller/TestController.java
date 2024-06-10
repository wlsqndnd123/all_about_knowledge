package kr.co.sist.aak.module.instructor.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	
	@GetMapping("test.do")
	public String test() {
		
		return "/instructor/test";
	}

}
