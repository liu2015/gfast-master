// ==========================================================================
// 生成日期：2021-08-11 15:54:08
// 生成人：gfast
// ==========================================================================

package nolist

import (
	"database/sql"

	"github.com/gogf/gf/database/gdb"
)

// Entity is the golang structure for table sp_nolist.
type Entity struct {
	SpNo         string `orm:"sp_no,primary" json:"sp_no"`       // 单号
	SpName       string `orm:"sp_name" json:"sp_name"`           // 单名
	ApplyTime    int    `orm:"apply_time" json:"apply_time"`     // 发起时间
	Userid       string `orm:"userid" json:"userid"`             // 填报人id
	Datatest     string `orm:"datatest" json:"datatest"`         // 主体内容详情
	Useridtest   string `orm:"useridtest" json:"useridtest"`     // 备注人id
	Commenttimel int    `orm:"commenttimel" json:"commenttimel"` // 备注填写时间
	Commtest     string `orm:"commtest" json:"commtest"`         // 备注的详情
	Spare        string `orm:"spare" json:"spare"`               // 备用
	Spare1       string `orm:"spare1" json:"spare1"`             // 备用1
}

// OmitEmpty sets OPTION_OMITEMPTY option for the model, which automatically filers
// the data and where attributes for empty values.
// Deprecated.
func (r *Entity) OmitEmpty() *arModel {
	return Model.Data(r).OmitEmpty()
}

// Inserts does "INSERT...INTO..." statement for inserting current object into table.
// Deprecated.
func (r *Entity) Insert() (result sql.Result, err error) {
	return Model.Data(r).Insert()
}

// InsertIgnore does "INSERT IGNORE INTO ..." statement for inserting current object into table.
// Deprecated.
func (r *Entity) InsertIgnore() (result sql.Result, err error) {
	return Model.Data(r).InsertIgnore()
}

// Replace does "REPLACE...INTO..." statement for inserting current object into table.
// If there's already another same record in the table (it checks using primary key or unique index),
// it deletes it and insert this one.
// Deprecated.
func (r *Entity) Replace() (result sql.Result, err error) {
	return Model.Data(r).Replace()
}

// Save does "INSERT...INTO..." statement for inserting/updating current object into table.
// It updates the record if there's already another same record in the table
// (it checks using primary key or unique index).
// Deprecated.
func (r *Entity) Save() (result sql.Result, err error) {
	return Model.Data(r).Save()
}

// Update does "UPDATE...WHERE..." statement for updating current object from table.
// It updates the record if there's already another same record in the table
// (it checks using primary key or unique index).
// Deprecated.
func (r *Entity) Update() (result sql.Result, err error) {
	where, args, err := gdb.GetWhereConditionOfStruct(r)
	if err != nil {
		return nil, err
	}
	return Model.Data(r).Where(where, args).Update()
}

// Delete does "DELETE FROM...WHERE..." statement for deleting current object from table.
// Deprecated.
func (r *Entity) Delete() (result sql.Result, err error) {
	where, args, err := gdb.GetWhereConditionOfStruct(r)
	if err != nil {
		return nil, err
	}
	return Model.Where(where, args).Delete()
}
