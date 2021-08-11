package task

import (
	"encoding/json"
	"fmt"
	"gfast/app/model/module/list"
	"strconv"
	"time"

	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/util/gconv"
)

type ListGenerated struct {
	Starttime string `json:"starttime"`
	Endtime   string `json:"endtime"`
	Cursor    int    `json:"cursor"`
	Size      int    `json:"size"`
	Filters   []struct {
		Key   string `json:"key"`
		Value string `json:"value"`
	} `json:"filters"`
}

type JsonList struct {
	Errcode  int      `json:"errcode"`
	Errmsg   string   `json:"errmsg"`
	SpNoList []string `json:"sp_no_list"`
}

// 获得列表
func List() {
	// 请求参数
	var listtest ListGenerated
	// 获得当前时间
	current := int32(time.Now().Unix())

	// 获得当前时间减少5分钟 320
	currend := current - 604800
	fmt.Println(current, currend)

	listtest.Starttime = strconv.Itoa(int(currend))
	listtest.Endtime = strconv.Itoa(int(current))
	listtest.Cursor = 0
	listtest.Size = 100
	listtest.Filters = append(listtest.Filters, struct {
		Key   string "json:\"key\""
		Value string "json:\"value\""
	}{Key: "template_id", Value: Tmvaluetest})

	// 获得token
	url := "https://qyapi.weixin.qq.com/cgi-bin/oa/getapprovalinfo?" + AccessToken

	jsontest, err := json.Marshal(listtest)
	if err != nil {
		fmt.Println("请求返回错误")
	}
	fmt.Println(string(jsontest))

	resp, err := g.Client().Post(url, jsontest)

	// fmt.Println(resp.ReadAllString())
	jsobody := resp.ReadAllString()

	var jsonerr JsonList
	// json.Unmarshal([]byte(jsobody), &jsonerr)
	gconv.Struct([]byte(jsobody), &jsonerr)
	listvode := jsonerr.SpNoList

	for _, v := range listvode {
		// fmt.Println(v)
		// var listadd list.AddReq
		var listadd list.AddReq

		listadd.SpId = v
		listadd.Endtime = gconv.Int(currend)
		listadd.Starttime = gconv.Int(current)
		listadd.Errmsg = jsonerr.Errmsg
		listadd.Errcode = gconv.String(jsonerr.Errcode)
		// listadd.Sort = 1

		// list.AddSave1(listadd)
		list.AddSave1(&listadd)

		ListDetails(listadd.SpId)

		// // listadd.
		// // 	list_service.AddSave()

	}

	// 请求

	// 返回结果插入数据库

}
