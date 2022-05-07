package com.alien.controller;

import com.alien.pojo.Product;
import com.alien.service.ClickTrackingService;
import com.alien.service.ProductService;
import com.alien.service.SimilarService;
import com.alien.utils.AccountSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@EnableAspectJAutoProxy(proxyTargetClass=true)
@Controller
public class ProductController {

    @Autowired
    @Qualifier("ProductServiceImpl")
    private ProductService productService;

    @Autowired
    @Qualifier("SimilarServiceImpl")
    private SimilarService similarService;

    @Autowired
    @Qualifier("ClickTrackingServiceImpl")
    private ClickTrackingService clickTrackingService;

    private AccountSession accountSession = new AccountSession();

    @RequestMapping("/product/{itemId}")
    public String product(@PathVariable("itemId") String itemId, Model model,  HttpServletRequest request) {


        //沒這商品ID
        Product product = productService.queryProduct(itemId);
        if (product == null) {
            return "redirect:/";
        }
        model.addAttribute(product);

        //點擊追蹤
        //判斷是否登入
        if (accountSession.haveAccountSession(request)) {
            //如果有登入，寫入sql
            String account = accountSession.getAccount(request);
            List<String> trackings = clickTrackingService.queryTracking(account);
            //如果追蹤裡有移除再寫入
            if (trackings.contains(itemId)) {
                clickTrackingService.deleteTracking(account,itemId);
                clickTrackingService.addTracking(account,itemId);
            } else {
                clickTrackingService.addTracking(account,itemId);
                //如果超過30個移除最舊的
                if (trackings.size() >= 30) {
                    clickTrackingService.deleteTracking(account,trackings.get(0));
                }
            }
        } else {
            //沒登入寫入session
            List<String> trackings = accountSession.getTracking(request);
            //
            if (trackings != null) {
                if (trackings.contains(itemId)) {
                    //如果追蹤裡有移除再寫入
                    accountSession.deleteTracking(request,itemId,trackings);
                    accountSession.addTracking(request,itemId,trackings);

                } else {
                    accountSession.addTracking(request,itemId,trackings);
                    //如果超過30個移除最舊的
                    if (trackings.size() >= 30) {
                        accountSession.deleteTracking(request,0,trackings);
                    }
                }
            } else {
                //如果沒session，設一個session
                accountSession.setTracking(request);
                //增加一個追蹤
                trackings = accountSession.getTracking(request);
                accountSession.addTracking(request,itemId,trackings);
            }

        }


        //5個相似商品
        List<Product> similarProducts = similarService.querySimilar5(itemId);
        model.addAttribute("similarProducts", similarProducts);

        //5個推薦商品



        return "product";
    }


}
