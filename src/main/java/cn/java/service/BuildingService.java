/**
 * Project Name:XMAP
 * File Name:BuildingService.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月16日上午2:35:21
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;

import cn.java.dto.Building;

/**
 * Description: <br/>
 * Date: 2019年4月16日 上午2:35:21 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
public interface BuildingService {
    int deleteByPrimaryKey(Integer id);

    int insert(Building record);

    int insertSelective(Building record);

    Building selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Building record);

    int updateByPrimaryKey(Building record);
}
