package main

import (
	_ "gfast/boot"
	_ "gfast/router"

	"github.com/gogf/gf/frame/g"
)

// @title gfast API文档
// @version 1.0
// @description gfast 在线API文档
// @host localhost
// @BasePath /system
func main() {

	// 修改默认上传配置，从8兆，修改到50兆
	// 也可以在config.toml配置
	s := g.Server()
	// s.SetConfigWithMap(g.Map{
	// 	"ClientMaxBodySize": 50 * 1024 * 1024,
	// })
	s.Run()
}
