package router

import (
	"gfast/app/controller/admin"
	"gfast/app/controller/common"
	"gfast/app/controller/module"
	"gfast/app/controller/system"
	"gfast/hook"
	"gfast/middleWare"

	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
)

//后端路由处理
func init() {
	s := g.Server()
	group := s.Group("/")

	group.Group("/captcha", func(group *ghttp.RouterGroup) {
		group.ALL("/get", new(common.Captcha))
	})
	group.Group("/module", func(group *ghttp.RouterGroup) {

		// lib_log
		group.ALL("/lib_log", new(module.Lib_log))
		group.ALL("/link", new(module.Link))
		group.ALL("/rary", new(module.Rary))
		group.ALL("/list", new(module.List))
		group.ALL("/nolist", new(module.Nolist))
		group.ALL("/work", new(module.Work))
		//listinfo
		group.ALL("/listinfo", new(module.Listinfo))
		// 特许工单递交
		group.ALL("/texu_up", new(module.Texu_up))
		// Uplisttest
		group.ALL("/uplisttest", new(module.Uplisttest))
	})

	group.Group("/system", func(group *ghttp.RouterGroup) {
		group.Middleware(middleWare.Auth) //后台权限验证
		//后台操作日志记录
		group.Hook("/*", ghttp.HOOK_AFTER_OUTPUT, hook.OperationLog)

		//文件上传
		group.POST("/upload", new(admin.Upload))
		//后台首页
		group.ALL("/index", new(admin.Index))
		//权限管理
		group.ALL("/auth", new(admin.Auth))

		//部门管理
		group.ALL("/dept", new(admin.Dept))

		//个人中心
		group.ALL("/user", new(admin.User))

		//岗位管理
		group.ALL("/post", new(admin.Post))

		//cms管理
		group.Group("/cms", func(group *ghttp.RouterGroup) {
			group.ALL("/menu", new(admin.CmsMenu))
			group.ALL("/news", new(admin.CmsNews))
		})

		//配置管理
		group.Group("/config", func(group *ghttp.RouterGroup) {
			group.ALL("/dict", new(admin.Dict))
			group.ALL("/params", new(admin.Params))
			group.ALL("/webSet", new(admin.WebSet))
		})
		//系统监控
		group.Group("/monitor", func(group *ghttp.RouterGroup) {
			group.ALL("/online", new(admin.MonitorOnline))
			group.ALL("/job", new(admin.MonitorJob))
			group.ALL("/server", new(admin.MonitorServer))
			group.ALL("/operlog", new(admin.MonitorOperationLog))
			group.ALL("/loginlog", new(admin.MonitorLoginLog))
		})

		//模型管理
		group.Group("/model", func(group *ghttp.RouterGroup) {
			group.ALL("/category", new(admin.ModelCategory))
			group.ALL("/info", new(admin.ModelInfo))
			group.ALL("/fields", new(admin.ModelFields))
		})

		//代码生成
		group.Group("/tools", func(group *ghttp.RouterGroup) {
			group.ALL("/gen", new(admin.Gen))
		})

		//扩展管理
		group.Group("/plug", func(group *ghttp.RouterGroup) {
			group.Group("/ad", func(group *ghttp.RouterGroup) {
				group.ALL("/type", new(admin.AdType))
				group.ALL("/info", new(admin.PlugAd))
			})
			group.Group("/link", func(group *ghttp.RouterGroup) {
				group.ALL("/type", new(admin.LinkType))
				group.ALL("/info", new(admin.PlugLink))
			})
		})

		//工作流
		group.Group("/wf", func(group *ghttp.RouterGroup) {
			group.ALL("/flow", new(admin.Flow))
			group.ALL("/news", new(admin.WfNews))
		})
		group.Group("/module", func(group *ghttp.RouterGroup) {
			// lib_log    system/module/lib_log
			group.ALL("/lib_log", new(module.Lib_log))
		})

		group.Group("/system", func(group *ghttp.RouterGroup) {
			// lib_log
			group.ALL("/lib_log", new(system.Lib_log))
		})

	})
}
