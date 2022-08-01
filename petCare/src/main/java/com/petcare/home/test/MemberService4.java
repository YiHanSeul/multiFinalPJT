package com.petcare.home.test;
//package com.petcare.home.test;
//
//import org.springframework.stereotype.Service;
//
//@Service
//public class MemberService {
//
//	private final MemberRepository memberRepository = null;
//	
//	
//	
//	
//	
//	
//	public Member saveMember(Member member) {
//		validateDuplicateMember(member);
//		return memberRepository.save(member);
//	}
//	
//	private void validateDuplicateMember(Member member) {
//		Member findMember = memberRepository.findByEmail(member.getEmail());
//		if(findMember != null) {
//			throw new IllegalStateException("이미 가입된 회원입니다.");
//		}
//	}
//	
//	
//}
