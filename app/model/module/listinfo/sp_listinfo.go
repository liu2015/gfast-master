// ==========================================================================
// 生成日期：2021-08-13 14:38:11
// 生成人：gfast
// ==========================================================================
package listinfo

import (
	"fmt"

	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/os/gtime"
	"github.com/gogf/gf/util/gconv"
)

type Info struct {
	Name  string `json:"name"`
	Value int    `json:"value"`
}

// AddReq 用于存储新增请求的请求参数
type AddReq struct {
	SpName           string      `p:"sp_name" v:"required#门店问题工单名字不能为空"`
	ApplyTime        *gtime.Time `p:"apply_time" `
	ApplyerUserid    string      `p:"applyer_userid" `
	SpRecord         string      `p:"sp_record" `
	SpRecordSpStatus int         `p:"sp_record_sp_status" v:"required#审批状态不能为空"`
	DetailsUserid    string      `p:"details_userid" `
	DetailsSpeech    string      `p:"details_speech" `
	DetailsSpStatus  int         `p:"details_sp_status" v:"required#分支审批状态2是同意状态不能为空"`
	DetailsSptime    *gtime.Time `p:"details_sptime" `
	ValueProble      string      `p:"value_proble" `
	ValueRepair      string      `p:"value_repair" `
	ValueRegion      string      `p:"value_region" `
	ValueDescribe    string      `p:"value_describe" `
	ValueStore       string      `p:"value_store" `
	ValueLabel       string      `p:"value_label" `
	ValueLabelSup    string      `p:"value_label_sup" `
	CommentUserid    string      `p:"comment_userid" `
	Commenttime      *gtime.Time `p:"commenttime" `
	Commentcontent   string      `p:"commentcontent" `
	Remarks          string      `p:"remarks" `
}

// AddReqadd 用于用于存储获得的请求，格式化的保存
type AddReqadd struct {
	SpNo             string      `p:"sp_no" v:"required#主键ID不能为空"`
	SpName           string      `p:"sp_name" v:"required#门店问题工单名字不能为空"`
	ApplyTime        *gtime.Time `p:"apply_time" `
	ApplyerUserid    string      `p:"applyer_userid" `
	SpRecord         string      `p:"sp_record" `
	SpRecordSpStatus int         `p:"sp_record_sp_status" v:"required#审批状态不能为空"`
	DetailsUserid    string      `p:"details_userid" `
	DetailsSpeech    string      `p:"details_speech" `
	DetailsSpStatus  int         `p:"details_sp_status" v:"required#分支审批状态2是同意状态不能为空"`
	DetailsSptime    *gtime.Time `p:"details_sptime" `
	ValueProble      string      `p:"value_proble" `
	ValueRepair      string      `p:"value_repair" `
	ValueRegion      string      `p:"value_region" `
	ValueDescribe    string      `p:"value_describe" `
	ValueStore       string      `p:"value_store" `
	ValueLabel       string      `p:"value_label" `
	ValueLabelSup    string      `p:"value_label_sup" `
	CommentUserid    string      `p:"comment_userid" `
	Commenttime      *gtime.Time `p:"commenttime" `
	Commentcontent   string      `p:"commentcontent" `
	Remarks          string      `p:"remarks" `
}

// EditReq 用于存储修改请求参数
type EditReq struct {
	SpNo string `p:"sp_no" v:"required#主键ID不能为空"`

	SpName           string      `p:"sp_name" v:"required#门店问题工单名字不能为空"`
	ApplyTime        *gtime.Time `p:"apply_time" `
	ApplyerUserid    string      `p:"applyer_userid" `
	SpRecord         string      `p:"sp_record" `
	SpRecordSpStatus int         `p:"sp_record_sp_status" v:"required#审批状态不能为空"`
	DetailsUserid    string      `p:"details_userid" `
	DetailsSpeech    string      `p:"details_speech" `
	DetailsSpStatus  int         `p:"details_sp_status" v:"required#分支审批状态2是同意状态不能为空"`
	DetailsSptime    *gtime.Time `p:"details_sptime" `
	ValueProble      string      `p:"value_proble" `
	ValueRepair      string      `p:"value_repair" `
	ValueRegion      string      `p:"value_region" `
	ValueDescribe    string      `p:"value_describe" `
	ValueStore       string      `p:"value_store" `
	ValueLabel       string      `p:"value_label" `
	ValueLabelSup    string      `p:"value_label_sup" `
	CommentUserid    string      `p:"comment_userid" `
	Commenttime      *gtime.Time `p:"commenttime" `
	Commentcontent   string      `p:"commentcontent" `
	Remarks          string      `p:"remarks" `
}

