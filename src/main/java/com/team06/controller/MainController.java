package com.team06.controller;

import com.team06.domain.*;
import com.team06.domain.Process;
import com.team06.service.*;
import com.team06.service.DepService;
import com.team06.service.ProService;
import com.team06.service.StaffService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/2.
 */
@Controller
public class MainController {

    @Resource
    private StaffService staffService;

    @RequestMapping(value = {"","/"})
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/home")
    public String home(Staff staff){
        //        if (user.getUsername().equals("123456") && user.getPassword().equals("654321")){
//            return "lodding";
//        }
//        return "index";

        System.out.println("表单提交"+staff);
        //1.获得当前对象
        Subject currentStaff = SecurityUtils.getSubject();

        //2.创建用户名密码令牌
        UsernamePasswordToken token = new UsernamePasswordToken(
                staff.getStaffUsername(),staff.getStaffPwd());

        //3.进行shiro认证
        try {
            currentStaff.login(token);
        }catch (AuthenticationException e){
            e.printStackTrace();
            return "index";
        }
        return "lodding";
    }

    @RequestMapping(value = "/main")
    public String main(){
        return "home";
    }

    @RequestMapping(value = "/welcome")
    public String welcome(){
        return "welcome";
    }

    @RequestMapping(value = "/personCenter")
    public String personCenter(){
        return "personCenter";
    }

    @RequestMapping(value = "/projectBase")
    public String projectBase(){
        return "project_base";
    }

    @RequestMapping(value = "/projectOther")
    public String projectOther(){
        return "project_other";
    }

    @RequestMapping(value = "/selectDep")
    public String selectPerson(){
        return "selectDep";
    }

    @RequestMapping(value = "/chooseDept")
    public String chooseDept(){
        return "chooseDept";
    }

    @RequestMapping(value = "/contractFlowReport")
    public String contractFlowReport(){
        return "contractFlow_report";
    }

    @RequestMapping(value = "/technicalManager")
    public String technicalManager(){
        return "technical_manager";
    }

    @RequestMapping(value = "/applyTable")
    public String applyTable(){
        return "applyTable";
    }

    @RequestMapping(value = "/integratedQuery")
    public String integratedQuery(){
        return "integrated_query";
    }

    @RequestMapping(value = "/satellite")
    public String satellite(){
        return "satellite";
    }

    @RequestMapping(value = "/crew")
    public String crew(){
        return "crew";
    }

    @RequestMapping(value = "/plant")
    public String plant(){
        return "plant";
    }

    @RequestMapping(value = "/contractApproval")
    public String contractApproval(){
        return "contract_approval";
    }

    @RequestMapping(value = "/radiography")
    public String radiography(){
        return "radiography";
    }

    @RequestMapping(value = "/examine")
    public String examine(){
        return "examine";
    }

    @RequestMapping(value = "/addCrew")
    public String addCrew(){
        return "addCrew";
    }

    @RequestMapping(value = "/addPlant")
    public String addPlant(){
        return "addPlant";
    }

    @RequestMapping(value = "/addRadiography")
    public String addRadiography(){
        return "addRadiography";
    }

    @RequestMapping(value = "/addSatellite")
    public String addSatellite(){
        return "addSatellite";
    }

    // 查询部门

    @Resource
    private DepService depService;

    @RequestMapping(value = "/selectDept")
    @ResponseBody
    public BaseResult<Department> selectDep(int pageIndex,
                                            int pageSize,
                                            Department department){

        BaseResult<Department> baseResult = depService.selectDep(pageIndex+1,pageSize,department);
        return baseResult;

    }

    // 待办页面查询待办流程表
    @Resource
    private ProService proService;

    @RequestMapping(value = "/selectAllPro")
    @ResponseBody
    public BaseResult<Process> selectAllPro(int pageIndex,
                                            int pageSize,
                                            Process process){
        BaseResult<Process> baseResult = proService.selectAllPro(process,pageIndex+1,pageSize);
        System.out.println(process.getApplyTime());
        System.out.println(process.getProName());
        return baseResult;
    }











    @RequestMapping(value = "/choosePerson")
    public String choosePerson(){
        return "choosePerson";
    }

    /*获取人员表数据，用于前端页面表格显示
    * 返回数据以json格式返回*/
    @RequestMapping(value = "/selectStaff")
    @ResponseBody
    public BaseResult<Staff> selectStaff() {

        List<Staff> staffs = staffService.selectPerson();

        /*将查询到的结果集进行封装*/
        BaseResult<Staff> result = new BaseResult<Staff>();
        result.setTotal(100);//设置条数
        result.setData(staffs);

        return result;

    }

    // 已办页面查询已办流程表
    @Resource
    private ProDoneService proDoneService;

    @RequestMapping(value = "/selectAllProd")
    @ResponseBody
    public BaseResult<ProcessDone> selectAllProd(ProcessDone processDone,
                                                 int pageIndex,
                                                 int pageSize){
        BaseResult<ProcessDone> baseResult = proDoneService.selectAllProd(processDone,pageIndex,pageSize);
        return baseResult;

    }

    @Resource
    private SatelliteMngService satelliteMngService;

    @RequestMapping(value = "/selectAllSatellite")
    @ResponseBody
    public BaseResult<SatelliteManager> selectAllSatellite(SatelliteManager satelliteManager,
                                                           int pageIndex,
                                                           int pageSize){
        BaseResult<SatelliteManager> baseResult = satelliteMngService.selectAllSatellite(satelliteManager,pageIndex,pageSize);
        return baseResult;
    }

    @Resource
    private PlantService plantService;

    @RequestMapping(value = "/selectAllPlant")
    @ResponseBody
    public BaseResult<Plant> selectAllPlant(Plant plant,
                                            int pageIndex,
                                            int pageSize){
        BaseResult<Plant> baseResult = plantService.selectAllPlant(plant,pageIndex,pageSize);
        return baseResult;
    }

    @Resource
    private CrewService crewService;

    @RequestMapping(value = "/selectAllCrew")
    @ResponseBody
    public BaseResult<Crew> selectAllCrew(Crew crew,
                                          int pageIndex,
                                          int pageSize){
        BaseResult<Crew> baseResult = crewService.selectAllCrew(crew,pageIndex,pageSize);
        return baseResult;
    }
}
