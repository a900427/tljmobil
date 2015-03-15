package egovframework.com.sec.ram.service.impl;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.com.sec.ram.service.ProductListVO;
import egovframework.com.sec.ram.service.ProductOderVO;
import egovframework.com.sec.ram.service.StoreDataVO;

@Repository("egovProductManageDAO")
public class EgovProductManageDAO extends EgovComAbstractDAO {

	public void insert() {
		insert("egovProductManageDAO.egovProductInsert");
	}

	public ProductOderVO productBarcodeSelect(ProductOderVO productOderVO) {
		return (ProductOderVO) select("egovProductManageDAO.egovProductBarcodeSelect",productOderVO);
	}

	public StoreDataVO storeDataSelect() {
		return (StoreDataVO) select("egovProductManageDAO.egovStoreDataSelect");
	}

	public ArrayList<ProductListVO> productListSelect() {
		return (ArrayList<ProductListVO>) list("egovProductManageDAO.egovProductListSelect");
	}

	
}
