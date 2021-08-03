// ==========================================================================
// 生成日期：2021-08-02 15:29:27
// 生成人：gfast
// ==========================================================================

package link

import (
	"database/sql"

	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/os/gtime"
)

// Entity is the golang structure for table lib_link.
type Entity struct {
	 
	LinkId		int	`orm:"link_id,primary" json:"link_id"`	// 列表id  
	LinkName		string	`orm:"link_name" json:"link_name"`	// 列表名称  
	LinkUrl		string	`orm:"link_url" json:"link_url"`	// 本地运行路径  
	LinkZip		int	`orm:"link_zip" json:"link_zip"`	// 是否需要解压  
	LinkBrief		string	`orm:"link_brief" json:"link_brief"`	// 简介  
	LinkContent		string	`orm:"link_content" json:"link_content"`	// 内容  
	LinkEdit		int	`orm:"link_edit" json:"link_edit"`	// 版本  
	LinkDewurl		string	`orm:"link_dewurl" json:"link_dewurl"`	// 下载脚本库地址  
	LinkRemak		string	`orm:"link_remak" json:"link_remak"`	// 备注  
	LinkAddtime		*gtime.Time	`orm:"link_addtime" json:"link_addtime"`	// 添加时间  
	LinkOpen		int	`orm:"link_open" json:"link_open"`	// 是否禁用  
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
