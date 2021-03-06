package task

import (
	"encoding/json"
	"fmt"

	"github.com/gogf/gf/frame/g"
)

type Listdetailser struct {
	Errcode int    `json:"errcode"`
	Errmsg  string `json:"errmsg"`
	Info    struct {
		SpNo       string `json:"sp_no"`
		SpName     string `json:"sp_name"`
		SpStatus   int    `json:"sp_status"`
		TemplateID string `json:"template_id"`
		ApplyTime  int    `json:"apply_time"`
		Applyer    struct {
			Userid  string `json:"userid"`
			Partyid string `json:"partyid"`
		} `json:"applyer"`
		SpRecord []struct {
			SpStatus     int `json:"sp_status"`
			Approverattr int `json:"approverattr"`
			Details      []struct {
				Approver struct {
					Userid string `json:"userid"`
				} `json:"approver"`
				Speech   string        `json:"speech"`
				SpStatus int           `json:"sp_status"`
				Sptime   int           `json:"sptime"`
				MediaID  []interface{} `json:"media_id"`
			} `json:"details"`
		} `json:"sp_record"`
		Notifyer []struct {
			Userid string `json:"userid"`
		} `json:"notifyer"`
		ApplyData struct {
			Contents []struct {
				Control string `json:"control"`
				ID      string `json:"id"`
				Title   []struct {
					Text string `json:"text"`
					Lang string `json:"lang"`
				} `json:"title"`
				Value struct {
					Text            string        `json:"text"`
					Tips            []interface{} `json:"tips"`
					Members         []interface{} `json:"members"`
					Departments     []interface{} `json:"departments"`
					Files           []interface{} `json:"files"`
					Children        []interface{} `json:"children"`
					StatField       []interface{} `json:"stat_field"`
					SumField        []interface{} `json:"sum_field"`
					RelatedApproval []interface{} `json:"related_approval"`
					Students        []interface{} `json:"students"`
					Classes         []interface{} `json:"classes"`
				} `json:"value"`
			} `json:"contents"`
		} `json:"apply_data"`
		Comments []struct {
			CommentUserInfo struct {
				Userid string `json:"userid"`
			} `json:"commentUserInfo"`
			Commenttime    int           `json:"commenttime"`
			Commentcontent string        `json:"commentcontent"`
			Commentid      string        `json:"commentid"`
			MediaID        []interface{} `json:"media_id"`
		} `json:"comments"`
	} `json:"info"`
}

func ListDetails(sp_no string) {

	url := "https://qyapi.weixin.qq.com/cgi-bin/oa/getapprovaldetail?" + AccessToken

	datae := make(map[string]string)
	datae["sp_no"] = sp_no

	datatest, err := json.Marshal(datae)

	resp, err := g.Client().Post(url, datatest)
	if err != nil {
		fmt.Println(err)
	}
	defer resp.Close()

	var listdetais Listdetailser

	body := resp.ReadAll()
	// ??????json????????????
	err = json.Unmarshal(body, &listdetais)

	ListData(listdetais)
	// ??????data??????
	// ApplyData := listdetais.Info.ApplyData

	// fmt.Println(err)

	// ????????????
	// logtest := g.Log("logger")
	// logtest.Info(listdetais)
	// l.Debug(listdetais)
	// ??????????????????
	// fmt.Println(listdetais)

}
