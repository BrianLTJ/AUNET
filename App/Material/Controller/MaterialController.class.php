<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/4/17
 * Time: 23:01
 */
namespace Material\Controller;

use Think\Upload;

use Think\Controller;

class MaterialController extends CommonController
{
    private static $ON_CHECKED = 0;
    private static $IS_PASSED = 1;
    private static $PASSED_FAILED = 2;


    private static $type = array('power' => 0,
        'monitor' => 1,
        'bus' => 2,
        'decoration' => 3,
        'activity_center' => 4,
        'ground' => 5,
        'class' => 6,
        'special_place' => 7,
        'sport' => 8,
        'east_side' => 9,
        'others' => 10);

    public function material_index()
    {
        $name_list = array('Stuff' => '物资申请',
            'ColorPrinting' => '彩喷悬挂申请',
            'StudentCenter' => '大活教室申请',
            'RoadShow' => '户外路演场地申请',
            'BuildingClassroom' => '教学楼教室申请（教工）',
            'BuildingClassroom2' => '教学楼教室申请（学生）',
            'SpecialPlace' => '特殊场地申请',
            'SportCourt' => '韵苑体育馆使用申请',
            'EastThird' => '东四三楼申请',
            'OtherPlace' => '其他场地申请',
            'OtherStuff' => '其他物资申请',
        );
        $user_name = I('session.username', '');
        $ans = array();
        foreach ($name_list as $name_en => $name_cn)
        {
            //print("$list_name</br>");
            $list = D(strtolower($name_en));
            $tmp = $list->where("username='%s'", $user_name)->getField('id,ReviewState,CreateTime,ReviewAdvice');
            //print_r($tmp);
            if ($tmp)
            {
                $ans[$name_en] = array($name_cn, $tmp);
            }
        }
        //print_r($ans);
        $this->list = $ans;

        $this->display();
    }

    public function material_upload()
    {
        $type = I('POST.action_type');

        if (($type == 'OtherStuff') || ($type == 'OtherPlace'))
        {
            $name = 'file_' . $type;
            $upload = new Upload();// 实例化上传类
            $upload->maxSize  = 3145728;// 设置附件上传大小
            $upload->allowExts  = array('doc', 'docx');// 设置附件上传类型
            $upload->savePath =  './Material/' . $type . '/';// 设置附件上传目录
            if(!($info = $upload->upload()))
            {// 上传错误提示错误信息
                $this->error($upload->getError());
            }
            print_r($info);
            $sql = M(strtolower($type));
            $data = array();
            $data['Username'] = I('session.username', '');
            $data['ReviewState'] = 0;
            $data['CreateTime'] = date("Y年n月j日 G:i:s");
            $data['Path'] = './Upload/' . substr($info[$name]['savepath'], 1)  . $info[$name]['savename'];
            $data['Name'] = $info[$name]['name'];
            $data['AssociationName'] = '';

            $result = $sql->data($data)->add();
            if($result) {
                $this->success(L('操作成功！'));
            }else{
                $this->error($sql->getError());
            }
            return;
        }

        $sql = M(strtolower(I('POST.action_type')));
        $all_data = I('POST.');
        $data = array();
        foreach ($all_data as $key => $value)
        {
            if (preg_match('/(.*)_' . $type . '$/', $key, $match))
            {
                $data[$match[1]] = $value;
            }
        }
        if ($type == 'BuildingClassroom2')
        {
            $data['AssociationName'] = $data['Faculty'];
        }
        $data['Username'] = I('session.username', '');
        $data['ReviewState'] = 0;
        $data['CreateTime'] = date("Y年n月j日 G:i:s");

        $result = $sql->data($data)->add();
        if($result) {
            $this->success(L('操作成功！'));
        }else{
            $this->error($sql->getError());
        }

    }

    public function material_adupload()
    {
        $type = I('POST.action_type');
        $sql = M(strtolower($type));
        $all_data = I('POST.');
        $data = array();
        $data[0] = array();
        $data[1] = array();
        $data[2] = array();
        foreach ($all_data as $key => $value)
        {
            if (preg_match('/' . $type . '_(\d*)$/', $key, $match))
            {
                array_push($data[$value], $match[1]);
            }
        }

        if (count($data[1]) > 0)
        {
            $map['id'] = array('in', $data[1]);
            $sql->where($map)->setField('ReviewState', '1');
        }

        if (count($data[2]) > 0)
        {
            $map['id'] = array('in', $data[2]);
            $sql->where($map)->setField('ReviewState', '2');
        }

        foreach ($all_data as $key => $value)
        {
            if (preg_match('/' . $type . '_Review_(\d*)$/', $key, $match))
            {
                $sql->where('id=' . $match[1])->setField('ReviewAdvice', $value);
            }
        }

        $this->success(L('操作成功！'));
    }

    public function material_admin()
    {
        $name_list = array('Stuff' => '物资申请',
            'ColorPrinting' => '彩喷悬挂申请',
            'StudentCenter' => '大活教室申请',
            'RoadShow' => '户外路演场地申请',
            'BuildingClassroom' => '教学楼教室申请(教工)',
            'BuildingClassroom2' => '教学楼教室申请(学生)',
            'SpecialPlace' => '特殊场地申请',
            'SportCourt' => '韵苑体育馆使用申请',
            'EastThird' => '东四三楼申请',
            'OtherPlace' => '其他场地申请',
            'OtherStuff' => '其他物资申请'
        );

        $ans = array();
        foreach ($name_list as $name_en => $name_cn)
        {
            //print("$list_name</br>");
            $list = D(strtolower($name_en));
            $tmp = $list->where("ReviewState=0")->getField('id,AssociationName,CreateTime');

            if ($tmp)
            {
                $ans[$name_en] = $tmp;
            }
        }
        //print_r($ans);
        $this->value = $ans;

        $this->display();
    }
}