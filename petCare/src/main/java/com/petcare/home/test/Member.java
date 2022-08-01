//package com.petcare.home.test;
//
//
//
//import lombok.ToString;
//import org.springframework.security.crypto.password.PasswordEncoder;
//
//import javax.persistence.*;
//
//
//
//@Entity
//@Table(name = "member")
//@ToString
//public class Member {
//    public Long getId() {
//		return id;
//	}
//
//
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//
//	public String getName() {
//		return name;
//	}
//
//
//	public void setName(String name) {
//		this.name = name;
//	}
//
//
//	public String getEmail() {
//		return email;
//	}
//
//
//	public void setEmail(String email) {
//		this.email = email;
//	}
//
//
//	public String getPassword() {
//		return password;
//	}
//
//
//	public void setPassword(String password) {
//		this.password = password;
//	}
//
//
//	public String getAddress() {
//		return address;
//	}
//
//
//	public void setAddress(String address) {
//		this.address = address;
//	}
//
//
//	public Role getRole() {
//		return role;
//	}
//
//
//	public void setRole(Role role) {
//		this.role = role;
//	}
//
//
//	@Id
//    @Column(name = "member_id")
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    private Long id;
//
//    private String name;
//
//    @Column(unique = true)
//    private String email;
//
//    private String password;
//
//    private String address;
//
//    @Enumerated(EnumType.STRING)
//    private Role role;
//
//    
//    public static Member createMember(MemberFormDto memberFormDto, PasswordEncoder passwordEncoder){
//        Member member = new Member();
//        
//        
//        
//        member.setName(memberFormDto.getName());
//        member.setEmail(memberFormDto.getEmail());
//        member.setAddress(memberFormDto.getAddress());
//        String password = passwordEncoder.encode(memberFormDto.getPassword());
//        member.setPassword(password);
//        member.setRole(Role.ADMIN);
//        return member;
//    }
//
//
//
//
//}
