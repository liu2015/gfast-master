// ==========================================================================
// 生成日期：2021-08-02 11:26:16
// 生成人：liu
// ==========================================================================
package lib_log_service

import (
	lib_logModel "gfast/app/model/module/lib_log"
)


// AddSave 添加
func AddSave(req *lib_logModel.AddReq) error {
	return lib_logModel.AddSave(req)
}

// DeleteByIds 删除
func DeleteByIds(Ids [] int) error {
	return lib_logModel.DeleteByIds(Ids)
}

// EditSave 修改
func EditSave(editReq *lib_logModel.EditReq) error {
	return lib_logModel.EditSave(editReq)
}

// GetByID 根据ID查询
func GetByID(id int) (*lib_logModel.Entity, error) {
	return lib_logModel.GetByID(id)
}

// SelectListByPage 分页查询
func SelectListByPage(req *lib_logModel.SelectPageReq) (total int, page int, list []*lib_logModel.Entity, err error) {
	return lib_logModel.SelectListByPage(req)
}
