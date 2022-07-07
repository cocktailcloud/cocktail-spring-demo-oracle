package com.example.doosan.demo.controller;

import com.example.doosan.demo.service.CodeService;
import com.example.doosan.demo.service.DoosanDemoService;
import com.example.doosan.demo.vo.CodeVO;
import com.example.doosan.framework.properties.DoosanDBProperties;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping(value = "/view")
public class DoosanDemoController {

    @Autowired
    private DoosanDemoService doosanDemoService;

    @Autowired
    private DoosanDBProperties doosanDBProperties;


    @GetMapping("/hello")
    public String hello(Model model, @RequestParam(value = "name", required = false, defaultValue = "World") String name) {
        model.addAttribute("name", name);
        return "hello";
    }

    @GetMapping("/health")
    public String health(Model model) {
        SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Date time = new Date();

        String time1 = format1.format(time);

        model.addAttribute("health", "서버 현재 시간은 : " + time1 + " 입니다.");
        return "health";
    }


    @GetMapping("/jmeter")
    public String jmeter(Model model) {
        this.printDBInfo();

        List<Map<String, Object>> codes = doosanDemoService.getCodes2();
        model.addAttribute("codes", codes);
        return "jmeter";
    }

    @GetMapping("/kaist")
    public String kaist(Model model) {
        this.printDBInfo();
        List<Map<String, Object>> codes = doosanDemoService.getCsiSite();
        model.addAttribute("codes", codes);
        return "sitecd";
    }

    @GetMapping("/demo/{groupId}")
    public String viewDemo(@PathVariable String groupId, Model model) {

        SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date time = new Date();
        String time1 = format1.format(time);

        List<Map<String, Object>> codes = doosanDemoService.getCodeParam(groupId);
        model.addAttribute("codes", codes);
        model.addAttribute("health", "서버 현재 시간은 : " + time1 + " 입니다.");

        return "viewDemo";
    }

    @GetMapping("/show/{groupId}")
    public String viewDeviceDemo(@PathVariable String groupId, Model model) {

        SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date time = new Date();
        String time1 = format1.format(time);
        model.addAttribute("health", "서버 현재 시간은 : " + time1 + " 입니다.");

        List<Map<String, Object>> codes = doosanDemoService.getCodeParam(groupId);
        model.addAttribute("codes", codes);

        List<Map<String, Object>> fixCodes = doosanDemoService.getCodes2();
        model.addAttribute("fixCodes", fixCodes);

        List<Map<String, Object>> devices = doosanDemoService.getDevices();
        model.addAttribute("devices", devices);

        int threadCount = java.lang.Thread.activeCount();
        model.addAttribute("threadCount", threadCount);


        return "deviceDemo";
    }

    private void printDBInfo() {
        log.info("====================================");
        log.info("DB URL : " + doosanDBProperties.getUrl());
        log.info("DB User : " + doosanDBProperties.getUserName());
        log.info("DB URL : " + doosanDBProperties.getPassword());
        log.info("====================================");
    }
}