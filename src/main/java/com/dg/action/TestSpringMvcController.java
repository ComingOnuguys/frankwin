package com.dg.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dg.bean.Menu;

@Controller
public class TestSpringMvcController {

    @RequestMapping("getList")
    public void getList(@RequestBody Menu menu){
        System.out.println("menu:" + menu);
    }
}
