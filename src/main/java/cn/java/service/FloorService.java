/**
 * Project Name:XMAP
 * File Name:FloorService.java
 * Package Name:cn.java.service
 * Date:2019年5月4日下午9:09:09
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;

import cn.java.dto.Floor;

/**
 * Description: <br/>
 * Date: 2019年5月4日 下午9:09:09 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
public interface FloorService {
    int deleteByPrimaryKey(Integer id);

    int insert(Floor record);

    int insertSelective(Floor record);

    Floor selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Floor record);

    int updateByPrimaryKey(Floor record);
}
