package ;

import java.util.List;
import java.util.Map;

public interface ${className?cap_first}Dao {

	List<Object> select(${className?cap_first} ${className});

	int insert(${className?cap_first} ${className});
	
	int update(${className?cap_first} ${className});
	
	int delete(${className?cap_first} ${className});

}
