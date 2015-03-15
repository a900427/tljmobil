package egovframework.com.sec.ram.web;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import egovframework.com.cmm.SessionVO;
import egovframework.com.sec.ram.service.EgovProductManageService;
import egovframework.com.sec.ram.service.ProductListVO;
import egovframework.com.sec.ram.service.ProductOderVO;
import egovframework.com.sec.ram.service.StoreDataVO;

@Controller
@SessionAttributes(types=SessionVO.class)
public class EgovProductManageController {

	@Resource(name = "egovProductManageService")
    private EgovProductManageService egovProductManageService;
	
	/**
	 * 작성자 : 송희윤
	 * 작성일 : 2014.02.06
	 * 설명   : 회원가입페이지 이동
	 */
	@RequestMapping("/TljJoin.do")
	public String test(ModelMap model) {
		return "egovframework/com/tlj/join/TljJoin";
	}
	
	/**
	 * 작성자 : 송희윤
	 * 작성일 : 2014.02.06
	 * 설명   : 쿠폰조회
	 */
	@RequestMapping("/couponsel.do")
	public String coupon(HttpServletRequest req, ModelMap model, ProductOderVO productOderVO, StoreDataVO storeDataVO) {
		
		String barcodeNumber = req.getParameter("bar");
		productOderVO.setPROD_BARCODE(barcodeNumber);
		
		 /* 작성자 : 송희윤
		 * 작성일 : 2015.02.19
		 * 설명   : [바코드 사용여부 & 바코드 조회결과]가 없을경우 barcodeNumber = use 코드입력.
		 * 
		 * 
		 * 
		 * 현재는 테스트 코드.
		 * 임의로 null일 경우 use 코드 전송.
		 
		if(barcodeNumber == null){
			barcodeNumber = "use";
		}*/
		
		/*try {
			egovProductManageService.insert1();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		try{
			productOderVO = egovProductManageService.productBarcodeSelect(productOderVO);
			storeDataVO = egovProductManageService.storeDataSelect();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("barcodeNumber",barcodeNumber);
		model.addAttribute("productOderVO",productOderVO);
		model.addAttribute("storeDataVO",storeDataVO);
		return "egovframework/com/tlj/barcode/coupon";
	}
	
	/**
	 * 작성자 : 송희윤
	 * 작성일 : 2014.02.06
	 * 설명   : 영수증발급페이지 이동
	 */
	@RequestMapping("/couponCreation.do")
	public String couponCreation(ModelMap model) {
		String product_name = "";
		try {
			ArrayList<ProductListVO> productList = egovProductManageService.productListSelect();
			for (ProductListVO productListVO : productList) {
				product_name += "'"+productListVO.getPROD_NAME()+"',";
			}
			model.addAttribute("productList",product_name);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "egovframework/com/tlj/admin/couponCreation";
	}
	
	/**
	 * 작성자 : 송희윤
	 * 작성일 : 2014.03.14
	 * 설명   : 영수증확인 페이지로 이동.
	 */
	@RequestMapping("/couponCheck.do")
	public String couponCheck(ModelMap model) {
		return "egovframework/com/tlj/admin/couponCheck";
	}
	
	/**
	 * 작성자 : 송희윤
	 * 작성일 : 2014.02.06
	 * 설명   : 뚜레쥬르 공식홈페이지 이벤트&멤버십 안내페이지로 이동 [iframe]
	 */
	@RequestMapping("/membership.do")
	public String membership(ModelMap model) {
		return "egovframework/com/tlj/official/membership";
	}
	
	
	
}
