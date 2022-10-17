package dao;

import java.util.ArrayList;
import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai(){
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		ds.add(new loaibean("tin", "Công Nghệ Thông Tin"));
		ds.add(new loaibean("toan", "Toán Học"));
		ds.add(new loaibean("ly", "Vật Lý"));
		ds.add(new loaibean("hoa", "Hóa Học"));
		return ds;
	}
}
