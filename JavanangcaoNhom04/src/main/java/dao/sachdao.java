package dao;

import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach(){
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		ds.add(new sachbean("s1","Trải Nghiệm & Khát Vọng Cuộc Sống", "Le nam", 10, 120000, "b1.jpg", "tin"));
		ds.add(new sachbean("s2","Bí Mật của May Mắn", "Le nam", 10, 150000, "b2.jpg", "tin"));
		ds.add(new sachbean("s3","Chắp Cánh Tuổi Thơ", "Le tu", 10, 140000, "b3.jpg", "tin"));
		ds.add(new sachbean("s4","Hạt Giống Yêu Thương", "Le tu 2", 10, 100000, "b4.jpg", "toan"));
		ds.add(new sachbean("s5","Giá Trị Cuộc Sống", "Le thap", 10, 70000, "b5.jpg", "toan"));
		ds.add(new sachbean("s6","Hãy Yêu Cuộc Sống Bạn Chọn", "Le sinh", 10, 190000, "b6.jpg", "ly"));
		return ds;
	}
}	
