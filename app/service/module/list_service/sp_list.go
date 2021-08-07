// ==========================================================================
// 生成日期：2021-08-07 14:29:41
// 生成人：liu
// ==========================================================================
package list_service

import (
	listModel "gfast/app/model/module/list"
)


// AddSave 添加
func AddSave(req *listModel.AddReq) error {
	return listModel.AddSave(req)
}

// DeleteByIds 删除
func DeleteByIds(Ids [] string) error {
	return listModel.DeleteByIds(Ids)
}

// EditSave 修改
func EditSave(editReq *listModel.EditReq) error {
	return listModel.EditSave(editReq)
}

// GetByID 根据ID查询
func GetByID(id string) (*listModel.Entity, error) {
	return listModel.GetByID(id)
}

// SelectListByPage 分页查询
func SelectListByPage(req *listModel.SelectPageReq) (total int, page int, list []*listModel.Entity, err error) {
	return listModel.SelectListByPage(req)
}
