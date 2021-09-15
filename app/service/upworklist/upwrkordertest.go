package upworklist

import (
	"encoding/json"
	"fmt"
	"gfast/app/model/module/uplisttest"
	"gfast/app/service/admin/dict_service"
	"io/ioutil"
	"net/http"

	"github.com/gogf/gf/net/ghttp"
)

var Corpidtest string
var Corpsecret1test string
var Tmvaluetest string

//公共token
var AccessToken0915 string

type AutoGenerated struct {
	Errcode     int    `json:"errcode"`
	Errmsg      string `json:"errmsg"`
	AccessToken string `json:"access_token"`
	ExpiresIn   int    `json:"expires_in"`
}

type Franchise1 struct {
	CreatorUserid       string        `json:"creator_userid"`
	TemplateID          string        `json:"template_id"`
	UseTemplateApprover int           `json:"use_template_approver"`
	ApplyData           ApplyData     `json:"apply_data"`
	SummaryList         []SummaryList `json:"summary_list"`
}
type Title struct {
	Text string `json:"text"`
	Lang string `json:"lang"`
}
type Files struct {
	FileID string `json:"file_id"`
}
type Valuetest struct {
	Text string `json:"text"`
	Lang string `json:"lang"`
}
type Options struct {
	Key   string      `json:"key"`
	Value []Valuetest `json:"value"`
}
type Selector struct {
	Type    string    `json:"type"`
	Options []Options `json:"options"`
}
type Value struct {
	Text            string        `json:"text,omitempty"`
	Tips            []interface{} `json:"tips"`
	Members         []interface{} `json:"members"`
	Departments     []interface{} `json:"departments"`
	Files           []Files       `json:"files"`
	Children        []interface{} `json:"children"`
	StatField       []interface{} `json:"stat_field"`
	Selector        Selector      `json:"selector,omitempty"`
	SumField        []interface{} `json:"sum_field"`
	RelatedApproval []interface{} `json:"related_approval"`
	Students        []interface{} `json:"students"`
	Classes         []interface{} `json:"classes"`
}

type Members struct {
	Userid string `json:"userid"`
	Name   string `json:"name"`
}

type Contents struct {
	Control string  `json:"control"`
	ID      string  `json:"id"`
	Title   []Title `json:"title"`
	Value   Value   `json:"value,omitempty"`
}
type ApplyData struct {
	Contents []Contents `json:"contents"`
}
type SummaryInfo struct {
	Text string `json:"text"`
	Lang string `json:"lang"`
}
type SummaryList struct {
	SummaryInfo []SummaryInfo `json:"summary_info"`
}

// 获得token
func Workorder(req *uplisttest.AddReq) {

	corpid, err := dict_service.GetDictDataById(84)

	if err != nil {
		fmt.Println(err)
	}
	Corpidtest = corpid.DictValue

	corpsecret1, err := dict_service.GetDictDataById(85)
	if err != nil {
		fmt.Println("获取失败")
	}

	Corpsecret1test = corpsecret1.DictValue

	// 获取模板id
	tmvalue, err := dict_service.GetDictDataById(97)

	if err != nil {
		fmt.Println("获取失败")
	}
	Tmvaluetest = tmvalue.DictValue

	// 获得token
	Weixintoken()

	// 递交工单模板，add
	Addorder(req)

}

