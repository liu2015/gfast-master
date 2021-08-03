// ==========================================================================
// 生成日期：2021-08-02 15:51:19
// 生成人：gfast
// ==========================================================================
package rary
import (
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/os/gtime"
)
// AddReq 用于存储新增请求的请求参数
type AddReq struct {	 
	 LibName  string   `p:"lib_name" v:"required#脚本名字不能为空"`  
	 LibRul  string   `p:"lib_rul" `  
	 LibZip  string   `p:"lib_zip" `  
	 LibBrief  string   `p:"lib_brief" `  
	 LibContent  string   `p:"lib_content" `  
	 LibAddtime  *gtime.Time   `p:"lib_addtime" `  
	 LibOpen  int   `p:"lib_open" `  
	 LibEdit  int   `p:"lib_edit" `  
	 LibRemk  string   `p:"lib_remk" `  
}
// EditReq 用于存储修改请求参数
type EditReq struct {
	LibId    int  `p:"lib_id" v:"required#主键ID不能为空"`    
	LibName  string `p:"lib_name" v:"required#脚本名字不能为空"`   
	LibRul  string `p:"lib_rul" `   
	LibZip  string `p:"lib_zip" `   
	LibBrief  string `p:"lib_brief" `   
	LibContent  string `p:"lib_content" `   
	LibAddtime  *gtime.Time `p:"lib_addtime" `   
	LibOpen  int `p:"lib_open" `   
	LibEdit  int `p:"lib_edit" `   
	LibRemk  string `p:"lib_remk" `  
}
// RemoveReq 用于存储删除请求参数
type RemoveReq struct {
	Ids [] int  `p:"ids"` //删除id
}
// SelectPageReq 用于存储分页查询的请求参数
type SelectPageReq struct {  
	LibId  int `p:"lib_id"` //脚本id   
	LibName  string `p:"lib_name"` //脚本名字   
	LibRul  string `p:"lib_rul"` //脚本上传路径   
	LibZip  string `p:"lib_zip"` //是否解压   
	LibBrief  string `p:"lib_brief"` //简介   
	LibContent  string `p:"lib_content"` //内容   
	LibAddtime  *gtime.Time `p:"lib_addtime"` //添加时间   
	LibOpen  int `p:"lib_open"` //是否禁用   
	LibEdit  int `p:"lib_edit"` //版本   
	LibRemk  string `p:"lib_remk"` //备注  
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
	entity.LibName = req.LibName  
	entity.LibRul = req.LibRul  
	entity.LibZip = req.LibZip  
	entity.LibBrief = req.LibBrief  
	entity.LibContent = req.LibContent  
	entity.LibAddtime = req.LibAddtime  
	entity.LibOpen = req.LibOpen  
	entity.LibEdit = req.LibEdit  
	entity.LibRemk = req.LibRemk
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
	entity.LibName = req.LibName  
	entity.LibRul = req.LibRul  
	entity.LibZip = req.LibZip  
	entity.LibBrief = req.LibBrief  
	entity.LibContent = req.LibContent  
	entity.LibAddtime = req.LibAddtime  
	entity.LibOpen = req.LibOpen  
	entity.LibEdit = req.LibEdit  
	entity.LibRemk = req.LibRemk 
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
		if req.LibName != "" {
			model = model.Where("lib_name like ?", "%"+req.LibName+"%")
		}	 
		if req.LibRul != "" {
			model = model.Where("lib_rul = ?", req.LibRul)
		}	 
		if req.LibZip != "" {
			model = model.Where("lib_zip = ?", req.LibZip)
		}	 
		if req.LibBrief != "" {
			model = model.Where("lib_brief = ?", req.LibBrief)
		}	 
		if req.LibContent != "" {
			model = model.Where("lib_content = ?", req.LibContent)
		}	 
		if req.LibAddtime != nil {
			model = model.Where("lib_addtime = ?", req.LibAddtime)
		}	 
		if req.LibOpen != 0 {
			model = model.Where("lib_open = ?", req.LibOpen)
		}	 
		if req.LibEdit != 0 {
			model = model.Where("lib_edit = ?", req.LibEdit)
		}	 
		if req.LibRemk != "" {
			model = model.Where("lib_remk = ?", req.LibRemk)
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
			if req.LibName != "" {
			model.Where("lib_name like ?", "%"+req.LibName+"%")
			}		 
			if req.LibRul != "" {
			model.Where("lib_rul = ?", req.LibRul)
			}		 
			if req.LibZip != "" {
			model.Where("lib_zip = ?", req.LibZip)
			}		 
			if req.LibBrief != "" {
			model.Where("lib_brief = ?", req.LibBrief)
			}		 
			if req.LibContent != "" {
			model.Where("lib_content = ?", req.LibContent)
			}		 
			if req.LibOpen != 0 {
			model.Where("lib_open = ?", req.LibOpen)
			}		 
			if req.LibEdit != 0 {
			model.Where("lib_edit = ?", req.LibEdit)
			}		 
			if req.LibRemk != "" {
			model.Where("lib_remk = ?", req.LibRemk)
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
