/*! JS-Accordion v1.0 - https://github.com/mlms13/JS-Accordion */
(function(a){a.fn.jsAccordion=function(b){var c=a.extend({accordionClass:"secondary-nav",labelClass:"accordion-label",openPanels:[],urlPanels:false,autoCollapse:true},b);
return this.each(function(){var g=a(this),h=g.children("li"),e=(window.location.hash==="#")?null:g.find(window.location.hash),d,f=function(){h.children("ul, div").each(function(){var m=a(this),l=parseInt(m.css("paddingLeft"),10)+parseInt(m.css("paddingRight"),10),j=parseInt(m.css("borderLeft"),10)+parseInt(m.css("borderRight"),10),k=parseInt(m.css("marginLeft"),10)+parseInt(m.css("marginRight"),10),i=m.parent().width()-(l+j+k);
m.width(i);});};g.addClass(c.accordionClass);h.children("ul, div").hide();a(document).trigger("panelCollapsed");if(c.openPanels.constructor!==Array){c.openPanels=[c.openPanels];
}if(c.urlPanels&&e&&e.length){if(e.is("li")){c.openPanels.push(e.children("ul, div"));}else{if(e.is("a")||e.is("span")){c.openPanels.push(e.next("ul, div"));
}else{if(e.is("ul")||e.is("div")){c.openPanels.push(e);}}}}for(d=0;d<c.openPanels.length;d+=1){a(c.openPanels[d]).show().parent().addClass("expanded");
a(document).trigger("panelExpanded");}f();a(document).bind("panelCollapsed",f);a(document).bind("panelExpanded",f);a(window).resize(f);h.contents().filter(function(){return this.nodeType===3&&a.trim(this.nodeValue)!=="";
}).wrap("<span />");h.children("a, span").each(function(){var i=a(this);if(i.next("ul, div").length<1){return;}i.addClass(c.labelClass);if(i.is("a")){i.click(function(j){j.preventDefault();
});}i.click(function(){if(i.next("ul, div").is(":visible")){i.next("ul, div").slideUp(function(){a(document).trigger("panelCollapsed");});i.parent().removeClass("expanded");
}else{if(c.autoCollapse){h.filter(".expanded").removeClass("expanded").children("ul:visible, div:visible").slideUp();}i.next("ul, div").slideDown(function(){a(document).trigger("panelExpanded");
});i.parent().addClass("expanded");}});});});};}(jQuery));$(function(){var b=[];(function a(c){var d;if(c!==null&&c!==undefined){if(c==="-all"){b.push($(".jsAccordion > ul > li").children("ul, div"));
}else{if(typeof c==="string"){if(c.substr(0,1)==="#"){c=c.substr(1,c.length);}b.push($(".jsAccordion > ul > li").find("#"+c));}else{if(typeof c==="number"){b.push($(".jsAccordion > ul > li").children("ul, div").eq(c));
}else{if(c.constructor===Array){for(d=0;d<c.length;d+=1){a(c[d]);}}}}}}}(window.visiblePanels));$(".jsAccordion").addClass("secondary-nav").children("ul").jsAccordion({openPanels:b});
});