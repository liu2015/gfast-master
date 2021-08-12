package task

import (
	"fmt"
	"gfast/app/model/module/nolist"
	"time"
)

// 将数据详情关键数据提取出来，并且计划存储道数据库
func ListData(data Listdetailser) {

	var entity1 nolist.AddReq1

	entity1.SpNo = data.Info.SpNo
	entity1.SpName = data.Info.SpName
	entity1.ApplyTime = data.Info.ApplyTime

	// 这个时汇总的不用打印出来
	apply_data := data.Info.ApplyData.Contents
	// var userid string     //填报人id
	// var datatest string   //主体内容详情
	// var useridtest string //备注人id
	// var commenttime1 int  //备注的填写时间
	// var commtest string   // 备注的详情

	// var userid string //填报人id

	for _, v := range apply_data {

		if v.ID == "Textarea-1589781790128" {

			entity1.Datatest = v.Value.Text
		}

	}

	entity1.Userid = data.Info.Applyer.Userid

	comments1 := data.Info.Comments

	for k, v := range comments1 {
		entity1.Useridtest = v.CommentUserInfo.Userid
		entity1.Commenttimel = v.Commenttime
		entity1.Commtest = v.Commentcontent
		if k > 0 {

			break
		}

	}

	fmt.Println("这是打印出来明细................................................................")

	// nolist.AddReq1(entity1)
	nolist.AddSave1(&entity1)
	fmt.Println(entity1.ApplyTime)
	exe64 := int64(entity1.ApplyTime)
	fmt.Println(exe64)
	exe641 := time.Unix(exe64, 0)
	fmt.Println(exe641)
	fmt.Println("以上时打印出的明细................................................................")

	// var req nolist.AddReq1

	// nolist.SelectListAll()

}
