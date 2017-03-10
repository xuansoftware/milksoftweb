package routers

import (
	"github.com/xuansoftware/milksoftweb/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
}
