// ==========================================================================
// 生成日期：2021-08-02 11:26:16
// 生成人：liu
// ==========================================================================
package lib_log
import (
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/os/gtime"
)
// AddReq 用于存储新增请求的请求参数
type AddReq struct {	 
	 Title  string   `p:"title" `  
	 PosNumber  string   `p:"pos_number" `  
	 PosMa  string   `p:"pos_ma" `  
	 PosTime  *gtime.Time   `p:"pos_time" `  
	 PosState  int   `p:"pos_state" `  
	 PosMsg  string   `p:"pos_msg" `  
}
// EditReq 用于存储修改请求参数
type EditReq struct {
	LibId    int  `p:"lib_id" v:"required#主键ID不能为空"`    
	Title  string `p:"title" `   
	PosNumber  string `p:"pos_number" `   
	PosMa  string `p:"pos_ma" `   
	PosTime  *gtime.Time `p:"pos_time" `   
	PosState  int `p:"pos_state" `   
	PosMsg  string `p:"pos_msg" `  
}
// RemoveReq 用于存储删除请求参数
type RemoveReq struct {
	Ids [] int  `p:"ids"` //删除id
}
// SelectPageReq 用于存储分页查询的请求参数
type SelectPageReq struct {  
	LibId  int `p:"lib_id"` //id   
	Title  string `p:"title"` //脚本名字   
	PosNumber  string `p:"pos_number"` //上传门店编号   
	PosMa  string `p:"pos_ma"` //上传门店机台号   
	PosTime  *gtime.Time `p:"pos_time"` //上传时间   
	PosState  int `p:"pos_state"` //是否成功状态   
	PosMsg  string `p:"pos_msg"` //脚本运行信息  
	BeginTime  string `p:"beginTime"`  //开始时间
	EndTime    string `p:"endTime"`    //结束时间
	PageNum    int    `p:"pageNum"`    //当前页码
	PageSize   int    `p:"pageSize"`   //每页数
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
	entity:= new(Entity)	   
	entity.Title = req.Title  
	entity.PosNumber = req.PosNumber  
	entity.PosMa = req.PosMa  
	entity.PosTime = req.PosTime  
	entity.PosState = req.PosState  
	entity.PosMsg = req.PosMsg
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
func DeleteByIds(Ids [] int) error {
	_, err := Model.Delete("lib_id in(?)", Ids)
	if err != nil {
		g.Log().Error(err)
		return gerror.New("删除失败")
	}
	return nil
}
// EditSave 根据ID来修改信息
func EditSave(req *EditReq) error {
	// 先根据ID来查询要修改的记录
	entity, err := GetByID(req.LibId)
	if err != nil {
		return err
	}
	// 修改实体	   
	entity.Title = req.Title  
	entity.PosNumber = req.PosNumber  
	entity.PosMa = req.PosMa  
	entity.PosTime = req.PosTime  
	entity.PosState = req.PosState  
	entity.PosMsg = req.PosMsg 
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
		if req.LibId != 0 {
			model = model.Where("lib_id = ?", req.LibId)
		}	 
		if req.Title != "" {
			model = model.Where("title = ?", req.Title)
		}	 
		if req.PosNumber != "" {
			model = model.Where("pos_number = ?", req.PosNumber)
		}	 
		if req.PosMa != "" {
			model = model.Where("pos_ma = ?", req.PosMa)
		}	 
		if req.PosTime != nil {
			model = model.Where("pos_time = ?", req.PosTime)
		}	 
		if req.PosState != 0 {
			model = model.Where("pos_state = ?", req.PosState)
		}	 
		if req.PosMsg != "" {
			model = model.Where("pos_msg = ?", req.PosMsg)
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
	list, err = model.Page(int(page), int(req.PageSize)).Order("lib_id desc").All()
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
			if req.LibId != 0 {
			model.Where("lib_id = ?", req.LibId)
			}		 
			if req.Title != "" {
			model.Where("title = ?", req.Title)
			}		 
			if req.PosNumber != "" {
			model.Where("pos_number = ?", req.PosNumber)
			}		 
			if req.PosMa != "" {
			model.Where("pos_ma = ?", req.PosMa)
			}		 
			if req.PosState != 0 {
			model.Where("pos_state = ?", req.PosState)
			}		 
			if req.PosMsg != "" {
			model.Where("pos_msg = ?", req.PosMsg)
			}    
	}
	// 查询
	list, err = model.Order("lib_id desc").All()
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("查询失败")
		return
	}
	return
}
