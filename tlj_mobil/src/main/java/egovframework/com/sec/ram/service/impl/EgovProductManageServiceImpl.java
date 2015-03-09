package egovframework.com.sec.ram.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sec.ram.service.EgovProductManageService;
import egovframework.com.sec.ram.service.ProductOderVO;
import egovframework.com.sec.ram.service.StoreDataVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("egovProductManageService")
public class EgovProductManageServiceImpl extends EgovAbstractServiceImpl implements EgovProductManageService {

	@Resource(name="egovProductManageDAO")
    private EgovProductManageDAO egovProductManageDAO;
	
	/*
	 *  
	 */
	@Override
	public void insert1() throws Exception {
		egovProductManageDAO.insert();
	}

	@Override
	public ProductOderVO productBarcodeSelect(ProductOderVO productOderVO) throws Exception {
		return egovProductManageDAO.productBarcodeSelect(productOderVO);
	}

	@Override
	public StoreDataVO storeDataSelect() throws Exception {
		return egovProductManageDAO.storeDataSelect();
	}

}
