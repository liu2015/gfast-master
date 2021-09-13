// ==========================================================================
// 生成日期：2021-09-13 07:47:27
// 生成人：gfast
// ==========================================================================

package uplisttest

import (
	"database/sql"

	"github.com/gogf/gf/database/gdb"
)

// Entity is the golang structure for table sp_uplisttest.
type Entity struct {
	Id          int    `orm:"id,primary" json:"id"`             // id
	ProblemType string `orm:"problem_type" json:"problem_type"` // 问题类型(报修类型)
	Distri      string `orm:"distri" json:"distri"`             // 工单分派(大区分派)
	Describe    string `orm:"describe" json:"describe"`         // 问题描述
	StoreType   string `orm:"store_type" json:"store_type"`     // 反馈门店
	Tel         string `orm:"tel" json:"tel"`                   // 联系人电话
	Enclosure   string `orm:"enclosure" json:"enclosure"`       // 附件
	Labelpub    string `orm:"labelpub" json:"labelpub"`         // 工单定义补充(默认信息填)
	LargeType   string `orm:"large_type" json:"large_type"`     // 备用其他
	Other       string `orm:"other" json:"other"`               // 其他
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