func Addorder(usertest *uplisttest.AddReq) {

	fmt.Println("1111111111,是不是有传输的结果集合", usertest)

	url := "https://qyapi.weixin.qq.com/cgi-bin/oa/applyevent?" + AccessToken0915

	// var orderlist Franchise1
	orderlist := new(Franchise1)

	var testdaqu string
	distrttest := usertest.Distri

	// 获得大区信息
	switch distrttest {

	case "湖北大区":
		testdaqu = "option-1610416643516"
	case "华中大区":
		testdaqu = "option-1610416643517"
	case "华北大区":
		testdaqu = "option-1610416643518"
	case "华南大区":
		testdaqu = "option-1610416643519"
	case "华西大区":
		testdaqu = "option-1610416643520"
	case "华东大区":
		testdaqu = "option-1610416643521"

	}

	// 选择问题类型
	var testvode string
	typetest1 := usertest.ProblemType
	switch typetest1 {
	case "外卖刷库存问题":
		testvode = "option-1621298756436"
	case "pos网络_软件问题":
		testvode = "option-1610416725331"
	case "pos硬件问题":
		testvode = "option-1610416725332"
	case "券_会员问题":
		testvode = "option-1610500151181"
	case "线下活动问题":
		testvode = "option-1612241025248"
	case "外卖问题":
		testvode = "option-1610416702785"
	case "sap问题":
		testvode = "option-1610416702787"
	case "中台问题":
		testvode = "option-1610416702788"
	case "其他问题":
		testvode = "option-1611721613033"
	}

	// orderlist.CreatorUserid = "017338"
	orderlist.CreatorUserid = "017338"
	orderlist.TemplateID = "3WK6uccyzQzDhu611YsgHToiZ1wGEoR2kAtHJxdC"
	orderlist.UseTemplateApprover = 1
	// 结构主体
	ApplyData1 := orderlist.ApplyData

	// 报修类型的结构体
	// var Contents1 Contents
	Contents1 := new(Contents)
	Contents1.Control = "Selector"
	Contents1.ID = "Selector-1594172032266"
	var title1 Title
	title1.Lang = "zh_CN"
	title1.Text = "报修类型"
	Contents1.Title = append(Contents1.Title, title1)
	// 添加value
	// var Value1 Value
	Value1 := new(Value)

	Value1.Selector.Type = "single"

	var Options1 Options

	// 选择一个问题类型
	Options1.Key = testvode
	var valuetest Valuetest
	valuetest.Text = usertest.ProblemType
	valuetest.Lang = "zh_CN"

	Options1.Value = append(Options1.Value, valuetest)

	// 其他类型的Value1添加
	Value1.Selector.Options = append(Value1.Selector.Options, Options1)

	// 将value组装添加到value
	Contents1.Value = *Value1

	// 以上都是添加value

	// 添加大区选择类型
	// var Contents2 Contents
	Contents2 := new(Contents)

	Contents2.Control = "Selector"
	Contents2.ID = "Selector-1594171985029"
	var title2 Title
	title2.Text = "大区名称"
	title2.Lang = "zh_CN"
	Contents2.Title = append(Contents2.Title, title2)

	// var value2 Value
	value2 := new(Value)

	value2.Selector.Type = "single"
	var Options2 Options
	Options2.Key = testdaqu

	var Valuetest2 Valuetest
	Valuetest2.Text = usertest.Distri
	Valuetest2.Lang = "zh_CN"
	Options2.Value = append(Options2.Value, Valuetest2)
	value2.Selector.Options = append(value2.Selector.Options, Options2)
	Contents2.Value = *value2

	// 故障描述
	// var Contents3 Contents
	// 进行初始化为当前的类型的零值
	Contents3 := new(Contents)
	Contents3.Control = "Textarea"
	Contents3.ID = "Textarea-1589781790128"
	var title3 Title
	title3.Text = "故障描述"
	title3.Lang = "zh_CN"

	Contents3.Title = append(Contents3.Title, title3)

	// var value3 Value
	value3 := new(Value)
	value3.Text = usertest.Describe
	Contents3.Value = *value3

	// 报修门店 这个好像前端没有显示
	var Contents4 Contents

	Contents4.Control = "Text"
	Contents4.ID = "Text-1611806564466"
	var title4 Title
	title4.Text = "报修门店"
	title4.Lang = "zh_CN"
	Contents4.Title = append(Contents4.Title, title4)

	var value4 Value
	value4.Text = "通过二维码填写暂时没有支持"
	Contents4.Value = value4

	// 紧急联系人电话  需要必填
	var Contents5 Contents
	Contents5.Control = "Text"
	Contents5.ID = "Text-1612148321200"
	var title5 Title
	title5.Text = "紧急联系人电话"
	title5.Lang = "zh_CN"
	var value5 Value
	value5.Text = usertest.Tel
	Contents5.Value = value5

	// 定义标签问题 ui隐藏
	var Contents6 Contents
	Contents6.Control = "Selector"
	Contents6.ID = "Selector-1614774464912"
	var title6 Title
	title6.Text = "标签定义问题"
	title6.Lang = "zh_CN"
	Contents6.Title = append(Contents6.Title, title6)
	var value6 Value
	value6.Selector.Type = "single"
	var options6 Options
	options6.Key = "option-1614774483743"
	var valuetest6 Valuetest
	valuetest6.Text = "其他"
	valuetest6.Lang = "zh_CN"
	options6.Value = append(options6.Value, valuetest6)
	value6.Selector.Options = append(value6.Selector.Options, options6)

	// 添加appdata主体
	ApplyData1.Contents = append(ApplyData1.Contents, *Contents1, *Contents2, *Contents3, Contents4, Contents5, Contents6)

	var sumary1 SummaryList

	var suminfo SummaryInfo
	suminfo.Text = "通用型的工单，可能是来自特许门店或者通过二维码扫码填写,注意：填写人是固定的一个虚拟人物，请通过手机号或者其他联系对方"
	suminfo.Lang = "zh_CN"

	sumary1.SummaryInfo = append(sumary1.SummaryInfo, suminfo)

	// 组装
	orderlist.SummaryList = append(orderlist.SummaryList, sumary1)
	orderlist.ApplyData = ApplyData1

	// 以上组装完整的结构体 然后进行传输到企业微信的准备
	fmt.Println("7777999999999999999999")

	fmt.Println(orderlist)
	fmt.Println("7777999999999999999999")

	// 转换成json
	// jsontest, err := json.Marshal(&orderlist)
	jsontest, err1 := json.Marshal(&orderlist)
	if err1 != nil {
		fmt.Println(err1)
	}

	fmt.Println("555555555555555")
	fmt.Println(string(jsontest))
	jsoncode := string(jsontest)

	resp, err := ghttp.Post(url, jsoncode)
	defer resp.Close()

	if err != nil {
		fmt.Println("错误在这里", err)
	}

	fmt.Println("999999999999999999")
	fmt.Println(resp.ReadAllString())
	fmt.Println("999999999999999999")

}

// 获得token
func Weixintoken() {

	url := "https://qyapi.weixin.qq.com/cgi-bin/gettoken?" + Corpidtest + "&" + Corpsecret1test
	fmt.Println("是否正确", url)
	resp, err := http.Get(url)
	if err != nil {
		fmt.Println("错误1", err)
	}
	// 关闭连接
	defer resp.Body.Close()

	// 返回的token格式
	var bodytest1 AutoGenerated
	bodytest, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		fmt.Println(err)
	}

	err1 := json.Unmarshal(bodytest, &bodytest1)

	if err1 != nil {
		fmt.Println("错误")
	}
	AccessToken0915 = "access_token=" + bodytest1.AccessToken

	fmt.Println(AccessToken0915)

}
