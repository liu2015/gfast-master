// ==========================================================================
// 生成日期：2021-09-13 07:47:27
// 生成人：gfast
// ==========================================================================
package uplisttest_service

import (
	uplisttestModel "gfast/app/model/module/uplisttest"
)


// AddSave 添加
func AddSave(req *uplisttestModel.AddReq) error {
	return uplisttestModel.AddSave(req)
}

// DeleteByIds 删除
func DeleteByIds(Ids [] int) error {
	return uplisttestModel.DeleteByIds(Ids)
}

// EditSave 修改
func EditSave(editReq *uplisttestModel.EditReq) error {
	return uplisttestModel.EditSave(editReq)
}

// GetByID 根据ID查询
func GetByID(id int) (*uplisttestModel.Entity, error) {
	return uplisttestModel.GetByID(id)
}

// SelectListByPage 分页查询
func SelectListByPage(req *uplisttestModel.SelectPageReq) (total int, page int, list []*uplisttestModel.Entity, err error) {
	return uplisttestModel.SelectListByPage(req)
}
