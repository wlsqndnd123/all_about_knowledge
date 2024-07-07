/*
 * package kr.co.sist.aak.module.instructor.login.controller;
 * 
 * import javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.ModelAttribute; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod;
 * 
 * import kr.co.sist.aak.domain.admin.AdminPermissionDomain; import
 * kr.co.sist.aak.domain.instructor.vo.instructorLoginVO; import
 * kr.co.sist.aak.module.instructor.login.service.LoginService;
 * 
 * @Controller public class InstructorLoginController {
 * 
 * @Autowired(required = false) private LoginService loginService;
 * 
 * @RequestMapping(value = "/instructor/loginProcess.do", method = {
 * RequestMethod.GET, RequestMethod.POST }) public String login(@ModelAttribute
 * instructorLoginVO ilVO, HttpSession session, Model model) { if
 * (loginService.validateLogin(ilVO)) { session.setAttribute("inst_id",
 * ilVO.getId()); return "/instructor/login"; } else {
 * session.setAttribute("errorpage", false);
 * 
 * } // return "/instructor/login"; return
 * "forward:/instructor/instructor_home.do"; }
 * 
 * @GetMapping("") public String logout(HttpSession session) {
 * session.invalidate(); return "/instructor/login"; }
 * 
 * 
 * }
 */