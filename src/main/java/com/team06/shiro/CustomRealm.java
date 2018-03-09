package com.team06.shiro;

import com.team06.domain.Staff;
import com.team06.service.StaffService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;
import java.util.Set;

/**
 * Created by zmc on 18/2/28.
 */
public class CustomRealm extends AuthorizingRealm {

    @Resource
    StaffService staffService;

    /**
     * 权限
     **/
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
        /*1,获取认证通过的当前用户对象的用户名*/
        String staffName = (String) principal.getPrimaryPrincipal();

        /*2,根据用户名查询角色列表*/
        Set<String> roles = staffService.getRoles(staffName);

        /*3,根据用户名查询权限列表*/
        Set<String> permissions = staffService
                .getPermissions(staffName);

        /*4,构建授权信息对象*/
        SimpleAuthorizationInfo info = new
                SimpleAuthorizationInfo();

        /*5,给授权器添加角色和权限*/
        info.setRoles(roles);
        info.setStringPermissions(permissions);

        return info;


    }


    /**
     * 验证
     **/
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken token) throws AuthenticationException {


        //1.获取进行验证的用户名
        String staffUserName = (String) token.getPrincipal();

        Staff staff = staffService.selectByStaffName(staffUserName);


        if (staffUserName == null) {
            return null;
        }

        String staffPwd = staff.getStaffPwd();

        AuthenticationInfo info = new SimpleAuthenticationInfo(staff,staffPwd,this.getName());

        return info;

//        if (staffUserName != null) {
//            SimpleAuthenticationInfo info =
//                    new SimpleAuthenticationInfo(
//                            staff.getStaffUsername(),
//                            staff.getStaffPwd(),
//                            getName());
//            return info;
//        }


//        if (staff != null && staff1 != null) {
//            SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(
//                staff.getStaffUsername(),staff1.getStaffPwd(),getName());
//            return info;
//        }


    }
}
