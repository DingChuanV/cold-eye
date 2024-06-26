package com.xyueji.coldeye.user.controller;

import com.xyueji.coldeye.common.user.entity.UserEntity;
import com.xyueji.coldeye.common.user.entity.UserTokenEntity;
import com.xyueji.coldeye.common.user.entity.UserVo;
import com.xyueji.coldeye.common.utils.ResultResp;
import com.xyueji.coldeye.user.service.UserService;
import com.xyueji.coldeye.user.service.UserTokenService;
import org.apache.http.HttpStatus;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;


@RestController
@RequestMapping("sys/user")
public class UserController {

    @Resource
    private UserService userService;

    @Autowired
    private UserTokenService userTokenService;

    /**
     * @api {post} sys/user/login 登录
     * @apiDescription 登录
     * @apiParam  {String} username 用户名
     * @apiParam  {String} password 密码
     * @apiGroup UserController
     * @apiParamExample {json} 请求示例:
     * {
     *  "username": "admin",
     *  "password": "admin123"
     * }
     * @apiSuccessExample {json} 成功响应:
     * HTTP/1.1 200 OK
     * {
     *   "status": 200,
     *   "data": {
     *     "userId": 1,
     *     "token": "16d6d32e087895ac8679fa6878dce80e",
     *     "expireTime": "2021-02-02 07:41:20",
     *     "updateTime": "2021-02-01 19:41:20"
     *   }
     * }
     * @apiVersion 1.0.0
     */
    @PostMapping("login")
    public ResultResp login (@RequestBody UserVo userVo) throws Exception {
        UserEntity userEntity = userService.getUserByName(userVo.getUsername());

        if (userEntity == null || ! userEntity.getPassword().equals(new Sha256Hash(userVo.getPassword(), userEntity.getSalt()).toHex())) {
            return new ResultResp(HttpStatus.SC_FORBIDDEN, "用户名或密码错误");
        }

        return userTokenService.createToken(userEntity.getUserId());
    }

    /**
    * @api {POST} sys/user/getToken 获取token
    * @apiDescription 获取token
    * @apiGroup UserController
    * @apiHeader {String} token=token
    *
    * @apiParamExample {json} 请求示例:
    * {
    *
    * }
    * @apiSuccessExample {json} 成功响应:
    * HTTP/1.1 200 OK
    * {
    *   "userId": 1,
    *   "token": "16d6d32e087895ac8679fa6878dce80e",
    *   "expireTime": "2021-02-02 07:41:20",
    *   "updateTime": "2021-02-01 19:41:20"
    * }
    * @apiVersion 1.0.0
    */
    @PostMapping("getToken")
    public UserTokenEntity getToken(@RequestHeader( value = "token") String token) throws Exception{
        return userTokenService.getToken(token);
    }

    /**
    * @api {POST} sys/user/logout 登出
    * @apiDescription 登出
    * @apiGroup UserController
    * @apiHeader {String} name=desc
    *
    * @apiParamExample {json} 请求示例:
    * {
    *
    * }
    * @apiSuccessExample {json} 成功响应:
    * HTTP/1.1 200 OK
    * {
    *   "status": 200,
    *   "data": "登出成功"
    * }
    * @apiVersion 1.0.0
    */
    @PostMapping("logout")
    public ResultResp logout(@RequestHeader( value = "token") String token) throws Exception {
        userTokenService.logout(token);
        return ResultResp.success("登出成功");
    }

    /**
    * @api {POST} sys/user/info 用户信息
    * @apiDescription 用户信息
    * @apiGroup UserController
    *
    * @apiParamExample {json} 请求示例:
    * {
    *
    * }
    * @apiSuccessExample {json} 成功响应:
    * HTTP/1.1 200 OK
    * {
    *   "status": 200,
    *   "data": {
    *     "logintime": "",
    *     "phone": "",
    *     "name": "admin",
    *     "company": "月迹",
    *     "avatar": "",
    *     "username": "admin"
    *   }
    * }
    * @apiVersion 1.0.0
    */
    @GetMapping("info")
    public ResultResp info() throws Exception{
        UserEntity user = userService.getUserByName("admin");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("name", user.getUsername());
        map.put("company", "月迹");
        map.put("phone", "");
        map.put("avatar", "");
        map.put("username", user.getUsername());
        map.put("logintime", "");
        return ResultResp.success(map);
    }
}
