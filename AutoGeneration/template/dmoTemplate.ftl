package ;

public class ${className?cap_first} {

	<#list columnMap?keys as key>
	private String ${key};
		
	</#list>
	<#list columnMap?keys as key>
	
	public String get${key?cap_first}() {
		return ${key};
    }
    
	public void set${key?cap_first}(String ${key}) {
		this.${key} = ${key};
    }
	</#list>

}
