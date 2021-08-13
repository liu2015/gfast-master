// ==========================================================================
// 生成日期：2021-08-13 13:12:09
// 生成人：gfast
// ==========================================================================
package work_service

import (
	workModel "gfast/app/model/module/work"
)


// AddSave 添加
func AddSave(req *workModel.AddReq) error {
	return workModel.AddSave(req)
}

// DeleteByIds 删除
func DeleteByIds(Ids [] string) error {
	return workModel.DeleteByIds(Ids)
}

// EditSave 修改
func EditSave(editReq *workModel.EditReq) error {
	return workModel.EditSave(editReq)
}

// GetByID 根据ID查询
func GetByID(id string) (*workModel.Entity, error) {
	return workModel.GetByID(id)
}

// SelectListByPage 分页查询
func SelectListByPage(req *workModel.SelectPageReq) (total int, page int, list []*workModel.Entity, err error) {
	return workModel.SelectListByPage(req)
}
