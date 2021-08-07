// ==========================================================================
// 生成日期：2021-08-07 14:29:41
// 生成人：liu
// ==========================================================================
package list

import (
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
)

// AddReq 用于存储新增请求的请求参数
type AddReq struct {
	SpId      string `p:sp_id`
	Errmsg    string `p:"errmsg" `
	Errcode   string `p:"errcode" `
	Sort      int    `p:"sort" `
	Starttime int    `p:"starttime" `
	Endtime   int    `p:"endtime" `
}

// EditReq 用于存储修改请求参数
type EditReq struct {
	SpId      string `p:"sp_id" v:"required#主键ID不能为空"`
	Errmsg    string `p:"errmsg" `
	Errcode   string `p:"errcode" `
	Sort      int    `p:"sort" `
	Starttime int    `p:"starttime" `
	Endtime   int    `p:"endtime" `
}

// RemoveReq 用于存储删除请求参数
type RemoveReq struct {
	Ids []string `p:"ids"` //删除id
}

// SelectPageReq 用于存储分页查询的请求参数
type SelectPageReq struct {
	SpId      string `p:"sp_id"`     //单号
	Errmsg    string `p:"errmsg"`    //msg信息
	Errcode   string `p:"errcode"`   //错误id
	Sort      int    `p:"sort"`      //是否再次被拉去
	Starttime int    `p:"starttime"` //开始时间
	Endtime   int    `p:"endtime"`   //至时间
	BeginTime string `p:"beginTime"` //开始时间
	EndTime   string `p:"endTime"`   //结束时间
	PageNum   int    `p:"pageNum"`   //当前页码
	PageSize  int    `p:"pageSize"`  //每页数
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
	entity.Errmsg = req.Errmsg
	entity.Errcode = req.Errcode
	entity.Sort = req.Sort
	entity.Starttime = req.Starttime
	entity.Endtime = req.Endtime
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

// AddSave1 添加
func AddSave1(req *AddReq) error {
	entity := new(Entity)
	entity.SpId = req.SpId
	entity.Errmsg = req.Errmsg
	entity.Errcode = req.Errcode
	// entity.Sort = req.Sort
	entity.Starttime = req.Starttime
	entity.Endtime = req.Endtime
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
	_, err := Model.Delete("sp_id in(?)", Ids)
	if err != nil {
		g.Log().Error(err)
		return gerror.New("删除失败")
	}
	return nil
}

// EditSave 根据ID来修改信息
func EditSave(req *EditReq) error {
	// 先根据ID来查询要修改的记录
	entity, err := GetByID(req.SpId)
	if err != nil {
		return err
	}
	// 修改实体
	entity.Errmsg = req.Errmsg
	entity.Errcode = req.Errcode
	entity.Sort = req.Sort
	entity.Starttime = req.Starttime
	entity.Endtime = req.Endtime
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
		if req.SpId != "" {
			model = model.Where("sp_id = ?", req.SpId)
		}
		if req.Errmsg != "" {
			model = model.Where("errmsg = ?", req.Errmsg)
		}
		if req.Errcode != "" {
			model = model.Where("errcode = ?", req.Errcode)
		}
		if req.Sort != 0 {
			model = model.Where("sort = ?", req.Sort)
		}
		if req.Starttime != 0 {
			model = model.Where("starttime = ?", req.Starttime)
		}
		if req.Endtime != 0 {
			model = model.Where("endtime = ?", req.Endtime)
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
	list, err = model.Page(int(page), int(req.PageSize)).Order("sp_id desc").All()
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
		if req.SpId != "" {
			model.Where("sp_id = ?", req.SpId)
		}
		if req.Errmsg != "" {
			model.Where("errmsg = ?", req.Errmsg)
		}
		if req.Errcode != "" {
			model.Where("errcode = ?", req.Errcode)
		}
		if req.Sort != 0 {
			model.Where("sort = ?", req.Sort)
		}
		if req.Starttime != 0 {
			model.Where("starttime = ?", req.Starttime)
		}
		if req.Endtime != 0 {
			model.Where("endtime = ?", req.Endtime)
		}
	}
	// 查询
	list, err = model.Order("sp_id desc").All()
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("查询失败")
		return
	}
	return
}
