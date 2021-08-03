// ==========================================================================
// This is auto-generated by gf cli tool. You may not really want to edit it.
// ==========================================================================

package blog_log

import (
	"database/sql"
	"github.com/gogf/gf/database/gdb"
)

// Entity is the golang structure for table blog_log.
type Entity struct {
	LogId        int    `orm:"log_id,primary" json:"log_id"`
	LogType      int    `orm:"log_type"       json:"log_type"`      // 所属分类
	LogSign      int    `orm:"log_sign"       json:"log_sign"`      // 0.一般 1.置顶，2.幻灯，3.推荐
	LogTitle     string `orm:"log_title"      json:"log_title"`     // 日志标题
	LogAuthor    string `orm:"log_author" json:"log_author"`        // 用户名
	LogUrl       string `orm:"log_url"        json:"log_url"`       // 跳转地址
	LogThumbnail string `orm:"log_thumbnail"  json:"log_thumbnail"` // 缩略图
	LogHits      uint64 `orm:"log_hits"       json:"log_hits"`      // 查看数点击数
	LogComments  int64  `orm:"log_comments"   json:"log_comments"`  // 评论数
	CreatTime    uint   `orm:"creat_time"     json:"creat_time"`    // 创建时间
	LogStatus    uint   `orm:"log_status"     json:"log_status"`    // 状态：1发布,0未发布
	LogSort      int    `orm:"log_sort"       json:"log_sort"`      // 排序
	LogContent   string `orm:"log_content" json:"log_content"`      // 内容
}

// OmitEmpty sets OPTION_OMITEMPTY option for the model, which automatically filers
// the data and where attributes for empty values.
func (r *Entity) OmitEmpty() *arModel {
	return Model.Data(r).OmitEmpty()
}

// Inserts does "INSERT...INTO..." statement for inserting current object into table.
func (r *Entity) Insert() (result sql.Result, err error) {
	return Model.Data(r).Insert()
}

// InsertIgnore does "INSERT IGNORE INTO ..." statement for inserting current object into table.
func (r *Entity) InsertIgnore() (result sql.Result, err error) {
	return Model.Data(r).InsertIgnore()
}

// Replace does "REPLACE...INTO..." statement for inserting current object into table.
// If there's already another same record in the table (it checks using primary key or unique index),
// it deletes it and insert this one.
func (r *Entity) Replace() (result sql.Result, err error) {
	return Model.Data(r).Replace()
}

// Save does "INSERT...INTO..." statement for inserting/updating current object into table.
// It updates the record if there's already another same record in the table
// (it checks using primary key or unique index).
func (r *Entity) Save() (result sql.Result, err error) {
	return Model.Data(r).Save()
}

// Update does "UPDATE...WHERE..." statement for updating current object from table.
// It updates the record if there's already another same record in the table
// (it checks using primary key or unique index).
func (r *Entity) Update() (result sql.Result, err error) {
	return Model.Data(r).Where(gdb.GetWhereConditionOfStruct(r)).Update()
}

// Delete does "DELETE FROM...WHERE..." statement for deleting current object from table.
func (r *Entity) Delete() (result sql.Result, err error) {
	return Model.Where(gdb.GetWhereConditionOfStruct(r)).Delete()
}
