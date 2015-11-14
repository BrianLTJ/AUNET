<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/4/18
 * Time: 0:39
 */

namespace Design\Controller;


class DesignController extends CommonController{
    public function design_index(){
        layout('Design_layout');
        $design = M("design")->select();
        $data = array();
        foreach($design as $v) {
            $arr = explode(".",$v["time"]);
            $key = array("year","month","day");
            $arr = array_combine($key,$arr);
            $v = array_merge($v,$arr);
            $data[]=$v;
        }
        $data = convertArrayToTree($data);
        $this->data=$data;
        $this->display();
    }

    public function add() {
        if(M("Design")->add(array('time'=>$_POST['wt_time'],'content'=>$_POST['wt_content'],'phone'=>$_POST['wt_contacts']))) {
            $this->success("提交成功");
        } else {
            $this->error("提交失败");
        }
    }
}