// ==========================================================================
// 生成日期：2021-08-11 15:54:08
// 生成人：gfast
// ==========================================================================
package nolist_service

import (
	nolistModel "gfast/app/model/module/nolist"
)

// AddSave 添加
func AddSave(req *nolistModel.AddReq) error {
	return nolistModel.AddSave(req)
}

// DeleteByIds 删除
func DeleteByIds(Ids []string) error {
	return nolistModel.DeleteByIds(Ids)
}

// EditSave 修改
func EditSave(editReq *nolistModel.EditReq) error {
	return nolistModel.EditSave(editReq)
}

// GetByID 根据ID查询
func GetByID(id string) (*nolistModel.Entity, error) {
	return nolistModel.GetByID(id)
}

// SelectListByPage 分页查询
func SelectListByPage(req *nolistModel.SelectPageReq) (total int, page int, list []*nolistModel.Entity, err error) {
	return nolistModel.SelectListByPage(req)
}

// // 查询返回的操作数据
// func SelectListAll(req *nolistModel.SelectPageReq) (list []*nolistModel.Entity, err error) {

// 	return nolistModel.SelectListAll(req)

// }
