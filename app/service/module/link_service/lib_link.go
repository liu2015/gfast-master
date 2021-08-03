// ==========================================================================
// 生成日期：2021-08-02 15:29:27
// 生成人：gfast
// ==========================================================================
package link_service

import (
	linkModel "gfast/app/model/module/link"
)


// AddSave 添加
func AddSave(req *linkModel.AddReq) error {
	return linkModel.AddSave(req)
}

// DeleteByIds 删除
func DeleteByIds(Ids [] int) error {
	return linkModel.DeleteByIds(Ids)
}

// EditSave 修改
func EditSave(editReq *linkModel.EditReq) error {
	return linkModel.EditSave(editReq)
}

// GetByID 根据ID查询
func GetByID(id int) (*linkModel.Entity, error) {
	return linkModel.GetByID(id)
}

// SelectListByPage 分页查询
func SelectListByPage(req *linkModel.SelectPageReq) (total int, page int, list []*linkModel.Entity, err error) {
	return linkModel.SelectListByPage(req)
}
