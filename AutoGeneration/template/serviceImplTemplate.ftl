package ;

import java.util.List;
import java.util.Map;

@Service
@Transactional(rollbackFor = Exception.class)
public class ${className?cap_first}ServiceImpl implements ${className?cap_first}Service {
	
	@Autowired
	${className?cap_first}Dao ${className}Dao;
	
	public List<Object> select(${className?cap_first} ${className}){
		return ${className}Dao.select(${className});
	}

	public int insert(${className?cap_first} ${className}){
		return ${className}Dao.insert(${className});
	}
	
	public int update(${className?cap_first} ${className}){
		return ${className}Dao.update(${className});
	}
	
	public int delete(${className?cap_first} ${className}){
		return ${className}Dao.delete(${className});
	}

}
