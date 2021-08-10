package task

import "fmt"

// 将数据详情关键数据提取出来，并且计划存储道数据库
func ListData(data Listdetailser) {

	spno := data.Info.SpNo
	sp_name := data.Info.SpName
	apply_time := data.Info.ApplyTime

	// 这个时汇总的不用打印出来
	apply_data := data.Info.ApplyData.Contents

	var datatest string

	var useridtest string
	var commenttime1 int
	var commtest string

	for _, v := range apply_data {

		if v.ID == "Textarea-1589781790128" {

			datatest = v.Value.Text
		}

	}
	comments1 := data.Info.Comments

	for _, v := range comments1 {
		useridtest = v.CommentUserInfo.Userid
		commenttime1 = v.Commenttime
		commtest = v.Commentcontent

	}

	fmt.Println("这是打印出来明细................................................................")

	fmt.Println(spno, sp_name, apply_time, datatest, useridtest, commenttime1, commtest)
	fmt.Println("以上时打印出的明细................................................................")

}
