// ==========================================================================
// 生成日期：2021-08-13 14:38:11
// 生成人：gfast
// ==========================================================================

package listinfo

import (
	"database/sql"

	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/os/gtime"
)

// Entity is the golang structure for table sp_listinfo.
type Entity struct {
	 
	SpNo		string	`orm:"sp_no,primary" json:"sp_no"`	// 单号  
	SpName		string	`orm:"sp_name" json:"sp_name"`	// 门店问题工单名字  
	ApplyTime		*gtime.Time	`orm:"apply_time" json:"apply_time"`	// 发起时间  
	ApplyerUserid		string	`orm:"applyer_userid" json:"applyer_userid"`	// 发起用户id  
	SpRecord		string	`orm:"sp_record" json:"sp_record"`	// 审批详情数组  
	SpRecordSpStatus		int	`orm:"sp_record_sp_status" json:"sp_record_sp_status"`	// 审批状态  
	DetailsUserid		string	`orm:"details_userid" json:"details_userid"`	// 审批人id  
	DetailsSpeech		string	`orm:"details_speech" json:"details_speech"`	// 审批意见  
	DetailsSpStatus		int	`orm:"details_sp_status" json:"details_sp_status"`	// 分支审批状态2是同意状态  
	DetailsSptime		*gtime.Time	`orm:"details_sptime" json:"details_sptime"`	// 审批时间  
	ValueProble		string	`orm:"value_proble" json:"value_proble"`	// 问题类型  
	ValueRepair		string	`orm:"value_repair" json:"value_repair"`	// 报修类型  
	ValueRegion		string	`orm:"value_region" json:"value_region"`	// 报修区域  
	ValueDescribe		string	`orm:"value_describe" json:"value_describe"`	// 故障描述  
	ValueStore		string	`orm:"value_store" json:"value_store"`	// 报修门店  
	ValueLabel		string	`orm:"value_label" json:"value_label"`	// 定义标签  
	ValueLabelSup		string	`orm:"value_label_sup" json:"value_label_sup"`	// 定义标签补充  
	CommentUserid		string	`orm:"comment_userid" json:"comment_userid"`	// 备注人id  
	Commenttime		*gtime.Time	`orm:"commenttime" json:"commenttime"`	// 备注人时间  
	Commentcontent		string	`orm:"commentcontent" json:"commentcontent"`	// 备注问题内容  
	Remarks		string	`orm:"remarks" json:"remarks"`	// 备注  
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
