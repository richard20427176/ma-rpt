package com.test.marpt.common.components.shiro;

import com.test.marpt.common.components.shiro.service.ShiroMockService;
import com.test.marpt.common.constants.ShiroConstant;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;


/**
 * 自定义Realm
 * 实际上是一个验证用户身份和权限Dao
 * Created by James at 2018/11/2 10:54
 **/
@Component(value = "rptShiroRealm")
public class RptShiroRealm extends AuthorizingRealm {

    /**
     * @param authenticationToken
     * @return
     * @throws AuthenticationException S
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String userName = token.getPrincipal().toString();

        if (StringUtils.isNotBlank(userName)) {
            SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                    userName,
                    ShiroMockService.getPasswordByUsername(userName),
                    ByteSource.Util.bytes(userName),
                    getName()
            );

            return authenticationInfo;
        }

        return null;
    }

    /**
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();

        return authorizationInfo;
    }

    @PostConstruct
    public void initCredentialsMatcher() {
        HashedCredentialsMatcher matcher = new HashedCredentialsMatcher(ShiroConstant.HASH_ALGORITHM);
        matcher.setHashIterations(ShiroConstant.HASH_INTERATIONS);
        matcher.setStoredCredentialsHexEncoded(ShiroConstant.STORED_CREDENTIALS_HEX_ENCODED);

        setCredentialsMatcher(matcher);
    }
}