// RemoveReq 用于存储删除请求参数
type RemoveReq struct {
	Ids []string `p:"ids"` //删除id
}

// SelectPageReq 用于存储分页查询的请求参数
type SelectPageReq struct {
	SpNo             string      `p:"sp_no"`               //单号
	SpName           string      `p:"sp_name"`             //门店问题工单名字
	ApplyTime        *gtime.Time `p:"apply_time"`          //发起时间
	ApplyerUserid    string      `p:"applyer_userid"`      //发起用户id
	SpRecord         string      `p:"sp_record"`           //审批详情数组
	SpRecordSpStatus int         `p:"sp_record_sp_status"` //审批状态
	DetailsUserid    string      `p:"details_userid"`      //审批人id
	DetailsSpeech    string      `p:"details_speech"`      //审批意见
	DetailsSpStatus  int         `p:"details_sp_status"`   //分支审批状态2是同意状态
	DetailsSptime    *gtime.Time `p:"details_sptime"`      //审批时间
	ValueProble      string      `p:"value_proble"`        //问题类型
	ValueRepair      string      `p:"value_repair"`        //报修类型
	ValueRegion      string      `p:"value_region"`        //报修区域
	ValueDescribe    string      `p:"value_describe"`      //故障描述
	ValueStore       string      `p:"value_store"`         //报修门店
	ValueLabel       string      `p:"value_label"`         //定义标签
	ValueLabelSup    string      `p:"value_label_sup"`     //定义标签补充
	CommentUserid    string      `p:"comment_userid"`      //备注人id
	Commenttime      *gtime.Time `p:"commenttime"`         //备注人时间
	Commentcontent   string      `p:"commentcontent"`      //备注问题内容
	Remarks          string      `p:"remarks"`             //备注
	BeginTime        string      `p:"beginTime"`           //开始时间
	EndTime          string      `p:"endTime"`             //结束时间
	PageNum          int         `p:"pageNum"`             //当前页码
	PageSize         int         `p:"pageSize"`            //每页数
}

// GetByID 根据ID查询记录
func GetByID(id string) (*Entity, error) {
	entity, err := Model.FindOne(id)
	if err != nil {
		g.Log().Error(err)
		return nil, gerror.New("根据ID查询记录出错")
	}
	if entity == nil {
		return nil, gerror.New("根据ID未能查询到记录")
	}
	return entity, nil
}

// AddSave 添加
func AddSave(req *AddReq) error {
	entity := new(Entity)
	entity.SpName = req.SpName
	entity.ApplyTime = req.ApplyTime
	entity.ApplyerUserid = req.ApplyerUserid
	entity.SpRecord = req.SpRecord
	entity.SpRecordSpStatus = req.SpRecordSpStatus
	entity.DetailsUserid = req.DetailsUserid
	entity.DetailsSpeech = req.DetailsSpeech
	entity.DetailsSpStatus = req.DetailsSpStatus
	entity.DetailsSptime = req.DetailsSptime
	entity.ValueProble = req.ValueProble
	entity.ValueRepair = req.ValueRepair
	entity.ValueRegion = req.ValueRegion
	entity.ValueDescribe = req.ValueDescribe
	entity.ValueStore = req.ValueStore
	entity.ValueLabel = req.ValueLabel
	entity.ValueLabelSup = req.ValueLabelSup
	entity.CommentUserid = req.CommentUserid
	entity.Commenttime = req.Commenttime
	entity.Commentcontent = req.Commentcontent
	entity.Remarks = req.Remarks
	result, err := Model.Save(entity)
	if err != nil {
		return err
	}
	_, err = result.LastInsertId()
	if err != nil {
		return err
	}
	return nil
}

