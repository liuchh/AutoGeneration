package ;

import java.util.List;
import java.util.Map;

@Repository
public class ${className?cap_first}DaoImpl implements ${className?cap_first}Dao {
	
	/* sql ”Ôæ‰ */
	private static final String SELECT = "select";
	private static final String INSERT = "insert";
	private static final String UPDATE = "update";
	private static final String DELETE = "delete";
	
	private SqlSessionTemplate sqlSession;
	
	@Resource
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	/**
	 * ”≥…‰sqlid
	 */
	@SuppressWarnings("rawtypes")
	private String getStatementId(Class entityClass, String suffix) {
		String sqlStr = entityClass.getName() + "." + suffix;
		return sqlStr;
	}
	
	public List<Object> select(${className?cap_first} ${className}){
		String sql = this.getStatementId(${className?cap_first}.class, SELECT);
		return sqlSession.selectList(sql, ${className});
	}

	public int insert(${className?cap_first} ${className}){
		String sql = this.getStatementId(${className?cap_first}.class, INSERT);
		return this.sqlSession.insert(sql, ${className});
	}
	
	public int update(${className?cap_first} ${className}){
		String sql = this.getStatementId(${className?cap_first}.class, UPDATE);
		return this.sqlSession.update(sql, ${className});
	}
	
	public int delete(${className?cap_first} ${className}){
		String sql = this.getStatementId(${className?cap_first}.class, DELETE);
		return sqlSession.delete(sql, ${className});
	}

}
