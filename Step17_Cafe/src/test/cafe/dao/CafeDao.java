package test.cafe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import test.cafe.dto.CafeDto;
import test.mybatis.SqlMapConfig;

public class CafeDao {
	private static CafeDao dao;
	private static SqlSessionFactory factory;
	private CafeDao(){}
	public static CafeDao getInstance(){
		if(dao==null){
			dao=new CafeDao();
			factory=SqlMapConfig.getSqlSession();
		}
		return dao;
	}
	//전체 글의 갯수를 리턴하는 메소드
	public int getCount() {
		SqlSession session=null;
		int count=0;
		try {
			session=factory.openSession();
			count=session.selectOne("cafe.getCount");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return count;
	}
	
	//글정보를 수정하는 메소드
	public void update(CafeDto dto) {
		SqlSession session=null;
		try {
			session=factory.openSession(true);
			session.update("cafe.update", dto);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
	
	//글정보를 삭제하는 메소드
	public void delete(int num) {
		SqlSession session=null;
		try {
			session=factory.openSession(true);
			session.delete("cafe.delete", num);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
	
	//글정보를 리턴해주는 메소드
	public CafeDto getData(int num) {
		SqlSession session=null;
		CafeDto dto=null;
		try {
			session=factory.openSession();
			/*
			 *  Mapper namespace : cafe
			 *  sql id : getData
			 *  parameterType : int
			 *  resultType : CafeDto
			 */
			dto=session.selectOne("cafe.getData", num);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return dto;
	}
	
	//조회수를 1 증가 시키는 메소드
	public void increaseViewCount(int num) {
		SqlSession session=null;
		try {
			session=factory.openSession(true);
			session.update("cafe.increaseViewCount", num);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}	
	}
	
	
	//글목록을 리턴해주는 메소드
	/*
	 *  인자로 전달된 CafeDto 에는 startRowNum 과 endRowNum 이 
	 *  들어 있다. 이값을 이용해서 SELECT 한다. 
	 */
	public List<CafeDto> getList(CafeDto dto){
		SqlSession session=null;
		List<CafeDto> list=null;
		try {
			session=factory.openSession();
			/*
			 *  Mapper 의 namespace : cafe
			 *  sql id : getList
			 *  parameterType : CafeDto
			 *  resultType : CafeDto
			 */
			list=session.selectList("cafe.getList", dto);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}
	//글정보를 저장하는 메소드 
	public void insert(CafeDto dto) {
		SqlSession session=null;
		try {
			session=factory.openSession(true);
			session.insert("cafe.insert", dto);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
}























