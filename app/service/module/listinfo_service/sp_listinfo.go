// ==========================================================================
// 生成日期：2021-08-13 14:38:11
// 生成人：gfast
// ==========================================================================
package listinfo_service

import (
	listinfoModel "gfast/app/model/module/listinfo"
)

// AddSave 添加
func AddSave(req *listinfoModel.AddReq) error {
	return listinfoModel.AddSave(req)
}

// DeleteByIds 删除
func DeleteByIds(Ids []string) error {
	return listinfoModel.DeleteByIds(Ids)
}

// EditSave 修改
func EditSave(editReq *listinfoModel.EditReq) error {
	return listinfoModel.EditSave(editReq)
}

// GetByID 根据ID查询
func GetByID(id string) (*listinfoModel.Entity, error) {
	return listinfoModel.GetByID(id)
}

// SelectListByPage 分页查询
func SelectListByPage(req *listinfoModel.SelectPageReq) (total int, page int, list []*listinfoModel.Entity, err error) {
	return listinfoModel.SelectListByPage(req)
}

// SelectList 饼状图数据
func SelectListpic(req *listinfoModel.SelectPageReq) (test []map[string]interface{}, err error) {
	return listinfoModel.SelectListpic(req)
}

// SelectListcat
// SelectList 饼状图数据
func SelectListcat(req *listinfoModel.SelectPageReq) (Nametest1 []string, Valuetest1 []int, err error) {

	// 遍历结果集，然后拆分成两个
	test1, err := listinfoModel.SelectListcat(req)

	// 初始化数组结果
	var Nametest []string
	Nametest = make([]string, 0)
	var Valuetest []int
	Valuetest = make([]int, 0)

	for _, v := range test1 {
		Nametest = append(Nametest, v.Name)
		Valuetest = append(Valuetest, v.Value)

	}

	return Nametest, Valuetest, err
}
