!function(){var t={},o=function(o){for(var e=t[o],n=e.deps,l=e.defn,i=n.length,a=new Array(i),c=0;c<i;++c)a[c]=r(n[c]);var s=l.apply(null,a);if(void 0===s)throw"module ["+o+"] returned undefined";e.instance=s},e=function(o,e,r){if("string"!=typeof o)throw"module id must be a string";if(void 0===e)throw"no dependencies for "+o;if(void 0===r)throw"no definition function for "+o;t[o]={deps:e,defn:r,instance:void 0}},r=function(e){var r=t[e];if(void 0===r)throw"module ["+e+"] was undefined";return void 0===r.instance&&o(e),r.instance},n=function(t,o){for(var e=t.length,n=new Array(e),l=0;l<e;++l)n.push(r(t[l]));o.apply(null,o)};({}).bolt={module:{api:{define:e,require:n,demand:r}}};var l=e;(function(t,o){l(t,[],function(){return o})})("5",tinymce.util.Tools.resolve),l("1",["5"],function(t){return t("tinymce.dom.DOMUtils")}),l("2",["5"],function(t){return t("tinymce.PluginManager")}),l("3",["5"],function(t){return t("tinymce.util.I18n")}),l("4",["5"],function(t){return t("tinymce.util.Tools")}),l("0",["1","2","3","4"],function(t,o,e,r){var n=e.translate;return o.add("textcolor",function(o){function e(t){var e;return o.dom.getParents(o.selection.getStart(),function(o){var r;(r=o.style["forecolor"==t?"color":"background-color"])&&(e=r)}),e}function l(t){var e,r,n=[];for(r=["000000","Black","993300","Burnt orange","333300","Dark olive","003300","Dark green","003366","Dark azure","000080","Navy Blue","333399","Indigo","333333","Very dark gray","800000","Maroon","FF6600","Orange","808000","Olive","008000","Green","008080","Teal","0000FF","Blue","666699","Grayish blue","808080","Gray","FF0000","Red","FF9900","Amber","99CC00","Yellow green","339966","Sea green","33CCCC","Turquoise","3366FF","Royal blue","800080","Purple","999999","Medium gray","FF00FF","Magenta","FFCC00","Gold","FFFF00","Yellow","00FF00","Lime","00FFFF","Aqua","00CCFF","Sky blue","993366","Red violet","FFFFFF","White","FF99CC","Pink","FFCC99","Peach","FFFF99","Light yellow","CCFFCC","Pale green","CCFFFF","Pale cyan","99CCFF","Light sky blue","CC99FF","Plum"],r=o.settings.textcolor_map||r,r=o.settings[t+"_map"]||r,e=0;e<r.length;e+=2)n.push({text:r[e+1],color:"#"+r[e]});return n}function i(){function t(t,o){var e="transparent"==t;return'<td class="mce-grid-cell'+(e?" mce-colorbtn-trans":"")+'"><div id="'+F+"-"+b+++'" data-mce-color="'+(t||"")+'" role="option" tabIndex="-1" style="'+(t?"background-color: "+t:"")+'" title="'+n(o)+'">'+(e?"&#215;":"")+"</div></td>"}var e,r,i,a,c,s,u,g,m=this,F=m._id,b=0;for(g=m.settings.origin,e=l(g),e.push({text:n("No color"),color:"transparent"}),i='<table class="mce-grid mce-grid-border mce-colorbutton-grid" role="list" cellspacing="0"><tbody>',a=e.length-1,s=0;s<f[g];s++){for(i+="<tr>",c=0;c<d[g];c++)u=s*d[g]+c,u>a?i+="<td></td>":(r=e[u],i+=t(r.color,r.text));i+="</tr>"}if(o.settings.color_picker_callback){for(i+='<tr><td colspan="'+d[g]+'" class="mce-custom-color-btn"><div id="'+F+'-c" class="mce-widget mce-btn mce-btn-small mce-btn-flat" role="button" tabindex="-1" aria-labelledby="'+F+'-c" style="width: 100%"><button type="button" role="presentation" tabindex="-1">'+n("Custom...")+"</button></div></td></tr>",i+="<tr>",c=0;c<d[g];c++)i+=t("","Custom color");i+="</tr>"}return i+="</tbody></table>"}function a(t,e){o.undoManager.transact(function(){o.focus(),o.formatter.apply(t,{value:e}),o.nodeChanged()})}function c(t){o.undoManager.transact(function(){o.focus(),o.formatter.remove(t,{value:null},null,!0),o.nodeChanged()})}function s(n){function l(t){g.hidePanel(),g.color(t),a(g.settings.format,t)}function i(){g.hidePanel(),g.resetColor(),c(g.settings.format)}function s(t,o){t.style.background=o,t.setAttribute("data-mce-color",o)}var u,f,g=this.parent();f=g.settings.origin,t.DOM.getParent(n.target,".mce-custom-color-btn")&&(g.hidePanel(),o.settings.color_picker_callback.call(o,function(t){var o,e,n,i=g.panel.getEl().getElementsByTagName("table")[0];for(o=r.map(i.rows[i.rows.length-1].childNodes,function(t){return t.firstChild}),n=0;n<o.length&&(e=o[n],e.getAttribute("data-mce-color"));n++);if(n==d[f])for(n=0;n<d[f]-1;n++)s(o[n],o[n+1].getAttribute("data-mce-color"));s(e,t),l(t)},e(g.settings.format))),u=n.target.getAttribute("data-mce-color"),u?(this.lastId&&document.getElementById(this.lastId).setAttribute("aria-selected",!1),n.target.setAttribute("aria-selected",!0),this.lastId=n.target.id,"transparent"==u?i():l(u)):null!==u&&g.hidePanel()}function u(){var t=this;t._color?a(t.settings.format,t._color):c(t.settings.format)}var d,f;f={forecolor:o.settings.forecolor_rows||o.settings.textcolor_rows||5,backcolor:o.settings.backcolor_rows||o.settings.textcolor_rows||5},d={forecolor:o.settings.forecolor_cols||o.settings.textcolor_cols||8,backcolor:o.settings.backcolor_cols||o.settings.textcolor_cols||8},o.addButton("forecolor",{type:"colorbutton",tooltip:"Text color",format:"forecolor",panel:{origin:"forecolor",role:"application",ariaRemember:!0,html:i,onclick:s},onclick:u}),o.addButton("backcolor",{type:"colorbutton",tooltip:"Background color",format:"hilitecolor",panel:{origin:"backcolor",role:"application",ariaRemember:!0,html:i,onclick:s},onclick:u})}),function(){}}),r("0")()}();