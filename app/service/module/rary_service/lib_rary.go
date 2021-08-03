// ==========================================================================
// 生成日期：2021-08-02 15:51:19
// 生成人：gfast
// ==========================================================================
package rary_service

import (
	raryModel "gfast/app/model/module/rary"
)


// AddSave 添加
func AddSave(req *raryModel.AddReq) error {
	return raryModel.AddSave(req)
}

// DeleteByIds 删除
func DeleteByIds(Ids [] int) error {
	return raryModel.DeleteByIds(Ids)
}

// EditSave 修改
func EditSave(editReq *raryModel.EditReq) error {
	return raryModel.EditSave(editReq)
}

// GetByID 根据ID查询
func GetByID(id int) (*raryModel.Entity, error) {
	return raryModel.GetByID(id)
}

// SelectListByPage 分页查询
func SelectListByPage(req *raryModel.SelectPageReq) (total int, page int, list []*raryModel.Entity, err error) {
	return raryModel.SelectListByPage(req)
}
