package boot

import (
	"gfast/library/service"

	"github.com/goflyfox/gtoken/gtoken"
	"github.com/gogf/gf/frame/g"
)

var AdminGfToken *gtoken.GfToken

func initAdmin() {
	//无需验证权限的用户id
	service.NotCheckAuthAdminIds = g.Cfg().GetInts("adminInfo.notCheckAuthAdminIds")
	//后端分页长度配置
	service.AdminPageNum = g.Cfg().GetInt("adminInfo.pageNum")
	//后端数据加密密钥
	service.AdminEncryptKey = g.Cfg().GetString("adminInfo.encryptKey")
	// 设置并启动后台gtoken处理
	initAdminGfToken()
}

func initAdminGfToken() {
	//多端登陆配置
	service.AdminMultiLogin = g.Cfg().GetBool("gToken.MultiLogin")
	AdminGfToken = &gtoken.GfToken{
		CacheMode:        g.Cfg().GetInt8("gToken.CacheMode"),
		CacheKey:         g.Cfg().GetString("gToken.CacheKey"),
		Timeout:          g.Cfg().GetInt("gToken.Timeout"),
		MaxRefresh:       g.Cfg().GetInt("gToken.MaxRefresh"),
		TokenDelimiter:   g.Cfg().GetString("gToken.TokenDelimiter"),
		EncryptKey:       g.Cfg().GetBytes("gToken.EncryptKey"),
		AuthFailMsg:      g.Cfg().GetString("gToken.AuthFailMsg"),
		MultiLogin:       service.AdminMultiLogin,
		LoginPath:        "/sysLogin/login",
		LoginBeforeFunc:  service.AdminLogin,
		LoginAfterFunc:   service.LoginAfter,
		LogoutPath:       "/sysLogin/logout",
		AuthPaths:        g.SliceStr{"/system/*", "/module/*"},
		AuthExcludePaths: g.SliceStr{"/module/link/*", "/module/lib_log/*", "/module/texu_up/*", "/module/uplisttest/*", "/system/config/dict/*"},

		AuthAfterFunc:    service.AuthAfterFunc,
		LogoutBeforeFunc: service.LoginOut,
	}
	AdminGfToken.Start()
}
