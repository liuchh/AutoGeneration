<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//ibatis.apache.org//DTD Mapper 3.0//EN"
"http://ibatis.apache.org/dtd/ibatis-3-mapper.dtd">
<mapper namespace="TODO:${className?cap_first}">

	<resultMap id="${className}" type="TODO:${className?cap_first}">
	<#list columnMap?keys as key>
		<result column="${columnMap[key]}" property="${key}" />
	</#list>
	</resultMap>

	<select id="select" parameterType="TODO:${className?cap_first}"
		resultMap="${className}">
		SELECT
		<#list columnMap?keys as key>
		<#if (key_index > 0) >,</#if> ${columnMap[key]}
		</#list>
		FROM
		${tableName}
		<where>
			<if test="shopId != null and shopId != '' ">
				shop_id = ${r'#{shopId}'}
			</if>
		</where>
	</select>
	
	<insert id="insert" parameterType="TODO:${className?cap_first}"
		useGeneratedKeys="true" keyProperty="id">
    <![CDATA[
        INSERT INTO
        ${tableName} (
        <#list columnMap?keys as key>
		<#if (key_index > 0) >,</#if> ${columnMap[key]}
		</#list>
        ) VALUES (
        <#list columnMap?keys as key>
		<#if (key_index > 0) >,</#if>  ${r'#{'}${key}${r'}'}
		</#list>
        )
    ]]>
	</insert>
	
	<update id="update" parameterType="TODO:${className?cap_first}">
		UPDATE ${tableName} 
		<set>
		<#list columnMap?keys as key>
		<if test="${key} != null and ${key} != '' ">
			${columnMap[key]} = ${r'#{'}${key}${r'}'},
		</if>
		</#list>
		</set>
		<where>
			id = ${r'#{id}'} 
		</where>
	</update>
	
	<delete id="delete" parameterType="TODO:${className?cap_first}">
		DELETE FROM ${tableName} 
		<where>
			id = ${r'#{id}'} 
		</where>
	</delete>
	