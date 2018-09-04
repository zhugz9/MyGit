package com.mp.service.impl;

import java.util.Random;

import javax.annotation.Resource;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.mp.service.EmailService;

@Service("EmailService")
public class EmailServiceImpl implements EmailService {

	
	@Resource
	private JavaMailSender javaMailSender;
	
	@Override
	public String SendEmail(String email) {
		//System.out.println(email+"--------------------");
		SimpleMailMessage message = new SimpleMailMessage();
		int code = 0;
		try {
			code = (int) Math.round(Math.random()*1000000);
			message.setFrom("1329097585@qq.com");
			message.setTo(email);
			message.setSubject("邮件验证码");
			message.setText("验证码："+code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		javaMailSender.send(message);
		return code+"";
	}

}
