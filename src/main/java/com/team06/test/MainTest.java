package com.team06.test;

import com.team06.domain.Department;
import com.team06.domain.Process;
import com.team06.domain.ProcessDone;
import com.team06.domain.SatelliteManager;
import com.team06.mapper.DepMapper;
import com.team06.mapper.ProMapper;
import com.team06.mapper.ProcessDoneMapper;
import com.team06.mapper.SatelliteManagerMapper;
import com.team06.page.PageBean;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by dllo on 18/2/27.
 */
public class MainTest {

    private ApplicationContext context;
    private DepMapper depMapper;
    private ProMapper proMapper;
    private ProcessDoneMapper doneMapper;
    private SatelliteManagerMapper satelliteManagerMapper;
    @Before
    public void init(){

        context = new ClassPathXmlApplicationContext("classpath*:spring-*.xml");
        depMapper = context.getBean(DepMapper.class);
        proMapper = context.getBean(ProMapper.class);
        doneMapper = context.getBean(ProcessDoneMapper.class);
        satelliteManagerMapper = context.getBean(SatelliteManagerMapper.class);
    }

    @Test
    public void depTest(){

        Department department = new Department();
        department.setDepName("技术");
        int count = depMapper.getTotalRecord(department);
        System.out.println(count);
        PageBean<Department> pageBean = new PageBean<Department>(1,3,count);
        department.setPageBean(pageBean);
        List<Department> list = depMapper.selectDep(department);
        System.out.println(list);

    }

    @Test
    public void processTest(){
        Process process = new Process();
//        process.setApplyTime("2018-02-08");
        int count = proMapper.getTotal(process);
        System.out.println(count);
        PageBean<Process> pageBean = new PageBean<Process>(1,3,count);
        process.setPageBean(pageBean);
        List<Process> processes = proMapper.selectAllPro(process);
        System.out.println(processes);


    }

    @Test
    public void processDoneTest(){
        ProcessDone processDone = new ProcessDone();
        processDone.setAppTime("2018-02-08");
        int count = doneMapper.getTotalRecord(processDone);
        System.out.println(count);
        PageBean<ProcessDone> pageBean = new PageBean<ProcessDone>(2,3,count);
        processDone.setPageBean(pageBean);
        List<ProcessDone> processDones = doneMapper.selectProcessDone(processDone);
        for (ProcessDone done : processDones) {
            System.out.println(done);
        }

    }

    @Test
    public void satelliteTest(){
        SatelliteManager satelliteManager = new SatelliteManager();
        satelliteManager.setSatelliteName("卫星库1");
        int count = satelliteManagerMapper.getSatTotal(satelliteManager);
        System.out.println(count);

    }



}
