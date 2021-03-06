package boot

import (
	"fmt"
	"gfast/library/service"
	_ "gfast/swagger"

	"github.com/gogf/gf/frame/g"

	"github.com/gogf/gf/os/glog"
	"github.com/gogf/gf/os/gtime"
)

func init() {
	gtime.SetTimeZone("Asia/Shanghai") //设置系统时区
	// gup := (*ghttp.Server).SetClientMaxBodySize(50 * 1024 * 1024)
	// ghttp.ServerConfig.TLSConfig.SetSessionTicketKeys(10000)
	// ghttp.SetSessionTicketKeys(50 * 1024 * 1024)
	// s := g.Server()
	// s.SetConfigWithMap(g.Map{
	// 	"ClientMaxBodySize": 50 * 1024 * 1024,
	// })

	showLogo()
	g.Log().SetFlags(glog.F_ASYNC | glog.F_TIME_DATE | glog.F_TIME_TIME | glog.F_FILE_LONG)
	//g.Server().SetPort(8200)
	g.Server().AddStaticPath("/public", g.Cfg().GetString("server.ServerRoot"))

	//后台初始化配置
	initAdmin()

}

func showLogo() {
	fmt.Println(" .----------------.  .----------------.  .----------------.  .----------------.  .----------------. \n| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |\n| |    ______    | || |  _________   | || |      __      | || |    _______   | || |  _________   | |\n| |  .' ___  |   | || | |_   ___  |  | || |     /  \\     | || |   /  ___  |  | || | |  _   _  |  | |\n| | / .'   \\_|   | || |   | |_  \\_|  | || |    / /\\ \\    | || |  |  (__ \\_|  | || | |_/ | | \\_|  | |\n| | | |    ____  | || |   |  _|      | || |   / ____ \\   | || |   '.___`-.   | || |     | |      | |\n| | \\ `.___]  _| | || |  _| |_       | || | _/ /    \\ \\_ | || |  |`\\____) |  | || |    _| |_     | |\n| |  `._____.'   | || | |_____|      | || ||____|  |____|| || |  |_______.'  | || |   |_____|    | |\n| |              | || |              | || |              | || |              | || |              | |\n| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |\n '----------------'  '----------------'  '----------------'  '----------------'  '----------------' ")
	fmt.Println("当前版本：", service.Version)
}
