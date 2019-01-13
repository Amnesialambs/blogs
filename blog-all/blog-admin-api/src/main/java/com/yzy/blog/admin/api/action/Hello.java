package com.yzy.blog.admin.api.action;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/hello")
public class Hello {


    /**
     *
     * @param name
     * @return
     */
    @RequestMapping(value = "/sayHi",method = RequestMethod.GET)
    @ResponseBody
    public String sayHi(@RequestParam String name){
        return "你好，"+name + "新年快乐";
    }
}
