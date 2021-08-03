// ==========================================================================
// 生成日期：2021-08-02 11:26:16
// 生成人：liu
// ==========================================================================
package system

import (
	lib_logModel "gfast/app/model/system/lib_log"
	lib_logService "gfast/app/service/system/lib_log_service"
	"gfast/library/response"

	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/util/gvalid"
)

//控制器
type Lib_log struct{}


// List 列表页
func (c *Lib_log) List(r *ghttp.Request) {
	// 定义一个结构体存储请求参数
	var req *lib_logModel.SelectPageReq
	// 获取参数
	err := r.Parse(&req)
	if err != nil {
		if _,ok := err.(*gvalid.Error); ok {
			response.FailJson(true, r, err.(*gvalid.Error).FirstString())
		} else {
			response.FailJson(true, r, err.Error())
		}
	}
	total, page, list, err := lib_logService.SelectListByPage(req)
	if err != nil {
		response.FailJson(true, r, err.Error())
	}
	result := g.Map{
		"currentPage": page,
		"total":       total,
		"list":        list,
	}
	response.SusJson(true, r, "获取列表数据成功", result)
}


// Add 新增
func (c *Lib_log) Add(r *ghttp.Request) {
	if r.Method == "POST" {
		var req *lib_logModel.AddReq
		// 通过Parse方法解析获取参数
		err := r.Parse(&req)
		if err != nil {
			if _,ok := err.(*gvalid.Error); ok {
				response.FailJson(true, r, err.(*gvalid.Error).FirstString())
			} else {
				response.FailJson(true, r, err.Error())
			}
		}
		// 调用service中的添加函数添加
		err = lib_logService.AddSave(req)
		if err != nil {
			response.FailJson(true, r, err.Error())
		}
		response.SusJson(true, r, "添加成功")
	}
}


// Edit 修改
func (c *Lib_log) Edit(r *ghttp.Request) {
	// 如果是post提交的请求就执行修改操作
	if r.Method == "POST" {
		var editReq *lib_logModel.EditReq
		// 通过Parse方法解析获取参数
		err := r.Parse(&editReq)
		if err != nil {
			if _,ok := err.(*gvalid.Error); ok {
				response.FailJson(true, r, err.(*gvalid.Error).FirstString())
			} else {
				response.FailJson(true, r, err.Error())
			}
		}
		err = lib_logService.EditSave(editReq)
		if err != nil {
		response.FailJson(true, r, err.Error())
		}
		response.SusJson(true, r, "修改参数成功")
	}
	// 不是post提交的请求就到修改页面后查询出要修改的记录
	id := r.GetInt("id")
	params, err := lib_logService.GetByID(id)

	if err != nil {
		response.FailJson(true, r, err.Error())
	}
	response.SusJson(true, r, "ok", params)
}


// Delete 删除
func (c *Lib_log) Delete(r *ghttp.Request) {
	var req *lib_logModel.RemoveReq
	//获取参数
	if err := r.Parse(&req); err != nil {
		if _,ok := err.(*gvalid.Error); ok {
			response.FailJson(true, r, err.(*gvalid.Error).FirstString())
		} else {
			response.FailJson(true, r, err.Error())
		}
	}
	err := lib_logService.DeleteByIds(req.Ids)
	if err != nil {
	response.FailJson(true, r, "删除失败")
	}
	response.SusJson(true, r, "删除成功")
}
