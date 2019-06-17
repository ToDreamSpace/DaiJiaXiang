<?php
// +----------------------------------------------------------------------

namespace app\index\controller;

use think\Db;
use think\Cache;
/**
 * 前台首页控制器
 * @package app\index\controller
 */
class Index extends Home
{
	
	//加载首页
	public function index(){
		//访问记录
		$this->pageView();
		//获得当前位置景点参数
		$sceneID=request()->get('id');
		return $this->getIndexScene($sceneID);
		
	}
	
	//加载首页时获取当前所在位置函数
	private function getIndexScene($sceneID){
		//当前所在景点信息,若有参数获得
		if(!$sceneID){
			$sceneID=0;
		}
		$currentSceneArr=Db::table('djx_scene_info')->where('ID',$sceneID)->select();
		$this->assign([
			'sceneID'=>$sceneID,
			'title'=>$currentSceneArr[0]['NAME'],
			'textIntro'=>$currentSceneArr[0]['TEXT_INTRODUCTION'],
			'voice'=>$currentSceneArr[0]['VOICE_ADD'],
			'picAdd'=>$currentSceneArr[0]['PIC_ADD']
		]);
		return $this->fetch();
	}
	
	
	//请求景点函数,客户端发送Ajax请求
	public function getScene(){
		//查询所有景点,这里使用了缓存
		if(!$scenePositionArr=cache('getScene')){
			$scenePositionArr=Db::table('djx_scene_info')->select();
			cache('getScene',$scenePositionArr,3600);
		}
		return json_encode($scenePositionArr);
	}
	
	
	//访问量相关请求
	public function pageView(){
		//记录访问量
		$viewTime=date('Y-m-d',time());
		$viewIP=request()->ip();
		$findResult=Db::table('djx_page_view')->where('VIEW_TIME',$viewTime)->where('VIEW_IP',$viewIP)->find();
		if(!$findResult){
			$data = ['VIEW_TIME' => $viewTime, 'VIEW_IP' =>$viewIP];
			Db::table('djx_page_view')->insert($data);
		}
	}

	// 查询访问量
	public function checkPageView(){
		//今天访问量
		$today=date('Y-m-d',time());
		$todayViewArr=Db::table('djx_page_view')->where('VIEW_TIME',$today)->select();
		$todayNum=count($todayViewArr);
		
		$totalViewArr=Db::table('djx_page_view')->select();
		$totalNum=count($totalViewArr);
		return "{\"todayNum\":$todayNum,\"totalNum\":$totalNum}";	
	}
	//查询区间访问量
	public function qujianViewPage($start,$end){
		$res=Db::table('djx_page_view')->where('VIEW_TIME','between time',[$start,$end])->select();
		var_dump($res);
	}

	//戴家巷总介绍,这里要使用缓存
	public function getMainInfo(){
		if(!$res=cache('getMainInfo')){
			$res=Db::name('scene_info')->where('id',0)->select();
			cache('getMainInfo',$res, 3600);
		}
		return json_encode($res);
	}
	
	//请求地图数据,这里也要使用缓存
	public function getMapdata(){
		if(!$res=cache('getMapdata')){
			$res=Db::table('djx_map_data')->select();
			cache('getMapdata',$res, 3600);
		}
		return $res;
	}
}

