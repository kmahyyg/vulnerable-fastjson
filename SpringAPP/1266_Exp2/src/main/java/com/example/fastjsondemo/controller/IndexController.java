package com.example.fastjsondemo.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.ParserConfig;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexController {
    @RequestMapping("/index")
    public String ShowIndex(){
        return "Hello! FastJSON Here!";
    }

    @RequestMapping("/parseObj")
    protected String ParseObj(@RequestBody String body) {
        ParserConfig.getGlobalInstance().setAutoTypeSupport(true);
        try {
            Object obj = JSON.parseObject(body);
            return obj.toString();
        } catch (Exception e){
            e.printStackTrace();
            return e.toString();
        }
    }

    @RequestMapping("/parseTxt")
    protected String ParseTxt(@RequestBody String body){
        ParserConfig.getGlobalInstance().setAutoTypeSupport(true);
        try {
            Object obj = JSON.parse(body);
            return obj.toString();
        } catch (Exception e){
            e.printStackTrace();
            return e.toString();
        }
    }
}
