/**
 * Project Name:XMAP
 * File Name:DescriptionService.java
 * Package Name:cn.java.service
 * Date:2019年4月30日下午1:11:11
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;

import cn.java.dto.Description;

/**
 * Description: <br/>
 * Date: 2019年4月30日 下午1:11:11 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
public interface DescriptionService {
    int deleteByPrimaryKey(Integer id);

    int insert(Description record);

    int insertSelective(Description record);

    Description selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Description record);

    int updateByPrimaryKey(Description record);
}
