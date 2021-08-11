// ==========================================================================
// 生成日期：2021-08-11 15:54:08
// 生成人：gfast
// ==========================================================================
package module

import (
	nolistModel "gfast/app/model/module/nolist"
	nolistService "gfast/app/service/module/nolist_service"
	"gfast/library/response"

	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/util/gvalid"
)

//控制器
type Nolist struct{}


// List 列表页
func (c *Nolist) List(r *ghttp.Request) {
	// 定义一个结构体存储请求参数
	var req *nolistModel.SelectPageReq
	// 获取参数
	err := r.Parse(&req)
	if err != nil {
		if _,ok := err.(*gvalid.Error); ok {
			response.FailJson(true, r, err.(*gvalid.Error).FirstString())
		} else {
			response.FailJson(true, r, err.Error())
		}
	}
	total, page, list, err := nolistService.SelectListByPage(req)
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
func (c *Nolist) Add(r *ghttp.Request) {
	if r.Method == "POST" {
		var req *nolistModel.AddReq
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
		err = nolistService.AddSave(req)
		if err != nil {
			response.FailJson(true, r, err.Error())
		}
		response.SusJson(true, r, "添加成功")
	}
}


// Edit 修改
func (c *Nolist) Edit(r *ghttp.Request) {
	// 如果是post提交的请求就执行修改操作
	if r.Method == "POST" {
		var editReq *nolistModel.EditReq
		// 通过Parse方法解析获取参数
		err := r.Parse(&editReq)
		if err != nil {
			if _,ok := err.(*gvalid.Error); ok {
				response.FailJson(true, r, err.(*gvalid.Error).FirstString())
			} else {
				response.FailJson(true, r, err.Error())
			}
		}
		err = nolistService.EditSave(editReq)
		if err != nil {
		response.FailJson(true, r, err.Error())
		}
		response.SusJson(true, r, "修改参数成功")
	}
	// 不是post提交的请求就到修改页面后查询出要修改的记录
	id := r.GetString("id")
	params, err := nolistService.GetByID(id)

	if err != nil {
		response.FailJson(true, r, err.Error())
	}
	response.SusJson(true, r, "ok", params)
}


// Delete 删除
func (c *Nolist) Delete(r *ghttp.Request) {
	var req *nolistModel.RemoveReq
	//获取参数
	if err := r.Parse(&req); err != nil {
		if _,ok := err.(*gvalid.Error); ok {
			response.FailJson(true, r, err.(*gvalid.Error).FirstString())
		} else {
			response.FailJson(true, r, err.Error())
		}
	}
	err := nolistService.DeleteByIds(req.Ids)
	if err != nil {
	response.FailJson(true, r, "删除失败")
	}
	response.SusJson(true, r, "删除成功")
}
