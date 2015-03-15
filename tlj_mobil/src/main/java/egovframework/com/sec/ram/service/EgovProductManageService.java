package egovframework.com.sec.ram.service;

import java.util.ArrayList;


public interface EgovProductManageService {

	void insert1() throws Exception;

	ProductOderVO productBarcodeSelect(ProductOderVO productOderVO) throws Exception;

	StoreDataVO storeDataSelect() throws Exception;

	ArrayList<ProductListVO> productListSelect() throws Exception;
}
