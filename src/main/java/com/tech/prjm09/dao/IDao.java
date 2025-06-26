package com.tech.prjm09.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.tech.prjm09.dto.BDto;

@Mapper
public interface IDao {
	public ArrayList<BDto> list();
	public void write(String bname, String btitle,
			String bcontent);
	public BDto contentView(String sbid);
	public BDto modifyView(String sbid);
	public void modify(String bid,String bname,
			String btitle,String bcontent);
	public BDto replyView(String sbid);
	public void reply(String bid, String bname, String btitle, String bcontent, 
			String bindent, String bgroup, String bstep);
	public void replyShape(String strgroup, String strstep);
	public void delete(String sbid);
}
