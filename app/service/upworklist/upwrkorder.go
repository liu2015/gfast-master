package upworklist

import (
	"encoding/json"
	"fmt"
	"gfast/app/model/module/uplisttest"
	"gfast/app/service/admin/dict_service"
	"io/ioutil"
	"net/http"
)

var Corpidtest string
var Corpsecret1test string
var Tmvaluetest string

//公共token
var AccessToken string

type AutoGenerated struct {
	Errcode     int    `json:"errcode"`
	Errmsg      string `json:"errmsg"`
	AccessToken string `json:"access_token"`
	ExpiresIn   int    `json:"expires_in"`
}

// 这个需要重新写，应为是提交json
// 需要注意，这个是递交结构体
type Franchise1 struct {
	CreatorUserid       string `json:"creator_userid"`
	TemplateID          string `json:"template_id"`
	UseTemplateApprover int    `json:"use_template_approver"`
	ApplyData           struct {
		Contents []struct {
			Control string `json:"control"`
			ID      string `json:"id"`
			Title   []struct {
				Text string `json:"text"`
				Lang string `json:"lang"`
			} `json:"title"`
			Value struct {
				Tips        []interface{} `json:"tips"`
				Members     []interface{} `json:"members"`
				Departments []interface{} `json:"departments"`
				Files       []interface{} `json:"files"`
				Children    []interface{} `json:"children"`
				StatField   []interface{} `json:"stat_field"`
				Selector    struct {
					Type    string `json:"type"`
					Options []struct {
						Key   string `json:"key"`
						Value []struct {
							Text string `json:"text"`
							Lang string `json:"lang"`
						} `json:"value"`
					} `json:"options"`
				} `json:"selector"`
				SumField        []interface{} `json:"sum_field"`
				RelatedApproval []interface{} `json:"related_approval"`
				Students        []interface{} `json:"students"`
				Classes         []interface{} `json:"classes"`
			} `json:"value"`
		} `json:"contents"`
	} `json:"apply_data"`
	SummaryList []struct {
		SummaryInfo []struct {
			Text string `json:"text"`
			Lang string `json:"lang"`
		} `json:"summary_info"`
	} `json:"summary_list"`
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
	url := "https://qyapi.weixin.qq.com/cgi-bin/oa/applyevent?" + AccessToken

	var orderlist Franchise1

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
	orderlist.CreatorUserid = "LiuFuLing"
	orderlist.TemplateID = "3WK6uccyzQzDhu611YsgHToiZ1wGEoR2kAtHJxdC"
	orderlist.UseTemplateApprover = 1

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
	AccessToken = "access_token=" + bodytest1.AccessToken

	fmt.Println(AccessToken)

}
