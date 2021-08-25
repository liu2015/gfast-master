package task

import (
	"fmt"
	"gfast/app/model/module/listinfo"

	"github.com/gogf/gf/os/gtime"
	"github.com/gogf/gf/util/gconv"
)

func Admin_data(data Adminlister) {

	var entity1 listinfo.AddReqadd

	entity1.SpNo = data.Info.SpNo
	entity1.SpName = data.Info.SpName

	// 格式化时间
	timedata := data.Info.ApplyTime
	var endtime int

	// 格式化时间
	entity1.ApplyTime = gtime.New(timedata)
	entity1.ApplyerUserid = data.Info.Applyer.Userid

	sprecordtest := gconv.String(data.Info.SpRecord)

	// 保存审核时间信息
	entity1.SpRecord = sprecordtest

	sp_statustest := data.Info.SpStatus

	fmt.Println("779797979797")
	fmt.Println(sp_statustest)

	entity1.SpRecordSpStatus = sp_statustest

	// 结构审核信息拿到关键值
	sprlist := data.Info.SpRecord

	// 过滤审核人信息
	for _, v1 := range sprlist {
		// if v1.SpStatus == 2 {
		// 审核状态
		// entity.SpRecordSpStatus = v1.SpStatus
		// entity.SpRecordSpStatus = v1.SpStatus

		for _, v := range v1.Details {

			if v.Sptime != 0 && v.SpStatus == 2 && v.Approver.Userid != "017338" && v.Approver.Userid != "jm001" && v.Approver.Userid != "004843" {
				entity1.DetailsUserid = v.Approver.Userid
				entity1.DetailsSpeech = v.Speech
				entity1.DetailsSpStatus = v.SpStatus
				timetest := gtime.New(v.Sptime)
				entity1.DetailsSptime = timetest

			}
		}

		// }
	}

	// 获得工单内容test
	contents := data.Info.ApplyData.Contents

	comment := data.Info.Comments

	for k, v := range comment {

		entity1.CommentUserid = v.CommentUserInfo.Userid
		entity1.Commentcontent = v.Commentcontent
		entity1.Commenttime = gtime.New(v.Commenttime)
		endtime = v.Commenttime
		if k > 1 {
			break
		}
	}

	for _, v := range contents {
		// 获得问题描述
		if v.ID == "Textarea-1589781790128" {
			entity1.ValueDescribe = v.Value.Text
		}
		// 获得补充标签内容
		if v.ID == "Text-1613720814093" {
			entity1.ValueLabelSup = v.Value.Text

		}

		optionstest := v.Value.Selector.Options
		// 秀谷一个问题,锚定value的值
		if v.ID == "Selector-1614775177698" {
			for _, v1 := range optionstest {
				for _, v := range v1.Value {
					entity1.ValueProble = v.Text
				}

			}

		}

		if v.ID == "Selector-1594171985029" {
			for _, v1 := range optionstest {
				for _, v := range v1.Value {
					entity1.ValueRegion = v.Text

				}
			}

		}

		// 这里取值应该是颠倒了. entity1.valuelabel 是问题定义标签
		if v.ID == "Selector-1594172032266" {
			for _, v1 := range optionstest {
				for _, v := range v1.Value {
					entity1.ValueLabel = v.Text
				}
			}
		}

	}

	if endtime != 0 {
		timetest := float64((endtime - timedata) / 60)
		entity1.Remarks = gconv.String(timetest)
	}

	listinfo.AddSaveadd(&entity1)

}
