(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2eaa84fb"],{"0a5c":function(t,a,e){"use strict";e.r(a);var s=function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{class:t.className,style:{height:t.height,width:t.width}})},i=[],n=e("313e"),r=e.n(n),c=e("feb2");e("817d");var l=3e3,o={mixins:[c["default"]],props:{className:{type:String,default:"chart"},width:{type:String,default:"100%"},height:{type:String,default:"300px"}},data:function(){return{chart:null}},mounted:function(){var t=this;this.$nextTick((function(){t.initChart()}))},beforeDestroy:function(){this.chart&&(this.chart.dispose(),this.chart=null)},methods:{initChart:function(){this.chart=r.a.init(this.$el,"macarons"),this.chart.setOption({tooltip:{trigger:"axis",axisPointer:{type:"shadow"}},radar:{radius:"66%",center:["50%","42%"],splitNumber:8,splitArea:{areaStyle:{color:"rgba(127,95,132,.3)",opacity:1,shadowBlur:45,shadowColor:"rgba(0,0,0,.5)",shadowOffsetX:0,shadowOffsetY:15}},indicator:[{name:"Sales",max:1e4},{name:"Administration",max:2e4},{name:"Information Techology",max:2e4},{name:"Customer Support",max:2e4},{name:"Development",max:2e4},{name:"Marketing",max:2e4}]},legend:{left:"center",bottom:"10",data:["Allocated Budget","Expected Spending","Actual Spending"]},series:[{type:"radar",symbolSize:0,areaStyle:{normal:{shadowBlur:13,shadowColor:"rgba(0,0,0,.2)",shadowOffsetX:0,shadowOffsetY:10,opacity:1}},data:[{value:[5e3,7e3,12e3,11e3,15e3,14e3],name:"Allocated Budget"},{value:[4e3,9e3,15e3,15e3,13e3,11e3],name:"Expected Spending"},{value:[5500,11e3,12e3,15e3,12e3,12e3],name:"Actual Spending"}],animationDuration:l}]})}}},d=o,h=e("2877"),u=Object(h["a"])(d,s,i,!1,null,null,null);a["default"]=u.exports},"1e4b":function(t,a,e){"use strict";e.r(a);var s=function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{staticClass:"dashboard-editor-container"},[e("div",{staticClass:"dashboard-promote"},[e("el-row",[e("el-col",{attrs:{span:24}},[e("el-card",{staticClass:"box-card"},[e("p",[t._v("领取阿里云通用云产品优惠券")]),t._v(" "),e("p",[e("a",{staticClass:"text-info",attrs:{target:"_blank",href:"https://www.aliyun.com/minisite/goods?userCode=fcor2omk"}},[t._v("https://www.aliyun.com/minisite/goods?userCode=fcor2omk")])]),t._v(" "),e("p",[t._v("领取腾讯云通用云产品优惠券")]),t._v(" "),e("p",[e("a",{staticClass:"text-info",attrs:{target:"_blank",href:"https://cloud.tencent.com/act/cps/redirect?redirect=1062&cps_key=20b1c3842f74986b2894e2c5fcde7ea2&from=console"}},[t._v("https://cloud.tencent.com/act/cps/redirect?redirect=1062&cps_key=20b1c3842f74986b2894e2c5fcde7ea2&from=console")])])])],1)],1),t._v(" "),e("el-row",{staticClass:"other"},[e("el-col",{attrs:{span:8}},[e("el-card",{staticClass:"box-card kj"},[e("div",{staticClass:"clearfix",attrs:{slot:"header"},slot:"header"},[e("span",{staticClass:"title"},[t._v("gfast后台管理框架")])]),t._v(" "),e("p",[t._v("基于GF(Go Frame)的后台管理系统 ，完善的权限用户管理，致力于快速高效开发cms系统、督办系统、后续将加入流程审批、工作流引擎、项目管理、挂图作战、数据大屏等功能。")]),t._v(" "),e("div",{staticClass:"git-res"},[e("el-link",{attrs:{type:"primary",icon:"el-icon-cloudy",href:"https://gitee.com/tiger1103/gfast"}},[t._v("访问码云")]),t._v(" "),e("el-link",{attrs:{type:"success",icon:"el-icon-user",href:"https://github.com/tiger1103/gfast"}},[t._v("访问github")]),t._v(" "),e("el-link",{attrs:{type:"info",icon:"el-icon-s-home",href:"http://www.g-fast.cn"}},[t._v("访问官网")])],1),t._v(" "),e("div",{staticClass:"product"},[e("h3",[t._v("公司产品")]),t._v(" "),e("ul",[e("li",[e("a",{staticClass:"text-danger",attrs:{href:"http://www.qjit.cn/wallchartoperation.html",target:"_blank"}},[t._v("挂图作战指挥平台")])]),t._v(" "),e("li",[e("a",{staticClass:"text-danger",attrs:{href:"http://www.qjit.cn/macrodata.html",target:"_blank"}},[t._v("宏观数据库平台")])]),t._v(" "),e("li",[e("a",{staticClass:"text-danger",attrs:{href:"http://www.qjit.cn/usedcar.html",target:"_blank"}},[t._v("二手车管理系统")])]),t._v(" "),e("li",[e("a",{staticClass:"text-danger",attrs:{href:"http://www.qjit.cn/",target:"_blank"}},[t._v("公租房管理系统")])])])])]),t._v(" "),e("el-card",{staticClass:"box-card xx"},[e("div",{staticClass:"clearfix",attrs:{slot:"header"},slot:"header"},[e("span",{staticClass:"title"},[t._v("联系信息")])]),t._v(" "),e("p",[e("i",{staticClass:"el-icon-s-promotion"}),t._v(" 官网："),e("a",{staticClass:"text-info",attrs:{href:"http://www.g-fast.cn",target:"_blank"}},[t._v("http://www.g-fast.cn")])]),t._v(" "),e("p",[e("i",{staticClass:"el-icon-s-custom"}),t._v(" QQ群：865697297")])])],1),t._v(" "),e("el-col",{attrs:{span:16}},[e("el-card",{staticClass:"box-card jz"},[e("div",{staticClass:"clearfix",attrs:{slot:"header"},slot:"header"},[e("span",{staticClass:"title"},[t._v("捐赠")])]),t._v(" "),e("p",[t._v("若框架对您有帮助，您可以捐赠表达一下心意：")]),t._v(" "),e("img",{staticStyle:{width:"700px",height:"360px"},attrs:{src:"/images/jz.jpg"}})])],1)],1)],1),t._v(" "),e("panel-group",{on:{handleSetLineChartData:t.handleSetLineChartData}}),t._v(" "),e("el-row",{staticStyle:{background:"#fff",padding:"16px 16px 0","margin-bottom":"32px"}},[e("line-chart",{attrs:{"chart-data":t.lineChartData}})],1),t._v(" "),e("el-row",{attrs:{gutter:32}},[e("el-col",{attrs:{xs:24,sm:24,lg:8}},[e("div",{staticClass:"chart-wrapper"},[e("raddar-chart")],1)]),t._v(" "),e("el-col",{attrs:{xs:24,sm:24,lg:8}},[e("div",{staticClass:"chart-wrapper"},[e("pie-chart")],1)]),t._v(" "),e("el-col",{attrs:{xs:24,sm:24,lg:8}},[e("div",{staticClass:"chart-wrapper"},[e("bar-chart")],1)])],1)],1)},i=[],n=e("fbc4"),r=e("eab4"),c=e("0a5c"),l=e("d153"),o=e("9488"),d={newVisitis:{expectedData:[100,120,161,134,105,160,165],actualData:[120,82,91,154,162,140,145]},messages:{expectedData:[200,192,120,144,160,130,140],actualData:[180,160,151,106,145,150,130]},purchases:{expectedData:[80,100,121,104,105,90,100],actualData:[120,90,100,138,142,130,130]},shoppings:{expectedData:[130,140,141,142,145,150,160],actualData:[120,82,91,154,162,140,130]}},h={name:"Index",components:{PanelGroup:n["default"],LineChart:r["default"],RaddarChart:c["default"],PieChart:l["default"],BarChart:o["default"]},data:function(){return{lineChartData:d.newVisitis}},methods:{handleSetLineChartData:function(t){this.lineChartData=d[t]}}},u=h,p=(e("5ecf"),e("2877")),f=Object(p["a"])(u,s,i,!1,null,"02b67488",null);a["default"]=f.exports},"5ecf":function(t,a,e){"use strict";var s=e("8925"),i=e.n(s);i.a},8925:function(t,a,e){},9488:function(t,a,e){"use strict";e.r(a);var s=function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{class:t.className,style:{height:t.height,width:t.width}})},i=[],n=e("313e"),r=e.n(n),c=e("feb2");e("817d");var l=6e3,o={mixins:[c["default"]],props:{className:{type:String,default:"chart"},width:{type:String,default:"100%"},height:{type:String,default:"300px"}},data:function(){return{chart:null}},mounted:function(){var t=this;this.$nextTick((function(){t.initChart()}))},beforeDestroy:function(){this.chart&&(this.chart.dispose(),this.chart=null)},methods:{initChart:function(){this.chart=r.a.init(this.$el,"macarons"),this.chart.setOption({tooltip:{trigger:"axis",axisPointer:{type:"shadow"}},grid:{top:10,left:"2%",right:"2%",bottom:"3%",containLabel:!0},xAxis:[{type:"category",data:["Mon","Tue","Wed","Thu","Fri","Sat","Sun"],axisTick:{alignWithLabel:!0}}],yAxis:[{type:"value",axisTick:{show:!1}}],series:[{name:"pageA",type:"bar",stack:"vistors",barWidth:"60%",data:[79,52,200,334,390,330,220],animationDuration:l},{name:"pageB",type:"bar",stack:"vistors",barWidth:"60%",data:[80,52,200,334,390,330,220],animationDuration:l},{name:"pageC",type:"bar",stack:"vistors",barWidth:"60%",data:[30,52,200,334,390,330,220],animationDuration:l}]})}}},d=o,h=e("2877"),u=Object(h["a"])(d,s,i,!1,null,null,null);a["default"]=u.exports},"9c82":function(t,a,e){},d153:function(t,a,e){"use strict";e.r(a);var s=function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{class:t.className,style:{height:t.height,width:t.width}})},i=[],n=e("313e"),r=e.n(n),c=e("feb2");e("817d");var l={mixins:[c["default"]],props:{className:{type:String,default:"chart"},width:{type:String,default:"100%"},height:{type:String,default:"300px"}},data:function(){return{chart:null}},mounted:function(){var t=this;this.$nextTick((function(){t.initChart()}))},beforeDestroy:function(){this.chart&&(this.chart.dispose(),this.chart=null)},methods:{initChart:function(){this.chart=r.a.init(this.$el,"macarons"),this.chart.setOption({tooltip:{trigger:"item",formatter:"{a} <br/>{b} : {c} ({d}%)"},legend:{left:"center",bottom:"10",data:["Industries","Technology","Forex","Gold","Forecasts"]},series:[{name:"WEEKLY WRITE ARTICLES",type:"pie",roseType:"radius",radius:[15,95],center:["50%","38%"],data:[{value:320,name:"Industries"},{value:240,name:"Technology"},{value:149,name:"Forex"},{value:100,name:"Gold"},{value:59,name:"Forecasts"}],animationEasing:"cubicInOut",animationDuration:2600}]})}}},o=l,d=e("2877"),h=Object(d["a"])(o,s,i,!1,null,null,null);a["default"]=h.exports},d618:function(t,a,e){"use strict";var s=e("9c82"),i=e.n(s);i.a},eab4:function(t,a,e){"use strict";e.r(a);var s=function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{class:t.className,style:{height:t.height,width:t.width}})},i=[],n=e("313e"),r=e.n(n),c=e("feb2");e("817d");var l={mixins:[c["default"]],props:{className:{type:String,default:"chart"},width:{type:String,default:"100%"},height:{type:String,default:"350px"},autoResize:{type:Boolean,default:!0},chartData:{type:Object,required:!0}},data:function(){return{chart:null}},watch:{chartData:{deep:!0,handler:function(t){this.setOptions(t)}}},mounted:function(){var t=this;this.$nextTick((function(){t.initChart()}))},beforeDestroy:function(){this.chart&&(this.chart.dispose(),this.chart=null)},methods:{initChart:function(){this.chart=r.a.init(this.$el,"macarons"),this.setOptions(this.chartData)},setOptions:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},a=t.expectedData,e=t.actualData;this.chart.setOption({xAxis:{data:["Mon","Tue","Wed","Thu","Fri","Sat","Sun"],boundaryGap:!1,axisTick:{show:!1}},grid:{left:10,right:10,bottom:20,top:30,containLabel:!0},tooltip:{trigger:"axis",axisPointer:{type:"cross"},padding:[5,10]},yAxis:{axisTick:{show:!1}},legend:{data:["expected","actual"]},series:[{name:"expected",itemStyle:{normal:{color:"#FF005A",lineStyle:{color:"#FF005A",width:2}}},smooth:!0,type:"line",data:a,animationDuration:2800,animationEasing:"cubicInOut"},{name:"actual",smooth:!0,type:"line",itemStyle:{normal:{color:"#3888fa",lineStyle:{color:"#3888fa",width:2},areaStyle:{color:"#f3f8ff"}}},data:e,animationDuration:2800,animationEasing:"quadraticOut"}]})}}},o=l,d=e("2877"),h=Object(d["a"])(o,s,i,!1,null,null,null);a["default"]=h.exports},fbc4:function(t,a,e){"use strict";e.r(a);var s=function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("el-row",{staticClass:"panel-group",attrs:{gutter:40}},[e("el-col",{staticClass:"card-panel-col",attrs:{xs:12,sm:12,lg:6}},[e("div",{staticClass:"card-panel",on:{click:function(a){return t.handleSetLineChartData("newVisitis")}}},[e("div",{staticClass:"card-panel-icon-wrapper icon-people"},[e("svg-icon",{attrs:{"icon-class":"peoples","class-name":"card-panel-icon"}})],1),t._v(" "),e("div",{staticClass:"card-panel-description"},[e("div",{staticClass:"card-panel-text"},[t._v("\n          访客\n        ")]),t._v(" "),e("count-to",{staticClass:"card-panel-num",attrs:{"start-val":0,"end-val":102400,duration:2600}})],1)])]),t._v(" "),e("el-col",{staticClass:"card-panel-col",attrs:{xs:12,sm:12,lg:6}},[e("div",{staticClass:"card-panel",on:{click:function(a){return t.handleSetLineChartData("messages")}}},[e("div",{staticClass:"card-panel-icon-wrapper icon-message"},[e("svg-icon",{attrs:{"icon-class":"message","class-name":"card-panel-icon"}})],1),t._v(" "),e("div",{staticClass:"card-panel-description"},[e("div",{staticClass:"card-panel-text"},[t._v("\n          消息\n        ")]),t._v(" "),e("count-to",{staticClass:"card-panel-num",attrs:{"start-val":0,"end-val":81212,duration:3e3}})],1)])]),t._v(" "),e("el-col",{staticClass:"card-panel-col",attrs:{xs:12,sm:12,lg:6}},[e("div",{staticClass:"card-panel",on:{click:function(a){return t.handleSetLineChartData("purchases")}}},[e("div",{staticClass:"card-panel-icon-wrapper icon-money"},[e("svg-icon",{attrs:{"icon-class":"money","class-name":"card-panel-icon"}})],1),t._v(" "),e("div",{staticClass:"card-panel-description"},[e("div",{staticClass:"card-panel-text"},[t._v("\n          金额\n        ")]),t._v(" "),e("count-to",{staticClass:"card-panel-num",attrs:{"start-val":0,"end-val":9280,duration:3200}})],1)])]),t._v(" "),e("el-col",{staticClass:"card-panel-col",attrs:{xs:12,sm:12,lg:6}},[e("div",{staticClass:"card-panel",on:{click:function(a){return t.handleSetLineChartData("shoppings")}}},[e("div",{staticClass:"card-panel-icon-wrapper icon-shopping"},[e("svg-icon",{attrs:{"icon-class":"shopping","class-name":"card-panel-icon"}})],1),t._v(" "),e("div",{staticClass:"card-panel-description"},[e("div",{staticClass:"card-panel-text"},[t._v("\n          订单\n        ")]),t._v(" "),e("count-to",{staticClass:"card-panel-num",attrs:{"start-val":0,"end-val":13600,duration:3600}})],1)])])],1)},i=[],n=e("ec1b"),r=e.n(n),c={components:{CountTo:r.a},methods:{handleSetLineChartData:function(t){this.$emit("handleSetLineChartData",t)}}},l=c,o=(e("d618"),e("2877")),d=Object(o["a"])(l,s,i,!1,null,"4b11f5b6",null);a["default"]=d.exports},feb2:function(t,a,e){"use strict";e.r(a);var s=e("ed08");a["default"]={data:function(){return{$_sidebarElm:null,$_resizeHandler:null}},mounted:function(){this.initListener()},activated:function(){this.$_resizeHandler||this.initListener(),this.resize()},beforeDestroy:function(){this.destroyListener()},deactivated:function(){this.destroyListener()},methods:{$_sidebarResizeHandler:function(t){"width"===t.propertyName&&this.$_resizeHandler()},initListener:function(){var t=this;this.$_resizeHandler=Object(s["c"])((function(){t.resize()}),100),window.addEventListener("resize",this.$_resizeHandler),this.$_sidebarElm=document.getElementsByClassName("sidebar-container")[0],this.$_sidebarElm&&this.$_sidebarElm.addEventListener("transitionend",this.$_sidebarResizeHandler)},destroyListener:function(){window.removeEventListener("resize",this.$_resizeHandler),this.$_resizeHandler=null,this.$_sidebarElm&&this.$_sidebarElm.removeEventListener("transitionend",this.$_sidebarResizeHandler)},resize:function(){var t=this.chart;t&&t.resize()}}}}}]);