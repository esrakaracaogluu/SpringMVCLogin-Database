package com.controller.databinding;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonelController {
	public String username;
	public String password;
	static Personel personel = new Personel();

	@RequestMapping("/")
	public String anaSayfa(Model m) {
		m.addAttribute("p", personel);
		return "personel-form";
	}

	@RequestMapping("/giris")
	public String giris(HttpServletRequest req, Model m)  {
		int log = 0;
		personel.setUsername(req.getParameter("username"));
		personel.setPassword(req.getParameter("password"));

		try {
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "calisan", "calisan");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("Select * From PERSONEL");

			while (rs.next()) {
				if (rs.getString(1).equals(personel.getUsername()) && rs.getString(2).equals(personel.getPassword())) {
					personel.setIsim(rs.getString(3));
					personel.setSoyisim(rs.getString(4));
					personel.setRol(rs.getString(5));
					log = 1;
					m.addAttribute("p", personel);
				}

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} 
		if (log == 1) {
			return "girisbasarili";
		} else
			return "girisbasarisiz";
	}

}