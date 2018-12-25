package com.test.marpt.common.constants;

import org.apache.shiro.crypto.hash.Sha256Hash;

/**
 * Created by James at 2018/11/5 19:43
 **/
public class ShiroConstant {

    public static final String HASH_ALGORITHM                   = Sha256Hash.ALGORITHM_NAME;    //
    public static final Integer HASH_INTERATIONS                = 1000;                         //
    public static final Boolean STORED_CREDENTIALS_HEX_ENCODED  = Boolean.FALSE;
    public static final Integer SALT_SIZE                       = 8;                            //
}
