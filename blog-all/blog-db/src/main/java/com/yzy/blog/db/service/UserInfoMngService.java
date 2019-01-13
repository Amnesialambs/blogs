package com.yzy.blog.db.service;

import com.yzy.blog.db.dao.TmUserMapper;
import com.yzy.blog.db.domain.TmUser;
import com.yzy.blog.db.domain.TmUser.Column;
import com.yzy.blog.db.domain.example.TmUserExample;

import javax.annotation.Resource;
import java.util.List;

public class UserInfoMngService {

    @Resource
    private TmUserMapper userMapper;
    private Column[] columns = new Column[]{Column.userId,Column.userName,Column.status,Column.lastLoginIp,Column.lastLoginTime};
     public List<TmUser> queryVo(int offset, int limit){
        TmUserExample userExample = new TmUserExample();
        userExample.or().andDeletedEqualTo(0);
        return userMapper.selectByExampleSelective(userExample,columns);
    }
}
