<?php/** * Created by PhpStorm. * User: Administrator * Date: 2015/2/6 * Time: 21:36 */namespace Admin\Controller;use Think\Controller;/** * Class RbacController for RBAC management, <a href="https://en.wikipedia.org/wiki/Role-based_access_control">https://en.wikipedia.org/wiki/Role-based_access_control</a> * @package Admin\Controller */class RbacController extends CommonController{    public function logout(){        session_unset();        session_destroy();        $this->redirect('Admin/Index/index');    }    public function rbac_index(){//    dump($_SESSION);        $this->display();    }    public function role(){        $this->role=M('role')->select();        $this->display();//        dump($this->role);die;    }    public function node(){        $field=array('id','name','title','pid','status');        $node=M('node')->field($field)->order('sort')->select();        $this->node=node_merge($node);//        dump($this->node);die;        $this->display();    }    public function adduser(){        $this->role=M('role')->select();        $this->display();    }    public function user(){        $this->user=D('UserRelation')->field('password',true)->relation(true)->select();    //实例化模型文件        $this->display();    }    /*     * 将用户写入数据库     */    public function addUserHandle(){//        dump($_POST);die;        if(!IS_POST){            $this->error(C('PAGE_NOT_FOUND'),U('rbac_index'));        }        $user=array(            'username'=>I('username'),            'password'=>I('password','','md5'),            'logintime'=>time(),            'loginip'=>get_client_ip()        );        $role=array();        if($uid=M('user')->add($user)){            foreach($_POST['role_id'] as $v){                $role[]=array(                    'role_id'=>$v,                    'user_id'=>$uid                );            }            /*             * 添加用户-角色关系             */            if(M('role_user')->addAll($role)){                $this->success(C('ADD_SUCCESS'),U('rbac_index'));            }else{                $this->error(C('ADD_FAILED'));            }        }    }    public function addrole(){        $this->display();    }    public function addRoleHandle(){//        dump($_POST);        if(!IS_POST){            $this->error(C('PAGE_NOT_FOUND'),U('rbac_index'));        }        if(M('role')->add($_POST)){            $this->success(C('ADD_SUCCESS'),U('Admin/Rbac/role'));        }else{            $this->error(C('ADD_FAILED'));        }    }    public function addnode(){        $this->level=I('level',1,'intval');        $this->pid=I('pid',0,'intval');        switch($this->level){            case 1:                $this->type='应用';                break;            case 2:                $this->type='控制器';                break;            case 3:                $this->type='动作方法';                break;        }        if(I('id',0,'intval')!=0){            $id=I('id',0,'intval');//            dump($id);die;            $node=M('node')->where(array('id'=>$id))->find();            $this->node=$node;//            dump($this->node);            $this->display();        }else{            $this->display();        }    }    //修改 OR 添加节点    public function addNodeHandle(){        if(!IS_POST){            $this->error(C('PAGE_NOT_FOUND'),U('rbac_index'));        }        $id=I('id',0,'intval');        if($id!=0){            $where=array('id'=>$id);            if(M('node')->where($where)->save($_POST)){                $this->success(C('EDIT_SUCCESS'),U('Admin/Rbac/node'));            }else{                $this->error(C('EDIT_FAILED'));            }        }else{            if(M('node')->add($_POST)){                $this->success(C('ADD_SUCCESS'),U('Admin/Rbac/node'));            }else{                $this->error(C('ADD_FAILED'));            }        }    }    public function access(){        $rid=I('rid',0,'intval');//        dump($rid);die;        $field=array('id','name','title','pid','status');        $node=M('node')->order('sort')->field($field)->select();        //原有权限        $access=M('access')->where(array('role_id'=>$rid))->getField('node_id',true);        $this->node=node_merge($node,$access);//        dump($this->node);die;        $this->rid=$rid;        $this->display();    }    /*     * 设置权限     */    public function setAccess(){        if(!IS_POST){            $this->error(C('PAGE_NOT_FOUND'),U('rbac_index'));        }//        dump($_POST);die;        $rid=I('rid',0,'intval');//        dump($rid);die;        $db=M('access');        $db->where(array('role_id'=>$rid))->delete();   //清空权限        $data=array();        foreach($_POST['access'] as $v){            $tmp=explode('_',$v);//            dump($tmp);            $data[]=array(                'role_id'=>$rid,                'node_id'=>$tmp[0],                'level'=>$tmp[1]            );        }//            dump($data);die;        if($db->addAll($data)){            $this->success(C('EDIT_SUCCESS'),U('role'));        }else{            $this->error(C('EDIT_FAILED'));        }    }    //锁定 OR 解锁用户    public function lock()    {        $id = I('id', 0, 'intval');        $User = M('user');        $data['lock']=I('lock')?0:1;        $msg=I('lock')?'解锁':'锁定';        if ($User->where(array('id' => $id))->save($data)) {            $this->success($msg.'成功');        } else {            $this->error($msg.'失败');        }    }    public function Userdel(){        $id=I('id',0,'intval');        if(M('user')->delete($id)){            $this->success('删除成功');        }else{            $this->error('删除失败');        }    }    public function editpwd(){        $this->id=I('id','0','intval');//        dump($this->id);die;//        dump($_SESSION['uid']);die;        $this->display();    }    public function editpwdHandle(){        if(!IS_POST){            $this->error(C('PAGE_NOT_FOUND'),U('rbac_index'));        }        $id=I('id',0,'intval');//        dump($id);die;//        $id=$id?$id:(int)$_SESSION['uid'];        $where=array('id'=>$id);        $find=array('id'=>$id,'password'=>I('password','','md5'));        $data['password']=I('password','','md5');        $User=M('user');        if($User->where($find)->find()){            $this->error('请不要输入原来的密码');        }        if(M('user')->where($where)->save($data)){            $this->success(C('EDIT_SUCCESS'),'rbac_index');        }else{            $this->error(C('EDIT_FAILED'));        }    }    //删除节点    public function delNode(){        $id=I('id',0,'intval');        if(M('node')->delete($id)){            $this->success('删除成功');        }else{            $this->error('删除失败');        }    }    public function delApp() {        $id = I('id', 0, 'intval');        $action = M('node')->where(array('pid'=>$id))->select();        foreach ($action as $v) {            $method = M('node')->where(array('pid'=>$v['id']))->delete();        }        M('node')->where(array('pid'=>$id))->delete();        $rst = M('node')->delete($id);        if ($rst) {            $this->success('删除成功');        } else {            $this->error('删除失败');        }    }    public function delAction() {        $id = I('id', 0, 'intval');        M('node')->where(array('pid'=>$id))->delete();        $rst = M('node')->delete($id);        if($rst) {            $this->success('删除成功');        } else {            $this->error('删除失败');        }    }    //用户修改邮箱界面    public function editmailByUser(){        $user=M('user');        $mail=$user->where('id='.$_SESSION['uid'])->getField('mail');        if(strpos($mail,"@")>4) {            for($i=2;$i<strpos($mail,"@")-3;$i++){                $mail=substr_replace($mail,'*',$i,1);            }        }        $this->assign('mail',$mail);        $this->display();    }    public function editmailByUserHandler() {        if(!IS_POST){            $this->error(C('PAGE_NOT_FOUND'));        }        $id=$_SESSION['uid'];        $data=array('mail'=>$_POST['newmail']);        if(filter_var($_POST['newmail'],FILTER_VALIDATE_EMAIL)){            if(M('user')->where(array('id'=>$id))->save($data)){                $this->success(C('EDIT_SUCCESS'),U('Admin/Rbac/editmailByUser'));            }else{                $this->error(C('EDIT_FAILED'));            }        }else {            $this->error("请输入合法的邮箱地址");        }            }        //清除当前的邮箱地址    public function editmailByUser_del(){        $id=$_SESSION['uid'];        $data=array('mail'=>'');        if(M('user')->where(array('id'=>$id))->save($data)){            $this->success(C('EDIT_SUCCESS'),U('Admin/Rbac/editmailByUser'));        }else{            $this->error(C('EDIT_FAILED'));        }    }    //用户修改密码界面    public function editpwdbyuser(){        $this->display();    }    public function editpwdByUserHandle(){        if(!IS_POST){            $this->error(C('PAGE_NOT_FOUND'));        }        $id=$_SESSION['uid'];        $oldpwd=I('oldpwd','','md5');        $newpwd=I('newpwd','','md5');        $find=array('id'=>$id,'password'=>$oldpwd);        $data=array('password'=>$newpwd);        if(!M('user')->where($find)->find()){            $this->error('旧密码错误');        }else{            if($oldpwd==$newpwd){                $this->error('新旧密码相同!');            }else{                if(M('user')->where(array('id'=>$id))->save($data)){                    $this->success(C('EDIT_SUCCESS'),U('Admin/Index/index'));                }else{                    $this->error(C('EDIT_FAILED'));                }            }        }    }    //用户帮助界面    //显示用户拥有的权限    public function help(){        if($_SESSION['username']==C("RBAC_SUPERADMIN")){            $this->remark="超级管理员";            $this->text="所有权限";        }else{            $id=(int)$_SESSION['uid'];            $data=D('UserRelation')->where(array('id'=>$id))->relation(true)->field('id')->find();            $role_id=array();            $remark=array();            foreach($data['role'] as $v=>$k){                $role_id[$v]=(int)$k['id'];                $remark[$v]=$k['remark'];   //身份描述            }            $access=M('access');            foreach($role_id as $v=>$k){                $node[$v]=$access->where(array('role_id'=>$k,'level'=>3))->field('node_id')->select();            }            foreach($node as $item=>$arr){                foreach($arr as $v=>$k){                    foreach($k as $num=>$node_id){                        $user_node[]=(int)$node_id;                    }                }            }            $Node=M('node');            foreach($user_node as $v=>$id){                $text[$v]=$Node->where(array('id'=>$id))->field('title')->find();                $user_permission[$v]=$text[$v]['title'];            }            $this->text=$user_permission;    //权限拥有            $this->remark=$remark;        }        $this->display();    }} 