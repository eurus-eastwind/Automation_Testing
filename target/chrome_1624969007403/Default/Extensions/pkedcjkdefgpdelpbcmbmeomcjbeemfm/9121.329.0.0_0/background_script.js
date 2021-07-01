'use strict';hb("mr.TestProvider");var ry,Aw,sy=hb("mr.Init"),ty=function(a){void 0!==a.use_views_dialog&&sy.info("Using the "+(a.use_views_dialog?"Views (Harmony)":"WebUI")+" dialog.");void 0!==a.enable_cast_sink_query&&sy.info("Native Cast MRP is "+(a.enable_cast_sink_query?"disabled":"enabled")+".");void 0!==a.use_mirroring_service&&sy.info("Native Mirroring Service is "+(a.use_mirroring_service?"enabled":"disabled")+".")};us().init();ry=new Ib("MediaRouter.Provider.WakeDuration");Aw=new Rw;
var uy=(new Promise(function(a,b){switch(window.location.host){case "enhhojjnijigcajfphajepfemndkmdlo":a();break;case "pkedcjkdefgpdelpbcmbmeomcjbeemfm":chrome.management.get("enhhojjnijigcajfphajepfemndkmdlo",function(c){chrome.runtime.lastError||!c.enabled?a():b(Error("Dev extension is enabled"))});break;default:b(Error("Unknown extension id"))}})).then(function(){return chrome.mojoPrivate&&chrome.mojoPrivate.requireAsync?new Promise(function(a){chrome.mojoPrivate.requireAsync("media_router_bindings").then(function(b){mojo=b.getMojoExports&&
b.getMojoExports();b.start().then(function(c){a({mrService:b,mrInstanceId:c.instance_id||c,mrConfig:c.config})})})}):Promise.reject(Error("No mojo service loaded"))}).then(function(a){if(!a.mrService)throw Error("Failed to get MR service");var b=a.mrInstanceId;if(!b)throw Error("Failed to get MR instance ID.");sy.info("MR instance ID: "+b);ty(a.mrConfig);var c=a.mrService;if(!Aw)throw Error("providerManager not initialized.");c.setHandlers(Aw);Xm(b)&&(ry.g="MediaRouter.Provider.FirstWakeDuration");
chrome.runtime.onSuspend.addListener(ry.end.bind(ry));an(b);xs();b=zw(!!a.mrConfig.enable_cast_sink_query);window.addEventListener("unhandledrejection",function(d){d=d.reason;d.stack||(d=Error(d));sy.error("Unhandled promise rejection.",d)});Aw.initialize(c,b,a.mrConfig)}).then(void 0,function(a){sy.K(a.message);throw a;});[].concat(q([yw(),vw()].concat(q(uq())))).forEach(function(a){Vm(a)});yw().addListener();vw().addListener();chrome.runtime.onStartup.addListener(function(){});uy.then(void 0,function(){return window.close()});