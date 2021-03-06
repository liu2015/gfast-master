package task

import (
	"gfast/app/model/module/listinfo"

	"github.com/gogf/gf/os/gtime"
	"github.com/gogf/gf/util/gconv"
)

// 将数据解析出来然后保存成固定格式
func Storedata(data Storeinfo) {

	var entity listinfo.AddReqadd

	entity.SpNo = data.Info.SpNo
	entity.SpName = data.Info.SpName

	// 格式化时间
	timedata := data.Info.ApplyTime
	// timestr := time.Unix(int64(timedata), 0).Format("2006-01-02 15:04:05")
	// end时间
	var endtime int

	// gtime 格式化时间
	entity.ApplyTime = gtime.New(timedata)
	entity.ApplyerUserid = data.Info.Applyer.Userid
	sprecordtest := gconv.String(data.Info.SpRecord)
	// 保存审核信息
	entity.SpRecord = sprecordtest
	sp_statustest := data.Info.SpStatus

	entity.SpRecordSpStatus = sp_statustest

	// 解构审核信息拿到关键值
	sprlist := data.Info.SpRecord
	// 遍历
	for _, v1 := range sprlist {
		// if v1.SpStatus == 2 {
		// 审核状态
		// entity.SpRecordSpStatus = v1.SpStatus
		// entity.SpRecordSpStatus = v1.SpStatus

		for _, v := range v1.Details {

			if v.Sptime != 0 && v.SpStatus == 2 && v.Approver.Userid != "017338" && v.Approver.Userid != "jm001" && v.Approver.Userid != "004843" {
				entity.DetailsUserid = v.Approver.Userid
				entity.DetailsSpeech = v.Speech
				entity.DetailsSpStatus = v.SpStatus
				timetest := gtime.New(v.Sptime)
				entity.DetailsSptime = timetest

			}
		}

		// }
	}

	// 获得工单内容的test
	contents := data.Info.ApplyData.Contents

	// 获得备注的内容信息
	comment := data.Info.Comments
	for k, v := range comment {

		entity.CommentUserid = v.CommentUserInfo.Userid
		entity.Commentcontent = v.Commentcontent
		entity.Commenttime = gtime.New(v.Commenttime)
		endtime = v.Commenttime
		if k > 1 {
			break
		}

	}

	for _, v := range contents {

		// 获得问题描述
		if v.ID == "Textarea-1589781790128" {
			entity.ValueDescribe = v.Value.Text

		}

		// 补充标签内容
		if v.ID == "Text-1613720470861" {
			entity.ValueLabelSup = v.Value.Text
		}

		optionstest := v.Value.Selector.Options
		// 修复一个问题,用id锚定 value 的值.
		if v.ID == "Selector-1594172032266" {
			for _, v1 := range optionstest {
				for _, v := range v1.Value {
					// 报修类型
					entity.ValueProble = v.Text
				}
			}
		}

		if v.ID == "Selector-1594171985029" {
			for _, v1 := range optionstest {
				for _, v := range v1.Value {
					// 报修区域
					entity.ValueRegion = v.Text
				}
			}
		}

		if v.ID == "Selector-1614774464912" {
			for _, v1 := range optionstest {
				for _, v := range v1.Value {
					// 标签定义问题
					entity.ValueLabel = v.Text
				}
			}
		}

		// for _, v := range optionstest {

		// 	// v.Key
		// 	// option-1614774483740
		// 	if v.Key == "option-1610416725331" {
		// 		for _, v := range v.Value {
		// 			// 问题类型
		// 			entity.ValueProble = v.Text
		// 		}
		// 	}
		// 	// v.Key
		// 	if v.Key == "option-1610416643520" {
		// 		for _, v := range v.Value {
		// 			// 报修类型-区域
		// 			entity.ValueRegion = v.Text
		// 		}
		// 	}

		// 	// v.Key
		// 	if v.Key == "option-1614774483730" {
		// 		for _, v := range v.Value {
		// 			// 问题定义
		// 			entity.ValueLabel = v.Text
		// 		}
		// 	}

		// }
	}

	// 计算从发起时间到备注时间的共计耗时时间 timedata,  endtime

	if endtime != 0 {
		// 获得耗时（分钟）
		timetest := float64((endtime - timedata) / 60)

		// 计算时间并保存到结构体内
		entity.Remarks = gconv.String(timetest)
	}

	// 保存到数据库
	listinfo.AddSaveadd(&entity)

	// entity.SpRecordSpStatus = data.Info.SpRecord
	// fmt.Println("....................................77777777777777777")
	// var test listinfo.SelectPageReq
	// test.Commentcontent = ""
	// // listinfo.SelectListcat(&test)
	// // fmt.Println(entity)
	// listinfo.SelectListdom(&test)
	// fmt.Println("....................................77777777777777777")
	// fmt.Println(entity.Remarks)

	// fmt.Println(entity.CommentUserid)
	// fmt.Println(entity.Commentcontent)
	// fmt.Println(entity.Commenttime)

	// fmt.Println(entity.ValueDescribe)
	// fmt.Println(entity.ValueLabelSup)
	// fmt.Println("....................................77777777777777777")
}
