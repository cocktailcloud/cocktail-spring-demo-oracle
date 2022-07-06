package com.example.doosan.demo.controller;

import com.example.doosan.demo.service.CodeService;
import com.example.doosan.demo.vo.CodeVO;
import com.example.doosan.demo.vo.SubCodeVO;
import com.example.doosan.framework.properties.DoosanDBProperties;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Slf4j
@RestController
@RequestMapping(value = "/api/code")
public class CodeController {

    @Autowired
    private CodeService codeService;

    @Autowired
    private DoosanDBProperties doosanDBProperties;

    @GetMapping("/{groupId}")
    public List<CodeVO> getCodes(@PathVariable String groupId) throws Exception {
        StopWatch sw = new StopWatch();
        sw.start();
        List<CodeVO> result = codeService.getCodes(groupId);
        sw.stop();

        HttpServletRequest request = this.getCurrentRequest();
        String uuid = ""+request.getAttribute("tom-uuid");

        log.info(String.format("### [%s] getCode ended : ExecutionTime[ %ss ]", uuid, sw.getTotalTimeSeconds()));
        return result;
    }

    @GetMapping("/cpuload/{groupId}")
    public List<CodeVO> getCodesWithCpuLoad(@PathVariable String groupId) throws Exception {
        StopWatch sw = new StopWatch();
        sw.start();
        double x = 0.0001;
        String hostname = "";
        for(int i = 0; i <= 1000000; i++) {
            x += Math.sqrt(x);
        }

        try {
            hostname = InetAddress.getLocalHost().getHostName();
        }
        catch (UnknownHostException ex) {
            ex.printStackTrace();
        }

        List<CodeVO> result = codeService.getCodes(groupId);
        sw.stop();

        HttpServletRequest request = this.getCurrentRequest();
        String uuid = ""+request.getAttribute("tom-uuid");

        log.info(String.format("### [%s][%s] getCode ended : ExecutionTime[ %ss ]", uuid, hostname, sw.getTotalTimeSeconds()));
        return result;
    }


    @GetMapping("/wait/{groupId}")
    public List<CodeVO> getWaitCodes(@PathVariable String groupId) throws Exception {
        log.debug("[BEGIN] getCodes");

        Thread.sleep(doosanDBProperties.getSleepTime());
        List<CodeVO> result = codeService.getCodes(groupId);

        log.debug("[END  ] getCodes");
        return result;
    }

    @GetMapping("/waitTime/{groupId}")
    public List<CodeVO> getWaitTimeCodes(@PathVariable String groupId) throws Exception {
        log.debug("[BEGIN] getCodes");

        SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Date time = new Date();

        String time1 = format1.format(time);

        int threadCount = java.lang.Thread.activeCount();
        System.out.println("doosanDBProperties.getSleepTime() :" + doosanDBProperties.getSleepTime() + "threadCount:" + threadCount);
        Thread.sleep(doosanDBProperties.getSleepTime());

        List<CodeVO> result = codeService.getCodes(groupId);

        log.debug("[END  ] getCodes", time1);
        return result;
    }

    @GetMapping("/{groupId}/{subGroupId}")
    public List<SubCodeVO> getSubCodes(@PathVariable String groupId, @PathVariable String subGroupId) throws Exception {
        log.debug("[BEGIN] getSubCodes");

        List<SubCodeVO> result = codeService.getSubCodes(groupId, subGroupId);

        log.debug("[END  ] getSubCodes");
        return result;
    }

    public HttpServletRequest getCurrentRequest(){
        HttpServletRequest request = null;
        try {
            ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
            request = sra.getRequest();
        } catch (IllegalStateException e) {
            log.error("getCurrentRequest : IllegalStateException", e);
        }

        return request;
    }


}
