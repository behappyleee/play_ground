package com.spring.play.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.play.VO.ProductVO;
import com.spring.play.persistence.HostDAO;

@Service
public class HostServiceImpl implements HostService {

	@Autowired
	HostDAO dao;
	
	@Override
	public void inventory_add (MultipartHttpServletRequest req, Model model) {
		System.out.println("Product SVC");
		MultipartFile file = req.getFile("product_image");
		
		String saveDir = req.getRealPath("/resources/images/");  
		
		String realDir = "D:\\workspace\\springKosmoPJ\\src\\main\\webapp\\resources\\images"; // 저장경로
		
		try { 
			file.transferTo(new File (saveDir + file.getOriginalFilename()));
			
			FileInputStream fis = new FileInputStream(saveDir + file.getOriginalFilename());
			FileOutputStream fos = new FileOutputStream(realDir + file.getOriginalFilename());
			
			int data = 0;
			
			while((data = fis.read()) != -1) {
				fos.write(data);
			}
			
			fis.close();
			fos.close();
			
			ProductVO vo = new ProductVO ();
			
			String sale_productCode = req.getParameter("sale_productCode");
			String product_name = req.getParameter("product_name");
			String product_price = req.getParameter("product_price");
			String product_count = req.getParameter("product_count");
			String product_size = req.getParameter("product_size");
			String product_description = req.getParameter("product_description");
			String image_url = file.getOriginalFilename();
			
			vo.setSale_productCode(Integer.parseInt(sale_productCode));
			vo.setProduct_name(product_name);
			vo.setProduct_price(Integer.parseInt(product_price));
			vo.setProduct_count(Integer.parseInt(product_count));
			vo.setProduct_size(Integer.parseInt(product_size));
			vo.setProduct_description(product_description);
			vo.setImage_url(image_url);
			
			int insertCnt = dao.inventory_add(vo);
			
			model.addAttribute("insertCnt", insertCnt);
			
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		
	}

	
}