// AddSave 格式化的保存
func AddSaveadd(req *AddReqadd) error {
	entity := new(Entity)
	entity.SpNo = req.SpNo
	entity.SpName = req.SpName
	entity.ApplyTime = req.ApplyTime
	entity.ApplyerUserid = req.ApplyerUserid
	entity.SpRecord = req.SpRecord
	entity.SpRecordSpStatus = req.SpRecordSpStatus
	entity.DetailsUserid = req.DetailsUserid
	entity.DetailsSpeech = req.DetailsSpeech
	entity.DetailsSpStatus = req.DetailsSpStatus
	entity.DetailsSptime = req.DetailsSptime
	entity.ValueProble = req.ValueProble
	entity.ValueRepair = req.ValueRepair
	entity.ValueRegion = req.ValueRegion
	entity.ValueDescribe = req.ValueDescribe
	entity.ValueStore = req.ValueStore
	entity.ValueLabel = req.ValueLabel
	entity.ValueLabelSup = req.ValueLabelSup
	entity.CommentUserid = req.CommentUserid
	entity.Commenttime = req.Commenttime
	entity.Commentcontent = req.Commentcontent
	entity.Remarks = req.Remarks
	result, err := Model.Save(entity)
	if err != nil {
		return err
	}
	_, err = result.LastInsertId()
	if err != nil {
		return err
	}
	return nil
}

// DeleteByIds 删除
func DeleteByIds(Ids []string) error {
	_, err := Model.Delete("sp_no in(?)", Ids)
	if err != nil {
		g.Log().Error(err)
		return gerror.New("删除失败")
	}
	return nil
}

// EditSave 根据ID来修改信息
func EditSave(req *EditReq) error {
	// 先根据ID来查询要修改的记录
	entity, err := GetByID(req.SpNo)
	if err != nil {
		return err
	}
	// 修改实体
	entity.SpNo = req.SpNo
	entity.SpName = req.SpName
	entity.ApplyTime = req.ApplyTime
	entity.ApplyerUserid = req.ApplyerUserid
	entity.SpRecord = req.SpRecord
	entity.SpRecordSpStatus = req.SpRecordSpStatus
	entity.DetailsUserid = req.DetailsUserid
	entity.DetailsSpeech = req.DetailsSpeech
	entity.DetailsSpStatus = req.DetailsSpStatus
	entity.DetailsSptime = req.DetailsSptime
	entity.ValueProble = req.ValueProble
	entity.ValueRepair = req.ValueRepair
	entity.ValueRegion = req.ValueRegion
	entity.ValueDescribe = req.ValueDescribe
	entity.ValueStore = req.ValueStore
	entity.ValueLabel = req.ValueLabel
	entity.ValueLabelSup = req.ValueLabelSup
	entity.CommentUserid = req.CommentUserid
	entity.Commenttime = req.Commenttime
	entity.Commentcontent = req.Commentcontent
	entity.Remarks = req.Remarks
	_, err = Model.Save(entity)
	if err != nil {
		g.Log().Error(err)
		return gerror.New("修改失败")
	}
	return nil
}

// SelectListByPage 分页查询,返回值total总记录数,page当前页
func SelectListByPage(req *SelectPageReq) (total int, page int, list []*Entity, err error) {
	model := Model
	if req != nil {
		if req.SpNo != "" {
			model = model.Where("sp_no = ?", req.SpNo)
		}
		if req.SpName != "" {
			model = model.Where("sp_name like ?", "%"+req.SpName+"%")
		}
		if req.ApplyTime != nil {
			model = model.Where("apply_time >= ?", req.ApplyTime)
		}
		if req.ApplyerUserid != "" {
			model = model.Where("applyer_userid = ?", req.ApplyerUserid)
		}
		if req.SpRecord != "" {
			model = model.Where("sp_record = ?", req.SpRecord)
		}
		if req.SpRecordSpStatus != 0 {
			model = model.Where("sp_record_sp_status = ?", req.SpRecordSpStatus)
		}
		if req.DetailsUserid != "" {
			model = model.Where("details_userid = ?", req.DetailsUserid)
		}
		if req.DetailsSpeech != "" {
			model = model.Where("details_speech = ?", req.DetailsSpeech)
		}
		if req.DetailsSpStatus != 0 {
			model = model.Where("details_sp_status = ?", req.DetailsSpStatus)
		}
		if req.DetailsSptime != nil {
			model = model.Where("details_sptime = ?", req.DetailsSptime)
		}
		if req.ValueProble != "" {
			model = model.Where("value_proble = ?", req.ValueProble)
		}
		if req.ValueRepair != "" {
			model = model.Where("value_repair = ?", req.ValueRepair)
		}
		if req.ValueRegion != "" {
			model = model.Where("value_region = ?", req.ValueRegion)
		}
		if req.ValueDescribe != "" {
			model = model.Where("value_describe = ?", req.ValueDescribe)
		}
		if req.ValueStore != "" {
			model = model.Where("value_store = ?", req.ValueStore)
		}
		if req.ValueLabel != "" {
			model = model.Where("value_label = ?", req.ValueLabel)
		}
		if req.ValueLabelSup != "" {
			model = model.Where("value_label_sup = ?", req.ValueLabelSup)
		}
		if req.CommentUserid != "" {
			model = model.Where("comment_userid = ?", req.CommentUserid)
		}
		if req.Commenttime != nil {
			model = model.Where("commenttime <= ?", req.Commenttime)
		}
		if req.Commentcontent != "" {
			model = model.Where("commentcontent = ?", req.Commentcontent)
		}
		if req.Remarks != "" {
			model = model.Where("remarks = ?", req.Remarks)
		}
	}
	// 查询总记录数(总行数)
	total, err = model.Count()
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("获取总记录数失败")
		return
	}
	if req.PageNum == 0 {
		req.PageNum = 1
	}
	page = req.PageNum
	if req.PageSize == 0 {
		req.PageSize = 10
	}
	// 分页排序查询
	list, err = model.Page(int(page), int(req.PageSize)).Order("sp_no desc").All()
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("分页查询失败")
		return
	}
	return
}

