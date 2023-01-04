package kr.go.puac.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.puac.dto.QnaDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<QnaDTO> QnaList() throws Exception {
		return sqlSession.selectList("qna.qnaList");
	}
	
	
}