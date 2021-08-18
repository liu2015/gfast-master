package task

import (
	"encoding/json"
	"fmt"
	"gfast/app/model/module/work"
	"strconv"
	"time"

	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/util/gconv"
)

// 获得门店的工单列表
func Storelist() {
	// 获得请求参数格式并且解析
	var storelist ListGenerated

	endtime := int32(time.Now().Unix())
	// 现在改成默认3天内的单据
	starttime := endtime - 259200

	// 结构化请求body
	storelist.Starttime = strconv.Itoa(int(starttime))
	storelist.Endtime = strconv.Itoa(int(endtime))
	storelist.Cursor = 0
	storelist.Size = 100
	storelist.Filters = append(storelist.Filters, struct {
		Key   string "json:\"key\""
		Value string "json:\"value\""
	}{
		Key:   "template_id",
		Value: Tmstorelist,
	})
	// 获得token
	url := "https://qyapi.weixin.qq.com/cgi-bin/oa/getapprovalinfo?" + AccessToken

	jsontest, err := json.Marshal(storelist)
	if err != nil {
		fmt.Println("请求错误")
	}
	resp, err := g.Client().Post(url, jsontest)
	// 格式转成string，然后进行保存操作
	jsonbody := resp.ReadAllString()

	// 格式化保存返回结果
	var jsonerr JsonList

	gconv.Struct([]byte(jsonbody), &jsonerr)
	// 拿到列表 准备遍历保存
	listvode := jsonerr.SpNoList

	for _, v := range listvode {

		var listadd work.AddReq

		listadd.SpId = v
		listadd.Starttime = gconv.Int(starttime)
		listadd.Endtime = gconv.Int(endtime)
		listadd.Errmsg = jsonerr.Errmsg
		listadd.Errcode = gconv.String(jsonerr.Errcode)
		listadd.SpName = "门店问题工单"

		// 保存list
		work.AddSaveadd(&listadd)

		// 准备保存listinfo 的详情
		Storelistinfo(listadd.SpId)

	}

}
