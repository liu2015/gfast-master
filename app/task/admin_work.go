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

// 获取行管类工单列表
func Admin_work() {
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
		Value: Admin_test,
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

	listvode := jsonerr.SpNoList

	for _, v := range listvode {

		var listadd work.AddReq
		listadd.SpId = v
		listadd.Starttime = gconv.Int(starttime)
		listadd.Endtime = gconv.Int(endtime)
		listadd.Errmsg = jsonerr.Errmsg
		listadd.Errcode = gconv.String(jsonerr.Errcode)
		listadd.SpName = "行管问题工单"

		work.AddSaveadd(&listadd)

		// 开始执行获得行管问题工单的详情

		// admin.Admin_list(listadd.SpId)
		Admin_list(listadd.SpId)

	}
}
