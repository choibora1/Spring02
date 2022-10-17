package mapperInterface;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import criTest.SearchCriteria;
import vo.MemberVO;

public interface MemberMapper {

	//Junit Test
	int totalCount();
	// @으로 SQL 구문 처리 (Mapper.xml 필요없음)
	@Select("select * from member where id != 'admin' ")
	List<MemberVO> selecrList2();
	
	// SearchCriteria PageList
	List<MemberVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	// selectList
	List<MemberVO> selectList();

	// selectOne
	MemberVO selectOne(MemberVO vo);

	// Insert (입력)
	int insert(MemberVO vo);

	// update(수정)
	int update(MemberVO vo);

	// delete(삭제)
	int delete(MemberVO vo);

} // interface