// SelectListAll 获取所有数据
func SelectListAll(req *SelectPageReq) (list []*Entity, err error) {
	model := Model
	if req != nil {
		if req.SpNo != "" {
			model.Where("sp_no = ?", req.SpNo)
		}
		if req.SpName != "" {
			model.Where("sp_name like ?", "%"+req.SpName+"%")
		}
		if req.ApplyerUserid != "" {
			model.Where("applyer_userid = ?", req.ApplyerUserid)
		}
		if req.SpRecord != "" {
			model.Where("sp_record = ?", req.SpRecord)
		}
		if req.SpRecordSpStatus != 0 {
			model.Where("sp_record_sp_status = ?", req.SpRecordSpStatus)
		}
		if req.DetailsUserid != "" {
			model.Where("details_userid = ?", req.DetailsUserid)
		}
		if req.DetailsSpeech != "" {
			model.Where("details_speech = ?", req.DetailsSpeech)
		}
		if req.DetailsSpStatus != 0 {
			model.Where("details_sp_status = ?", req.DetailsSpStatus)
		}
		if req.ValueProble != "" {
			model.Where("value_proble = ?", req.ValueProble)
		}
		if req.ValueRepair != "" {
			model.Where("value_repair = ?", req.ValueRepair)
		}
		if req.ValueRegion != "" {
			model.Where("value_region = ?", req.ValueRegion)
		}
		if req.ValueDescribe != "" {
			model.Where("value_describe = ?", req.ValueDescribe)
		}
		if req.ValueStore != "" {
			model.Where("value_store = ?", req.ValueStore)
		}
		if req.ValueLabel != "" {
			model.Where("value_label = ?", req.ValueLabel)
		}
		if req.ValueLabelSup != "" {
			model.Where("value_label_sup = ?", req.ValueLabelSup)
		}
		if req.CommentUserid != "" {
			model.Where("comment_userid = ?", req.CommentUserid)
		}
		if req.Commentcontent != "" {
			model.Where("commentcontent = ?", req.Commentcontent)
		}
		if req.Remarks != "" {
			model.Where("remarks = ?", req.Remarks)
		}
	}
	// 查询
	list, err = model.Order("sp_no desc").All()
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("查询失败")
		return
	}
	return
}

// SelectListAll 获取所有数据
func SelectListpic(req *SelectPageReq) (test []map[string]interface{}, err error) {
	// applyer_userid  commenttime
	db := g.DB("default")
	if req.ApplyTime != nil || req.Commenttime != nil {

		if req.ApplyTime == nil {

			req.ApplyTime = gtime.New("2020-08-09 11:18:39")
		}
		if req.Commenttime == nil {
			req.Commenttime = gtime.New(gtime.Datetime())
		}
		list, err := db.GetAll("SELECT count(comment_userid) as value,comment_userid as name FROM `sp_listinfo` where `apply_time`>=? and `commenttime` <= ?  and comment_userid!='' and sp_record_sp_status='2' GROUP BY `comment_userid` ORDER BY `value` DESC  limit 10", req.ApplyTime, req.Commenttime)
		test = list.List()
		return test, err
	} else {

		list, err := db.GetAll("SELECT count(comment_userid) as value,comment_userid as name FROM `sp_listinfo` where comment_userid!='' and sp_record_sp_status='2'   GROUP BY `comment_userid` ORDER BY `value` DESC  limit 10")
		test = list.List()
		return test, err
	}

}

