// ==========================================================================
// 生成日期：2021-08-02 15:51:19
// 生成人：gfast
// ==========================================================================

package rary

import (
	"database/sql"

	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/os/gtime"
)

// Entity is the golang structure for table lib_rary.
type Entity struct {
	 
	LibId		int	`orm:"lib_id,primary" json:"lib_id"`	// 脚本id  
	LibName		string	`orm:"lib_name" json:"lib_name"`	// 脚本名字  
	LibRul		string	`orm:"lib_rul" json:"lib_rul"`	// 脚本上传路径  
	LibZip		string	`orm:"lib_zip" json:"lib_zip"`	// 是否解压  
	LibBrief		string	`orm:"lib_brief" json:"lib_brief"`	// 简介  
	LibContent		string	`orm:"lib_content" json:"lib_content"`	// 内容  
	LibAddtime		*gtime.Time	`orm:"lib_addtime" json:"lib_addtime"`	// 添加时间  
	LibOpen		int	`orm:"lib_open" json:"lib_open"`	// 是否禁用  
	LibEdit		int	`orm:"lib_edit" json:"lib_edit"`	// 版本  
	LibRemk		string	`orm:"lib_remk" json:"lib_remk"`	// 备注  
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
