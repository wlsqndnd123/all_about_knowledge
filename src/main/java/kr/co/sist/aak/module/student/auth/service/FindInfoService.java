package kr.co.sist.aak.module.student.auth.service;

import java.util.UUID;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.sist.aak.domain.student.vo.JoinVO;
import kr.co.sist.aak.module.student.auth.repository.FindInfoRepository;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class FindInfoService {

    private final FindInfoRepository findInfoRepository;
    private final PasswordEncoder passwordEncoder;

    public String findIdByEmail(String email) {
        return findInfoRepository.findIdByEmail(email);
    }

    @Transactional
    public String resetPassword(String email) {
        JoinVO student = findInfoRepository.findByEmail(email);
        if (student != null) {
            String tempPassword = generateTemporaryPassword();
            student.setPassword(passwordEncoder.encode(tempPassword));
            findInfoRepository.updatePassword(student);
            return tempPassword;
        }
        return null;
    }

    private String generateTemporaryPassword() {
        return UUID.randomUUID().toString().substring(0, 8);
    }
}
