// ==========================================================================
// 生成日期：2021-08-02 15:29:27
// 生成人：gfast
// ==========================================================================
package link
import (
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/os/gtime"
)
// AddReq 用于存储新增请求的请求参数
type AddReq struct {	 
	 LinkName  string   `p:"link_name" v:"required#列表名称不能为空"`  
	 LinkUrl  string   `p:"link_url" `  
	 LinkZip  int   `p:"link_zip" `  
	 LinkBrief  string   `p:"link_brief" `  
	 LinkContent  string   `p:"link_content" `  
	 LinkEdit  int   `p:"link_edit" `  
	 LinkDewurl  string   `p:"link_dewurl" `  
	 LinkRemak  string   `p:"link_remak" `  
	 LinkAddtime  *gtime.Time   `p:"link_addtime" `  
	 LinkOpen  int   `p:"link_open" `  
}
// EditReq 用于存储修改请求参数
type EditReq struct {
	LinkId    int  `p:"link_id" v:"required#主键ID不能为空"`    
	LinkName  string `p:"link_name" v:"required#列表名称不能为空"`   
	LinkUrl  string `p:"link_url" `   
	LinkZip  int `p:"link_zip" `   
	LinkBrief  string `p:"link_brief" `   
	LinkContent  string `p:"link_content" `   
	LinkEdit  int `p:"link_edit" `   
	LinkDewurl  string `p:"link_dewurl" `   
	LinkRemak  string `p:"link_remak" `   
	LinkAddtime  *gtime.Time `p:"link_addtime" `   
	LinkOpen  int `p:"link_open" `  
}
// RemoveReq 用于存储删除请求参数
type RemoveReq struct {
	Ids [] int  `p:"ids"` //删除id
}
// SelectPageReq 用于存储分页查询的请求参数
type SelectPageReq struct {  
	LinkId  int `p:"link_id"` //列表id   
	LinkName  string `p:"link_name"` //列表名称   
	LinkUrl  string `p:"link_url"` //本地运行路径   
	LinkZip  int `p:"link_zip"` //是否需要解压   
	LinkBrief  string `p:"link_brief"` //简介   
	LinkContent  string `p:"link_content"` //内容   
	LinkEdit  int `p:"link_edit"` //版本   
	LinkDewurl  string `p:"link_dewurl"` //下载脚本库地址   
	LinkRemak  string `p:"link_remak"` //备注   
	LinkAddtime  *gtime.Time `p:"link_addtime"` //添加时间   
	LinkOpen  int `p:"link_open"` //是否禁用  
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
	entity.LinkName = req.LinkName  
	entity.LinkUrl = req.LinkUrl  
	entity.LinkZip = req.LinkZip  
	entity.LinkBrief = req.LinkBrief  
	entity.LinkContent = req.LinkContent  
	entity.LinkEdit = req.LinkEdit  
	entity.LinkDewurl = req.LinkDewurl  
	entity.LinkRemak = req.LinkRemak  
	entity.LinkAddtime = req.LinkAddtime  
	entity.LinkOpen = req.LinkOpen
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
	_, err := Model.Delete("link_id in(?)", Ids)
	if err != nil {
		g.Log().Error(err)
		return gerror.New("删除失败")
	}
	return nil
}
// EditSave 根据ID来修改信息
func EditSave(req *EditReq) error {
	// 先根据ID来查询要修改的记录
	entity, err := GetByID(req.LinkId)
	if err != nil {
		return err
	}
	// 修改实体	   
	entity.LinkName = req.LinkName  
	entity.LinkUrl = req.LinkUrl  
	entity.LinkZip = req.LinkZip  
	entity.LinkBrief = req.LinkBrief  
	entity.LinkContent = req.LinkContent  
	entity.LinkEdit = req.LinkEdit  
	entity.LinkDewurl = req.LinkDewurl  
	entity.LinkRemak = req.LinkRemak  
	entity.LinkAddtime = req.LinkAddtime  
	entity.LinkOpen = req.LinkOpen 
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
		if req.LinkId != 0 {
			model = model.Where("link_id = ?", req.LinkId)
		}	
		if req.LinkName != "" {
			model = model.Where("link_name like ?", "%"+req.LinkName+"%")
		}	 
		if req.LinkUrl != "" {
			model = model.Where("link_url = ?", req.LinkUrl)
		}	 
		if req.LinkZip != 0 {
			model = model.Where("link_zip = ?", req.LinkZip)
		}	 
		if req.LinkBrief != "" {
			model = model.Where("link_brief = ?", req.LinkBrief)
		}	 
		if req.LinkContent != "" {
			model = model.Where("link_content = ?", req.LinkContent)
		}	 
		if req.LinkEdit != 0 {
			model = model.Where("link_edit = ?", req.LinkEdit)
		}	 
		if req.LinkDewurl != "" {
			model = model.Where("link_dewurl = ?", req.LinkDewurl)
		}	 
		if req.LinkRemak != "" {
			model = model.Where("link_remak = ?", req.LinkRemak)
		}	 
		if req.LinkAddtime != nil {
			model = model.Where("link_addtime = ?", req.LinkAddtime)
		}	 
		if req.LinkOpen != 0 {
			model = model.Where("link_open = ?", req.LinkOpen)
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
	list, err = model.Page(int(page), int(req.PageSize)).Order("link_id desc").All()
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
			if req.LinkId != 0 {
			model.Where("link_id = ?", req.LinkId)
			}		
			if req.LinkName != "" {
			model.Where("link_name like ?", "%"+req.LinkName+"%")
			}		 
			if req.LinkUrl != "" {
			model.Where("link_url = ?", req.LinkUrl)
			}		 
			if req.LinkZip != 0 {
			model.Where("link_zip = ?", req.LinkZip)
			}		 
			if req.LinkBrief != "" {
			model.Where("link_brief = ?", req.LinkBrief)
			}		 
			if req.LinkContent != "" {
			model.Where("link_content = ?", req.LinkContent)
			}		 
			if req.LinkEdit != 0 {
			model.Where("link_edit = ?", req.LinkEdit)
			}		 
			if req.LinkDewurl != "" {
			model.Where("link_dewurl = ?", req.LinkDewurl)
			}		 
			if req.LinkRemak != "" {
			model.Where("link_remak = ?", req.LinkRemak)
			}		 
			if req.LinkOpen != 0 {
			model.Where("link_open = ?", req.LinkOpen)
			}		   
	}
	// 查询
	list, err = model.Order("link_id desc").All()
	if err != nil {
		g.Log().Error(err)
		err = gerror.New("查询失败")
		return
	}
	return
}