// select DATE_FORMAT(commenttime,'%m-%d') as name, COUNT(commenttime) as value  from sp_listinfo  where commenttime!='' GROUP BY  `name`

// SelectList 或者折线图 获取所有数据
func SelectListcat(req *SelectPageReq) (test []Info, err error) {

	var info []Info
	// applyer_userid  commenttime
	db := g.DB("default")
	if req.ApplyTime != nil || req.Commenttime != nil {

		if req.ApplyTime == nil {

			req.ApplyTime = gtime.New("2020-08-09 11:18:39")
		}
		if req.Commenttime == nil {
			req.Commenttime = gtime.New(gtime.Datetime())
		}
		list, err := db.GetAll("select DATE_FORMAT(commenttime,'%m-%d') as name, COUNT(commenttime) as value  from sp_listinfo  where commenttime!='' and `apply_time`>=? and `commenttime` <= ?    GROUP BY  `name` ORDER BY `name` ASC  limit 30", req.ApplyTime, req.Commenttime)
		err = gconv.Scan(list, &info)

		return info, err
	} else {

		// 获得年月日的统计数据
		list, err := db.GetAll("select DATE_FORMAT(commenttime,'%m-%d') as name, COUNT(commenttime) as value  from sp_listinfo  where   commenttime!=''   GROUP BY  `name` ORDER BY `name` ASC limit 30")

		err12 := gconv.Scan(list, &info)

		if err12 != nil {
			fmt.Println(err12)
		}

		return info, err
	}

}

// SelectListAll 获取所有数据
func SelectListdom(req *SelectPageReq) (test []Info, err error) {
	var info []Info
	model := Model
	if req != nil {
		if req.SpNo != "" {
			model.Where("sp_no = ?", req.SpNo)
		}
		if req.SpName != "" {
			model.Where("sp_name like ?", "%"+req.SpName+"%")
		}
		if req.ApplyerUserid != "" {
			model.Where("applyer_userid = ?", req.ApplyerUserid)
		}
		if req.SpRecord != "" {
			model.Where("sp_record = ?", req.SpRecord)
		}
		if req.SpRecordSpStatus != 0 {
			model.Where("sp_record_sp_status = ?", req.SpRecordSpStatus)
		}
		if req.DetailsUserid != "" {
			model.Where("details_userid = ?", req.DetailsUserid)
		}
		if req.DetailsSpeech != "" {
			model.Where("details_speech = ?", req.DetailsSpeech)
		}
		if req.DetailsSpStatus != 0 {
			model.Where("details_sp_status = ?", req.DetailsSpStatus)
		}
		if req.ValueProble != "" {
			model.Where("value_proble = ?", req.ValueProble)
		}
		if req.ValueRepair != "" {
			model.Where("value_repair = ?", req.ValueRepair)
		}
		if req.ValueRegion != "" {
			model.Where("value_region = ?", req.ValueRegion)
		}
		if req.ValueDescribe != "" {
			model.Where("value_describe = ?", req.ValueDescribe)
		}
		if req.ValueStore != "" {
			model.Where("value_store = ?", req.ValueStore)
		}
		if req.ValueLabel != "" {
			model.Where("value_label = ?", req.ValueLabel)
		}
		if req.ValueLabelSup != "" {
			model.Where("value_label_sup = ?", req.ValueLabelSup)
		}
		// if req.ValueLabel == "" {
		// 	model.Where("ValueLabel != ?", "")
		// }
		if req.CommentUserid != "" {
			model.Where("comment_userid = ?", req.CommentUserid)
		}
		if req.Commentcontent != "" {
			model.Where("commentcontent = ?", req.Commentcontent)
		}
		if req.Remarks != "" {
			model.Where("remarks = ?", req.Remarks)
		}
		if req.Commenttime != nil {
			model = model.Where("commenttime <= ?", req.Commenttime)
		}
		if req.ApplyTime != nil {
			model = model.Where("apply_time >= ?", req.ApplyTime)
		}
		model = model.Where("value_label!=''")

	}

	fmt.Println("99999999999999999999999")
	fmt.Println(req)
	fmt.Println("99999999999999999999999")
	// model.Where("value_label!=?", "")

	// 查询
	// list, err := model.Fields("COUNT(value_label) as value, value_label as name").GroupBy("value_label").Order("sp_no ASC").Limit(15).All()
	list, err := model.Fields("COUNT(value_label) as value, value_label as name").GroupBy("value_label").Order("value DESC").Limit(15).All()
	gconv.Scan(list, &info)
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("查询失败")
		return
	}
	return info, err
}
