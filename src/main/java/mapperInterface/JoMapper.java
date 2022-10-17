package mapperInterface;

import java.util.List;

import vo.JoVO;

public interface JoMapper {
	
	// selectList
	List<JoVO> selectList();

	// selectOne
	JoVO selectOne(JoVO vo);

	// Insert (입력)
	int insert(JoVO vo);

	// update(수정)
	int update(JoVO vo);

	// delete(삭제)
	int delete(JoVO vo);

} // interface
