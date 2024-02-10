//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005b.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_005b.nss","ActionCamera",true);
	Conquest("nss/ma04_005b.nss","ActionCameraProcess",true);
	Conquest("nss/ma04_005b.nss","ActionCameraDelete",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($ma04_005b_routeFlag==true){$ma04_005b_routeFlag=false;}
	else{$Kanae_Flag=$Kanae_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma04_005z.nss";

}

scene ma04_005b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_005.nss"


//●香奈枝
	SoundPlay("@mbgm29",0,1000,true);

	PrintBG("上背景", 30000);

	CreateCamera("カメラ１", Center, Middle, 250);
	SetAlias("カメラ１","カメラ１");

	CreateTextureSP("カメラ１/絵背景100",500, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex04.jpg");
	CreateTextureEX("カメラ１/絵背景200",500, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex03.jpg");
	SetAlias("カメラ１/絵背景100","絵背景100");
	Request("カメラ１/絵背景100", Smoothing);
	Request("カメラ１/絵背景200", Smoothing);
	Zoom("カメラ１/絵背景100", 0, 1200, 1200, null, true);
	Zoom("カメラ１/絵背景200", 0, 1200, 1200, null, true);

	CreateTextureSP("カメラ１/絵１",650, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex01.png");
	CreateTextureEX("カメラ１/絵２",650, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex02.png");
	SetAlias("カメラ１/絵１","絵１");
	SetAlias("カメラ１/絵２","絵２");
	Request("カメラ１/絵１", Smoothing);
	Request("カメラ１/絵２", Smoothing);
	Move("カメラ１/絵１", 0, @+50, @0, null, true);
	Move("カメラ１/絵２", 0, @+50, @0, null, true);


	MoveCamera("@カメラ１", 0, @+200, @-300, @0, Dxl1, true);

	Fade("カメラ１/絵２", 1000, 1000, Dxl1, false);
	Fade("カメラ１/絵１", 1000, 0, Axl1, false);
	MoveCamera("@カメラ１", 2500, @-680, @-290, @+300, Dxl1, false);

	FadeDelete("上背景", 1000, true);

	ActionCamera();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　看向香奈枝小姐。
　……倒不如说，视线不知该投向哪里。

　这么想着，结果却像是在凝视着她一般。
　看上去就是如此。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0010a03">
「他在看我。他在看我呢。
　……啊啊。」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0020a04">
「作战成功！
　感觉眼下我家小姐在非常变态的同时却又在努力
装作事不关己呢。」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0030a00">
「不可否认，我的视线被吸引了。
　……你选的泳衣还真是大胆。」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0040a03">
「这是自备品。」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0050a04">
「我就知道是这样。」

{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005b0060a02">
「这不是内衣吗……
　你在想什么啊。难道不觉得羞耻吗！」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0070a03">
「哎呀哎呀，真是单纯的小姑娘。
　这可是正宗泳装哦？　是法国刚开发出来的
新品。」

{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005b0080a02">
「胡说八道。
　怎可能会有这么不知廉耻的泳装。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0090a00">
「那是事实，所以说这世界很复杂，一条。
　好像是叫做比基尼。」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0100a04">
「不愧是凑斗大人。真是博识。
　虽然事实上我很想追问您何以会熟知
这种事情。」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005b0110a02">
「…………咦？
　真、真的吗？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0120a00">
「虽然我也是第一次见到。」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0130a03">
「我想应该还没有在大和出售。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);

	ActionCameraDelete();
	Fade("絵ＥＶ100", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　应该是吧。
　如若不然，周围的人们——尤其是男性——的视线
也不会如此集中。

　……不。
　也没什么大的变化吧。

　布料轻薄的前卫泳装造型，把大鸟上尉出众的身材
完美地突显了出来。
　已经到了夸张的地步。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0140a03">
「呵呵。怎么样，景明大人？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0150a00">
「真是引人入胜。
　非常地……」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0160a03">
「能帮我擦防晒油吗？」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0170a00">
「愿意效劳。」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0180a04">
「您很乐意这么做吧，凑斗大人。」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0190a00">
「是。」

{	FwR("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0200a04">
「毫不犹豫，无比直接的视线……
　虽然我强烈地觉得这股劲头好像用错了
地方。」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0210a03">
「不，这才是景明大人。
　来来，请——」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0220a00">
「那就恕我冒犯了。」

{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005b0230a02">
「……凑斗先生……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一条抬起眼睛看着我。
　她在闹别扭。

　我多少恢复了一些冷静。
　…………对周围情况适应过头了吧。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0240a00">
「还是算了。」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0250a03">
「咦？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0260a00">
「我感觉会忘记自己的目的。」

{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0270a03">
「嘁。真可惜。」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0280a04">
「算了，这也是无可厚非吧。
　再这样继续下去景明大人就会想要勃起，
这也只会让我们困扰而已。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0290a00">
「这一点也会令我非常困扰。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　实在失态至极。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆香奈枝好感度＋
//$Kanae_Flag=$Kanae_Flag++;
	$ma04_005b_routeFlag = true;
	$Kanae_Flag = $Kanae_Flag+2;

	judgment_of_count();

..//ジャンプ指定
//次ファイル　"ma04_005z.nss"

}


function ActionCamera(){

	CreateProcess("動き回るカメラ", 150, 0, 0, "ActionCameraProcess");
	SetAlias("動き回るカメラ","動き回るカメラ");

	Request("動き回るカメラ", Start);

}

function ActionCameraProcess(){


	begin:

	WaitAction("@カメラ１", null);

	MoveCamera("@カメラ１", 5000, @0, @+200, @+50, Dxl1, true);

	MoveCamera("@カメラ１", 4000, @+300, @+300, @+0, AxlDxl, true);
	Wait(2000);
	MoveCamera("@カメラ１", 4000, @-300, @-500, @-50, AxlDxl, true);

}

function ActionCameraDelete(){

	Request("@動き回るカメラ", Stop);
	MoveCamera("@カメラ１", 1000, 0, -600, 250, Dxl1, false);


}


