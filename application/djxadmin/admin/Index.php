<?php
namespace app\djxadmin\admin;

use app\admin\controller\Admin;
use app\common\builder\ZBuilder; // 引入ZBuilder
use think\Db;


/**
 * djx 后台模块
 */
class Index extends Admin{
	
	//后台管理首页函数
	public function index(){
		// 读取用户数据
		$data_list = Db::table('djx_scene_info')->select();
		// 使用ZBuilder构建数据表格
		return ZBuilder::make('table')
			->addColumns([ // 批量添加列
				['ID', 'ID','text.edit'],
				['NAME', '景点名称','text.edit'],
				['POSITION', '位置','text.edit'],
				['TEXT_INTRODUCTION', '简介','text.edit'],
				['VOICE_ADD', '语音地址','text.edit'],
				['PIC_ADD', '图片','text.edit'],
				['SCENE_SPRITE_MAP','显示图标','text.edit']
			])
			->setTableName('scene_info') // 指定数据表名
			->setPrimaryKey('ID') // 设置主键名为username
			->setRowList($data_list) // 设置表格数据
			->addTopButton('add') // 添加顶部按钮
			->addTopButton('delete') // 添加顶部按钮
			->fetch();
	}
	//新增表单
	public function add(){
		return ZBuilder::make('form')
			->setUrl(url('save'))
			->addFormItems([
				['text', 'ID', '景点ID'],
				['text','NAME', '景点名称'],
				['text','POSITION', '位置'],
				['text','VOICE_ADD', '语音地址'],
				['text','PIC_ADD', '图片'],
				['text','SCENE_SPRITE_MAP','显示图标'],
				['ueditor','TEXT_INTRODUCTION', '简介']
		   ])
			->fetch();
	}
	//存储表单
	public function save(){
		$data=$_POST;
		$res=Db::table('djx_scene_info')->insert($data);
		if($res){
			return $this->success('添加成功');
		}
	}
}