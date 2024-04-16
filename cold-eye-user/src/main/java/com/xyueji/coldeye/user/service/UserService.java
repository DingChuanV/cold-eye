package com.xyueji.coldeye.user.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xyueji.coldeye.common.user.entity.UserEntity;


public interface UserService extends IService<UserEntity> {

    /**
     * 根据用户名查询用户
     *
     * @param username
     * @return
     * @throws Exception
     */
    public UserEntity getUserByName(String username) throws Exception;
}
