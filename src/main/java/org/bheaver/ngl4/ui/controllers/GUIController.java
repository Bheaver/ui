package org.bheaver.ngl4.ui.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class GUIController {

    @RequestMapping(path = "/index")
    public String getPage(@RequestBody(required = false) MultiValueMap<String, String> formData,
                          @CookieValue(required = false) String token) throws Exception{
        if(token!=null)
            return "index";
        return "login";

    }
    @RequestMapping(path = "/importCatalogue")
    public String getImport() throws Exception{
        return "importCatalogue";

    }
    @RequestMapping(path = "/primaryCataloguing")
    public String getPrimaryCataloguing() throws Exception{
        return "primaryCataloguing";
    }

}
