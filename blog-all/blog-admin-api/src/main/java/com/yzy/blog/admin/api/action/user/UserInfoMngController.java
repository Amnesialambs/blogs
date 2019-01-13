package com.yzy.blog.admin.api.action.user;


import com.yzy.blog.db.domain.TmUser;
import com.yzy.blog.db.service.UserInfoMngService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/userinfomngcontroller")
public class UserInfoMngController {


    @Resource
    private UserInfoMngService userInfoMngService;

    @RequestMapping(method= RequestMethod.GET)
    public List<TmUser> queryVo(@RequestParam Map<String,String> queryParam){

        return userInfoMngService.queryVo(0,10);
    }


   
}
