// ==========================================================================
// 生成日期：2021-08-19 14:03:58
// 生成人：gfast
// ==========================================================================
package texu_up_service

import (
	texu_upModel "gfast/app/model/module/texu_up"
)


// AddSave 添加
func AddSave(req *texu_upModel.AddReq) error {
	return texu_upModel.AddSave(req)
}

// DeleteByIds 删除
func DeleteByIds(Ids [] int) error {
	return texu_upModel.DeleteByIds(Ids)
}

// EditSave 修改
func EditSave(editReq *texu_upModel.EditReq) error {
	return texu_upModel.EditSave(editReq)
}

// GetByID 根据ID查询
func GetByID(id int) (*texu_upModel.Entity, error) {
	return texu_upModel.GetByID(id)
}

// SelectListByPage 分页查询
func SelectListByPage(req *texu_upModel.SelectPageReq) (total int, page int, list []*texu_upModel.Entity, err error) {
	return texu_upModel.SelectListByPage(req)
}
