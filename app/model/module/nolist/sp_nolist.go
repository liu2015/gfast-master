// ==========================================================================
// 生成日期：2021-08-11 15:54:08
// 生成人：gfast
// ==========================================================================
package nolist

import (
	"fmt"

	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
)

// AddReq 用于存储新增请求的请求参数
type AddReq struct {
	SpName       string `p:"sp_name" v:"required#单名不能为空"`
	ApplyTime    int    `p:"apply_time" `
	Userid       string `p:"userid" `
	Datatest     string `p:"datatest" `
	Useridtest   string `p:"useridtest" `
	Commenttimel int    `p:"commenttimel" `
	Commtest     string `p:"commtest" `
	Spare        string `p:"spare" `
	Spare1       string `p:"spare1" `
}

// AddReq1 用于存储新增请求的请求参数
type AddReq1 struct {
	SpNo         string `p:"sp_no" v:"required#主键ID不能为空"`
	SpName       string `p:"sp_name" v:"required#单名不能为空"`
	ApplyTime    int    `p:"apply_time" `
	Userid       string `p:"userid" `
	Datatest     string `p:"datatest" `
	Useridtest   string `p:"useridtest" `
	Commenttimel int    `p:"commenttimel" `
	Commtest     string `p:"commtest" `
	Spare        string `p:"spare" `
	Spare1       string `p:"spare1" `
}

// EditReq 用于存储修改请求参数
type EditReq struct {
	SpNo         string `p:"sp_no" v:"required#主键ID不能为空"`
	SpName       string `p:"sp_name" v:"required#单名不能为空"`
	ApplyTime    int    `p:"apply_time" `
	Userid       string `p:"userid" `
	Datatest     string `p:"datatest" `
	Useridtest   string `p:"useridtest" `
	Commenttimel int    `p:"commenttimel" `
	Commtest     string `p:"commtest" `
	Spare        string `p:"spare" `
	Spare1       string `p:"spare1" `
}

// RemoveReq 用于存储删除请求参数
type RemoveReq struct {
	Ids []string `p:"ids"` //删除id
}

// SelectPageReq 用于存储分页查询的请求参数
type SelectPageReq struct {
	SpNo         string `p:"sp_no"`        //单号
	SpName       string `p:"sp_name"`      //单名
	ApplyTime    int    `p:"apply_time"`   //发起时间
	Userid       string `p:"userid"`       //填报人id
	Datatest     string `p:"datatest"`     //主体内容详情
	Useridtest   string `p:"useridtest"`   //备注人id
	Commenttimel int    `p:"commenttimel"` //备注填写时间
	Commtest     string `p:"commtest"`     //备注的详情
	Spare        string `p:"spare"`        //备用
	Spare1       string `p:"spare1"`       //备用1
	BeginTime    string `p:"beginTime"`    //开始时间
	EndTime      string `p:"endTime"`      //结束时间
	PageNum      int    `p:"pageNum"`      //当前页码
	PageSize     int    `p:"pageSize"`     //每页数
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
	entity.Userid = req.Userid
	entity.Datatest = req.Datatest
	entity.Useridtest = req.Useridtest
	entity.Commenttimel = req.Commenttimel
	entity.Commtest = req.Commtest
	entity.Spare = req.Spare
	entity.Spare1 = req.Spare1
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

// AddSave 添加
func AddSave1(req *AddReq1) error {
	entity := new(Entity)
	entity.SpNo = req.SpNo
	entity.SpName = req.SpName
	entity.ApplyTime = req.ApplyTime
	entity.Userid = req.Userid
	entity.Datatest = req.Datatest
	entity.Useridtest = req.Useridtest
	entity.Commenttimel = req.Commenttimel
	entity.Commtest = req.Commtest
	entity.Spare = req.Spare
	entity.Spare1 = req.Spare1
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
	entity.SpName = req.SpName
	entity.ApplyTime = req.ApplyTime
	entity.Userid = req.Userid
	entity.Datatest = req.Datatest
	entity.Useridtest = req.Useridtest
	entity.Commenttimel = req.Commenttimel
	entity.Commtest = req.Commtest
	entity.Spare = req.Spare
	entity.Spare1 = req.Spare1
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
		if req.ApplyTime != 0 {
			model = model.Where("apply_time = ?", req.ApplyTime)
		}
		if req.Userid != "" {
			model = model.Where("userid = ?", req.Userid)
		}
		if req.Datatest != "" {
			model = model.Where("datatest = ?", req.Datatest)
		}
		if req.Useridtest != "" {
			model = model.Where("useridtest = ?", req.Useridtest)
		}
		if req.Commenttimel != 0 {
			model = model.Where("commenttimel = ?", req.Commenttimel)
		}
		if req.Commtest != "" {
			model = model.Where("commtest = ?", req.Commtest)
		}
		if req.Spare != "" {
			model = model.Where("spare = ?", req.Spare)
		}
		if req.Spare1 != "" {
			model = model.Where("spare1 = ?", req.Spare1)
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
func SelectListAll() (test []map[string]interface{}, err error) {
	// model := Model
	db := g.DB("default")

	// 查询
	// list, err = model.Order("sp_no desc").All()
	// list, err = model.Fields("SUM(userid) as value", "userid as name").All()
	// 以上是查询汇总
	list1, err := db.GetAll("select userid as name, count(userid) as value  from `sp_nolist`   group by userid having count(userid)>0 ORDER BY `sp_nolist`.`userid` ASC ")

	// 打印获得的结果
	fmt.Println("............................................")

	//解构这些数据，然后在将数组变成json
	fmt.Println(list1)
	// testjson := list1.Json()

	testjson := list1.List()
	// string(list1)
	fmt.Println(testjson)

	// for _, v := range list1 {
	// 	fmt.Println(v)
	// 	test := v.Json()
	// 	fmt.Println(test)

	// }

	fmt.Println("............................................")
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("查询失败")
		return
	}

	return testjson, err
}
