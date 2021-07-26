package com.jiaxs.dev.githup.springboot.freemarker.framework.module.index.controller;

import com.jiaxs.dev.githup.springboot.freemarker.framework.bean.vo.R;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * @description
 * @author jiaxiansun
 * @createTime 2021/7/26 14:34
 * @version 1.0
 */
@Controller
public class IndexController {

    @RequestMapping("/")
    public String index(Model model, HttpServletRequest httpServletRequest){
        return "index";
    }

    @RequestMapping("/message")
    @ResponseBody
    public Object getMessage(HttpServletRequest httpServletRequest){
        String userName = httpServletRequest.getParameter("userName");
        if(null==userName||"".equals(userName)){
            R.error("userName can not be empty");
        }
        return R.suceess(String.format("Hello %s !", userName));
    }
}
