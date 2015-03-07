package egovframework.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.admin.service.EgovAdminService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


@Service("EgovAdminService")
public class EgovAdminServiceImpl extends EgovAbstractServiceImpl implements EgovAdminService {

    @Resource(name = "EgovAdminDAO")
    private EgovAdminDAO egovAdminDAO; 
    
    
   
}
