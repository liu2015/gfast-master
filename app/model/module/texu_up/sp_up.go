// ==========================================================================
// 生成日期：2021-08-19 14:03:58
// 生成人：gfast
// ==========================================================================
package texu_up

import (
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
)

// AddReq 用于存储新增请求的请求参数
type AddReq struct {
	ProblemType string `p:"problem_type" `
	LargeType   string `p:"large_type" `
	StoreType   string `p:"store_type" `
	Describe    string `p:"describe" `
	Enclosure   string `p:"enclosure" `
	Distri      string `p:"distri" `
	Labelpub    string `p:"labelpub" `
	Other       string `p:"other" `
}

// EditReq 用于存储修改请求参数
type EditReq struct {
	Id          int    `p:"id" v:"required#主键ID不能为空"`
	ProblemType string `p:"problem_type" `
	LargeType   string `p:"large_type" `
	StoreType   string `p:"store_type" `
	Describe    string `p:"describe" `
	Enclosure   string `p:"enclosure" `
	Distri      string `p:"distri" `
	Labelpub    string `p:"labelpub" `
	Other       string `p:"other" `
}

// RemoveReq 用于存储删除请求参数
type RemoveReq struct {
	Ids []int `p:"ids"` //删除id
}

// SelectPageReq 用于存储分页查询的请求参数
type SelectPageReq struct {
	ProblemType string `p:"problem_type"` //问题类型
	LargeType   string `p:"large_type"`   //大区分类
	StoreType   string `p:"store_type"`   //反馈门店
	Describe    string `p:"describe"`     //问题描述
	Enclosure   string `p:"enclosure"`    //附件
	Distri      string `p:"distri"`       //工单分派
	Labelpub    string `p:"labelpub"`     //工单定义补充
	Other       string `p:"other"`        //其他
	BeginTime   string `p:"beginTime"`    //开始时间
	EndTime     string `p:"endTime"`      //结束时间
	PageNum     int    `p:"pageNum"`      //当前页码
	PageSize    int    `p:"pageSize"`     //每页数
}

// GetByID 根据ID查询记录
func GetByID(id int) (*Entity, error) {
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
	entity.ProblemType = req.ProblemType
	entity.LargeType = req.LargeType
	entity.StoreType = req.StoreType
	entity.Describe = req.Describe
	entity.Enclosure = req.Enclosure
	entity.Distri = req.Distri
	entity.Labelpub = req.Labelpub
	entity.Other = req.Other
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
func DeleteByIds(Ids []int) error {
	_, err := Model.Delete("id in(?)", Ids)
	if err != nil {
		g.Log().Error(err)
		return gerror.New("删除失败")
	}
	return nil
}

// EditSave 根据ID来修改信息
func EditSave(req *EditReq) error {
	// 先根据ID来查询要修改的记录
	entity, err := GetByID(req.Id)
	if err != nil {
		return err
	}
	// 修改实体
	entity.ProblemType = req.ProblemType
	entity.LargeType = req.LargeType
	entity.StoreType = req.StoreType
	entity.Describe = req.Describe
	entity.Enclosure = req.Enclosure
	entity.Distri = req.Distri
	entity.Labelpub = req.Labelpub
	entity.Other = req.Other
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
		if req.ProblemType != "" {
			model = model.Where("problem_type = ?", req.ProblemType)
		}
		if req.LargeType != "" {
			model = model.Where("large_type = ?", req.LargeType)
		}
		if req.StoreType != "" {
			model = model.Where("store_type = ?", req.StoreType)
		}
		if req.Describe != "" {
			model = model.Where("describe = ?", req.Describe)
		}
		if req.Enclosure != "" {
			model = model.Where("enclosure = ?", req.Enclosure)
		}
		if req.Distri != "" {
			model = model.Where("distri = ?", req.Distri)
		}
		if req.Labelpub != "" {
			model = model.Where("labelpub = ?", req.Labelpub)
		}
		if req.Other != "" {
			model = model.Where("other = ?", req.Other)
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
	list, err = model.Page(int(page), int(req.PageSize)).Order("id desc").All()
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
		if req.ProblemType != "" {
			model.Where("problem_type = ?", req.ProblemType)
		}
		if req.LargeType != "" {
			model.Where("large_type = ?", req.LargeType)
		}
		if req.StoreType != "" {
			model.Where("store_type = ?", req.StoreType)
		}
		if req.Describe != "" {
			model.Where("describe = ?", req.Describe)
		}
		if req.Enclosure != "" {
			model.Where("enclosure = ?", req.Enclosure)
		}
		if req.Distri != "" {
			model.Where("distri = ?", req.Distri)
		}
		if req.Labelpub != "" {
			model.Where("labelpub = ?", req.Labelpub)
		}
		if req.Other != "" {
			model.Where("other = ?", req.Other)
		}
	}
	// 查询
	list, err = model.Order("id desc").All()
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("查询失败")
		return
	}
	return
}
