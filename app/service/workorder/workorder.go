package workorder

import (
	"encoding/json"
	"fmt"
	texu_upModel "gfast/app/model/module/texu_up"
	"gfast/app/service/admin/dict_service"
	"io/ioutil"
	"net/http"

	"github.com/gogf/gf/net/ghttp"
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

// 解析发送申请的格式
type Franchise1 struct {
	CreatorUserid       string `json:"creator_userid"`
	TemplateID          string `json:"template_id"`
	UseTemplateApprover int    `json:"use_template_approver"`

	ApplyData struct {
		Contents []struct {
			Control string `json:"control"`
			ID      string `json:"id"`
			Title   []struct {
				Text string `json:"text"`
				Lang string `json:"lang"`
			} `json:"title"`
			Value struct {
				Text        string        `json:"text"`
				Tips        []interface{} `json:"tips"`
				Members     []interface{} `json:"members"`
				Departments []interface{} `json:"departments"`
				Files       []struct {
					FileID string `json:"file_id"`
				} `json:"files"`
				Children  []interface{} `json:"children"`
				StatField []interface{} `json:"stat_field"`
				Selector  struct {
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
			} `json:"value,omitempty"`
		} `json:"contents"`
	} `json:"apply_data"`
	SummaryList []struct {
		SummaryInfo []struct {
			Text string `json:"text"`
			Lang string `json:"lang"`
		} `json:"summary_info"`
	} `json:"summary_list"`
}

type Contents1 []struct {
	Control string `json:"control"`
	ID      string `json:"id"`
	Title   []struct {
		Text string `json:"text"`
		Lang string `json:"lang"`
	} `json:"title"`
	Value struct {
		Text        string        `json:"text"`
		Tips        []interface{} `json:"tips"`
		Members     []interface{} `json:"members"`
		Departments []interface{} `json:"departments"`
		Files       []struct {
			FileID string `json:"file_id"`
		} `json:"files"`
		Children  []interface{} `json:"children"`
		StatField []interface{} `json:"stat_field"`
		Selector  struct {
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
	} `json:"value,omitempty"`
}

// 获得token
func Workorder(req *texu_upModel.AddReq) {

	// 获得请求企业微信的token 然后推送申请
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
	tmvalue, err := dict_service.GetDictDataById(86)

	if err != nil {
		fmt.Println("获取失败")
	}
	Tmvaluetest = tmvalue.DictValue

	Weixintoken()

	// 执行递交表单内容到工单模板

	Addorder(req)

}
func Addorder(usertest1 *texu_upModel.AddReq) {

	url := "https://qyapi.weixin.qq.com/cgi-bin/oa/applyevent?" + AccessToken

	var orderlist Franchise1

	var testdaqu string
	distrttest := usertest1.Distri

	switch distrttest {

	case "华中大区":
		testdaqu = "option-1629341050876"
	case "湖北大区":
		testdaqu = "option-1629341050877"
	case "华南大区":
		testdaqu = "option-1629341050878"
	case "华西大区":
		testdaqu = "option-1629341050879"
	case "华东大区":
		testdaqu = "option-1629341050880"
	case "华北大区":
		testdaqu = "option-1629341050881"

	}

	orderlist.CreatorUserid = "LiuFuLing"
	orderlist.TemplateID = "ZM7aMJxR35G44VxyUcaHhc2t1e7t9u5tUog83m"
	orderlist.UseTemplateApprover = 1
	// ApplyData1 := orderlist.ApplyData.Contents

	// var Contents1 Contents1
	// Contents1 = append(Contents1)

	// // 组装 订单的主体内容
	// err := gconv.Scan(Data, &Contents1)
	// fmt.Println(err)
	// fmt.Println(Contents1)

	// ApplyData1 = append(ApplyData1, Contents1...)

	// fmt.Println(ApplyData1)

	applydata1 := orderlist.ApplyData

	// gconv.Scan(Data, applydata1)

	applydata1.Contents = append(applydata1.Contents, struct {
		Control string "json:\"control\""
		ID      string "json:\"id\""
		Title   []struct {
			Text string "json:\"text\""
			Lang string "json:\"lang\""
		} "json:\"title\""
		Value struct {
			Text        string        "json:\"text\""
			Tips        []interface{} "json:\"tips\""
			Members     []interface{} "json:\"members\""
			Departments []interface{} "json:\"departments\""
			Files       []struct {
				FileID string "json:\"file_id\""
			} "json:\"files\""
			Children  []interface{} "json:\"children\""
			StatField []interface{} "json:\"stat_field\""
			Selector  struct {
				Type    string "json:\"type\""
				Options []struct {
					Key   string "json:\"key\""
					Value []struct {
						Text string "json:\"text\""
						Lang string "json:\"lang\""
					} "json:\"value\""
				} "json:\"options\""
			} "json:\"selector\""
			SumField        []interface{} "json:\"sum_field\""
			RelatedApproval []interface{} "json:\"related_approval\""
			Students        []interface{} "json:\"students\""
			Classes         []interface{} "json:\"classes\""
		} "json:\"value,omitempty\""
	}{
		Control: "Text",
		ID:      "Text-1629340641051",
		Title: []struct {
			Text string "json:\"text\""
			Lang string "json:\"lang\""
		}{
			struct {
				Text string "json:\"text\""
				Lang string "json:\"lang\""
			}{
				Text: "问题类型",
				Lang: "zh_CN",
			},
		},
		Value: struct {
			Text        string        "json:\"text\""
			Tips        []interface{} "json:\"tips\""
			Members     []interface{} "json:\"members\""
			Departments []interface{} "json:\"departments\""
			Files       []struct {
				FileID string "json:\"file_id\""
			} "json:\"files\""
			Children  []interface{} "json:\"children\""
			StatField []interface{} "json:\"stat_field\""
			Selector  struct {
				Type    string "json:\"type\""
				Options []struct {
					Key   string "json:\"key\""
					Value []struct {
						Text string "json:\"text\""
						Lang string "json:\"lang\""
					} "json:\"value\""
				} "json:\"options\""
			} "json:\"selector\""
			SumField        []interface{} "json:\"sum_field\""
			RelatedApproval []interface{} "json:\"related_approval\""
			Students        []interface{} "json:\"students\""
			Classes         []interface{} "json:\"classes\""
		}{
			Text: usertest1.ProblemType,
		},
	}, struct {
		Control string "json:\"control\""
		ID      string "json:\"id\""
		Title   []struct {
			Text string "json:\"text\""
			Lang string "json:\"lang\""
		} "json:\"title\""
		Value struct {
			Text        string        "json:\"text\""
			Tips        []interface{} "json:\"tips\""
			Members     []interface{} "json:\"members\""
			Departments []interface{} "json:\"departments\""
			Files       []struct {
				FileID string "json:\"file_id\""
			} "json:\"files\""
			Children  []interface{} "json:\"children\""
			StatField []interface{} "json:\"stat_field\""
			Selector  struct {
				Type    string "json:\"type\""
				Options []struct {
					Key   string "json:\"key\""
					Value []struct {
						Text string "json:\"text\""
						Lang string "json:\"lang\""
					} "json:\"value\""
				} "json:\"options\""
			} "json:\"selector\""
			SumField        []interface{} "json:\"sum_field\""
			RelatedApproval []interface{} "json:\"related_approval\""
			Students        []interface{} "json:\"students\""
			Classes         []interface{} "json:\"classes\""
		} "json:\"value,omitempty\""
	}{
		Control: "Text",
		ID:      "Text-1629340655835",
		Title: []struct {
			Text string "json:\"text\""
			Lang string "json:\"lang\""
		}{
			struct {
				Text string "json:\"text\""
				Lang string "json:\"lang\""
			}{
				Text: "大区分类",
				Lang: "zh_CN",
			},
		}, Value: struct {
			Text        string        "json:\"text\""
			Tips        []interface{} "json:\"tips\""
			Members     []interface{} "json:\"members\""
			Departments []interface{} "json:\"departments\""
			Files       []struct {
				FileID string "json:\"file_id\""
			} "json:\"files\""
			Children  []interface{} "json:\"children\""
			StatField []interface{} "json:\"stat_field\""
			Selector  struct {
				Type    string "json:\"type\""
				Options []struct {
					Key   string "json:\"key\""
					Value []struct {
						Text string "json:\"text\""
						Lang string "json:\"lang\""
					} "json:\"value\""
				} "json:\"options\""
			} "json:\"selector\""
			SumField        []interface{} "json:\"sum_field\""
			RelatedApproval []interface{} "json:\"related_approval\""
			Students        []interface{} "json:\"students\""
			Classes         []interface{} "json:\"classes\""
		}{
			Text: usertest1.LargeType,
		},
	},
		struct {
			Control string "json:\"control\""
			ID      string "json:\"id\""
			Title   []struct {
				Text string "json:\"text\""
				Lang string "json:\"lang\""
			} "json:\"title\""
			Value struct {
				Text        string        "json:\"text\""
				Tips        []interface{} "json:\"tips\""
				Members     []interface{} "json:\"members\""
				Departments []interface{} "json:\"departments\""
				Files       []struct {
					FileID string "json:\"file_id\""
				} "json:\"files\""
				Children  []interface{} "json:\"children\""
				StatField []interface{} "json:\"stat_field\""
				Selector  struct {
					Type    string "json:\"type\""
					Options []struct {
						Key   string "json:\"key\""
						Value []struct {
							Text string "json:\"text\""
							Lang string "json:\"lang\""
						} "json:\"value\""
					} "json:\"options\""
				} "json:\"selector\""
				SumField        []interface{} "json:\"sum_field\""
				RelatedApproval []interface{} "json:\"related_approval\""
				Students        []interface{} "json:\"students\""
				Classes         []interface{} "json:\"classes\""
			} "json:\"value,omitempty\""
		}{
			Control: "Text",
			ID:      "Text-1629340678019",
			Title: []struct {
				Text string "json:\"text\""
				Lang string "json:\"lang\""
			}{
				struct {
					Text string "json:\"text\""
					Lang string "json:\"lang\""
				}{
					Text: "问题描述",
					Lang: "zh_CN",
				},
			}, Value: struct {
				Text        string        "json:\"text\""
				Tips        []interface{} "json:\"tips\""
				Members     []interface{} "json:\"members\""
				Departments []interface{} "json:\"departments\""
				Files       []struct {
					FileID string "json:\"file_id\""
				} "json:\"files\""
				Children  []interface{} "json:\"children\""
				StatField []interface{} "json:\"stat_field\""
				Selector  struct {
					Type    string "json:\"type\""
					Options []struct {
						Key   string "json:\"key\""
						Value []struct {
							Text string "json:\"text\""
							Lang string "json:\"lang\""
						} "json:\"value\""
					} "json:\"options\""
				} "json:\"selector\""
				SumField        []interface{} "json:\"sum_field\""
				RelatedApproval []interface{} "json:\"related_approval\""
				Students        []interface{} "json:\"students\""
				Classes         []interface{} "json:\"classes\""
			}{

				Text: usertest1.Describe,
			},
		},
		struct {
			Control string "json:\"control\""
			ID      string "json:\"id\""
			Title   []struct {
				Text string "json:\"text\""
				Lang string "json:\"lang\""
			} "json:\"title\""
			Value struct {
				Text        string        "json:\"text\""
				Tips        []interface{} "json:\"tips\""
				Members     []interface{} "json:\"members\""
				Departments []interface{} "json:\"departments\""
				Files       []struct {
					FileID string "json:\"file_id\""
				} "json:\"files\""
				Children  []interface{} "json:\"children\""
				StatField []interface{} "json:\"stat_field\""
				Selector  struct {
					Type    string "json:\"type\""
					Options []struct {
						Key   string "json:\"key\""
						Value []struct {
							Text string "json:\"text\""
							Lang string "json:\"lang\""
						} "json:\"value\""
					} "json:\"options\""
				} "json:\"selector\""
				SumField        []interface{} "json:\"sum_field\""
				RelatedApproval []interface{} "json:\"related_approval\""
				Students        []interface{} "json:\"students\""
				Classes         []interface{} "json:\"classes\""
			} "json:\"value,omitempty\""
		}{
			Control: "Text",
			ID:      "Text-1629341737680",
			Title: []struct {
				Text string "json:\"text\""
				Lang string "json:\"lang\""
			}{
				struct {
					Text string "json:\"text\""
					Lang string "json:\"lang\""
				}{
					Text: "工单定义补充",
					Lang: "zh_CN",
				},
			}, Value: struct {
				Text        string        "json:\"text\""
				Tips        []interface{} "json:\"tips\""
				Members     []interface{} "json:\"members\""
				Departments []interface{} "json:\"departments\""
				Files       []struct {
					FileID string "json:\"file_id\""
				} "json:\"files\""
				Children  []interface{} "json:\"children\""
				StatField []interface{} "json:\"stat_field\""
				Selector  struct {
					Type    string "json:\"type\""
					Options []struct {
						Key   string "json:\"key\""
						Value []struct {
							Text string "json:\"text\""
							Lang string "json:\"lang\""
						} "json:\"value\""
					} "json:\"options\""
				} "json:\"selector\""
				SumField        []interface{} "json:\"sum_field\""
				RelatedApproval []interface{} "json:\"related_approval\""
				Students        []interface{} "json:\"students\""
				Classes         []interface{} "json:\"classes\""
			}{

				Text: usertest1.Labelpub,
			},
		}, struct {
			Control string "json:\"control\""
			ID      string "json:\"id\""
			Title   []struct {
				Text string "json:\"text\""
				Lang string "json:\"lang\""
			} "json:\"title\""
			Value struct {
				Text        string        "json:\"text\""
				Tips        []interface{} "json:\"tips\""
				Members     []interface{} "json:\"members\""
				Departments []interface{} "json:\"departments\""
				Files       []struct {
					FileID string "json:\"file_id\""
				} "json:\"files\""
				Children  []interface{} "json:\"children\""
				StatField []interface{} "json:\"stat_field\""
				Selector  struct {
					Type    string "json:\"type\""
					Options []struct {
						Key   string "json:\"key\""
						Value []struct {
							Text string "json:\"text\""
							Lang string "json:\"lang\""
						} "json:\"value\""
					} "json:\"options\""
				} "json:\"selector\""
				SumField        []interface{} "json:\"sum_field\""
				RelatedApproval []interface{} "json:\"related_approval\""
				Students        []interface{} "json:\"students\""
				Classes         []interface{} "json:\"classes\""
			} "json:\"value,omitempty\""
		}{
			Control: "Selector",
			ID:      "Selector-1629340996175",
			Title: []struct {
				Text string "json:\"text\""
				Lang string "json:\"lang\""
			}{
				struct {
					Text string "json:\"text\""
					Lang string "json:\"lang\""
				}{
					Text: "工单分派",
					Lang: "zh_CN",
				},
			}, Value: struct {
				Text        string        "json:\"text\""
				Tips        []interface{} "json:\"tips\""
				Members     []interface{} "json:\"members\""
				Departments []interface{} "json:\"departments\""
				Files       []struct {
					FileID string "json:\"file_id\""
				} "json:\"files\""
				Children  []interface{} "json:\"children\""
				StatField []interface{} "json:\"stat_field\""
				Selector  struct {
					Type    string "json:\"type\""
					Options []struct {
						Key   string "json:\"key\""
						Value []struct {
							Text string "json:\"text\""
							Lang string "json:\"lang\""
						} "json:\"value\""
					} "json:\"options\""
				} "json:\"selector\""
				SumField        []interface{} "json:\"sum_field\""
				RelatedApproval []interface{} "json:\"related_approval\""
				Students        []interface{} "json:\"students\""
				Classes         []interface{} "json:\"classes\""
			}{
				Selector: struct {
					Type    string "json:\"type\""
					Options []struct {
						Key   string "json:\"key\""
						Value []struct {
							Text string "json:\"text\""
							Lang string "json:\"lang\""
						} "json:\"value\""
					} "json:\"options\""
				}{
					Type: "single",
					Options: []struct {
						Key   string "json:\"key\""
						Value []struct {
							Text string "json:\"text\""
							Lang string "json:\"lang\""
						} "json:\"value\""
					}{
						struct {
							Key   string "json:\"key\""
							Value []struct {
								Text string "json:\"text\""
								Lang string "json:\"lang\""
							} "json:\"value\""
						}{
							Key: testdaqu, Value: []struct {
								Text string "json:\"text\""
								Lang string "json:\"lang\""
							}{
								struct {
									Text string "json:\"text\""
									Lang string "json:\"lang\""
								}{
									Text: usertest1.Distri,
									Lang: "zh_CN",
								},
							},
						},
					},
				},
			},
		},
	)

	SummaryList1 := orderlist.SummaryList
	SummaryList1 = append(SummaryList1, struct {
		SummaryInfo []struct {
			Text string "json:\"text\""
			Lang string "json:\"lang\""
		} "json:\"summary_info\""
	}{
		SummaryInfo: []struct {
			Text string "json:\"text\""
			Lang string "json:\"lang\""
		}{
			struct {
				Text string "json:\"text\""
				Lang string "json:\"lang\""
			}{
				Text: "这是一个测试",
				Lang: "这是一个测试",
			},
		},
	})

	orderlist.ApplyData = applydata1
	orderlist.SummaryList = SummaryList1

	fmt.Println(orderlist)

	fmt.Println("..................")
	jsontest, err := json.Marshal(&orderlist)

	resp, err := ghttp.Post(url, jsontest)

	if err != nil {
		fmt.Println("错误在这里", err)
	}
	fmt.Println(resp.ReadAllString())

	defer resp.Close()

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
