package kr.co.sist.aak.module.student.auth.controller;

import kr.co.sist.aak.domain.student.vo.JoinVO;
import kr.co.sist.aak.module.student.auth.service.JoinService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
@RequestMapping("/join")
public class JoinController {

    private final JoinService joinService;

    @PostMapping
    public JoinVO join(@RequestParam String stdId,
                       @RequestParam String name,
                       @RequestParam String birth,
                       @RequestParam String password,
                       @RequestParam String tel,
                       @RequestParam String email) {
        return joinService.create(stdId, name, birth, password, tel, email);
    }
}
