package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.JoMapper;
import vo.JoVO;


@Service
public class JoServiceImpl implements JoService {

	@Autowired
	JoMapper mapper; // Mybatis 적용 후
	
	// ** selectList
	@Override
	public List<JoVO> selectList() {
		return mapper.selectList();
	}

	// ** selectOne
	@Override
	public JoVO selectOne(JoVO vo) {
		return mapper.selectOne(vo);
	}

	// ** Insert
	@Override
	public int insert(JoVO vo) {
		return mapper.insert(vo);
	}

	// ** Update
	@Override
	public int update(JoVO vo) {
		return mapper.update(vo);
	}

	// ** Delete
	@Override
	public int delete(JoVO vo) {
		return mapper.delete(vo);
	}

} // class
