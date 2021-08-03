// ============================================================================
// This is auto-generated by gf cli tool only once. Fill this file as you wish.
// ============================================================================

package wf_business_checker

import (
	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
)

type SaveParams struct {
	FromTable    string `orm:"from_table"    json:"from_table"`    // 业务表名
	FromId       uint64 `orm:"from_id"       json:"from_id"`       // 业务id
	UserId       string `orm:"user_id"       json:"user_id"`       // 用户id
	DepartmentId string `orm:"department_id" json:"department_id"` // 部门id
}

func SaveInfo(data *SaveParams, tx *gdb.TX) error {
	_, err := Model.TX(tx).Save(data)
	if err != nil {
		g.Log().Error(err)
		return gerror.New("保存业务审批人员/部门信息失败")
	}
	return nil
}
