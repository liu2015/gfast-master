package task

import (
	"fmt"
)

// 将数据详情关键数据提取出来，并且计划存储道数据库
func ListData(data Listdetailser) {

	spno := data.Info.SpNo
	sp_name := data.Info.SpName
	apply_time := data.Info.ApplyTime

	// 这个时汇总的不用打印出来
	apply_data := data.Info.ApplyData.Contents

	var datatest string   //主体内容详情
	var userid string     //填报人id
	var useridtest string //备注人id
	var commenttime1 int  //备注的填写时间
	var commtest string   // 备注的详情

	// var userid string //填报人id

	for _, v := range apply_data {

		if v.ID == "Textarea-1589781790128" {

			datatest = v.Value.Text
		}

	}

	userid = data.Info.Applyer.Userid

	comments1 := data.Info.Comments

	for k, v := range comments1 {
		useridtest = v.CommentUserInfo.Userid
		commenttime1 = v.Commenttime
		commtest = v.Commentcontent
		if k > 0 {

			break
		}

	}

	fmt.Println("这是打印出来明细................................................................")

	fmt.Println(spno, sp_name, apply_time, userid, datatest, useridtest, commenttime1, commtest)

	fmt.Println("以上时打印出的明细................................................................")

}
