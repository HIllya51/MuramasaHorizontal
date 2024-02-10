//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_050vs.nss_MAIN
{

	

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
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mz00_000.nss";

}

scene mc04_050vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	#変な柱フラグ = #変な柱フラグ+1;


..//ジャンプ指定
//前ファイル　"mc04_049vs.nss"


//●選択ミス

//――――――――――――――――――――――――――――――
//◆バロウズ発射
//◆命中ずどーん。
//◆ゲームオーバー
//◆ここでのゲームオーバー回数はカウントしておく。

	PrintBG("上背景", 30000);

	CreateTextureEXadd("発射", 18500, 0, Middle, "cg/ef/ef044_火花a.jpg");
	CreateTextureSP("絵EV100", 18000, 0, Middle, "cg/ev/resize/ev205_矢を撃ち放つバロウズ_al.jpg");
	CreateColorEXadd("絵色100", 18500, "WHITE");
	CreateTextureEX("絵爆発", 18150, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");

	Move("絵EV100", 0, -512, -288, null, true);
	SetBlur("絵EV100", true, 1, 300, 100, false);
	CreateSE("SEボウガン","se戦闘_バロウズ_ボーガン射撃01");
	CreateSE("SE01","se戦闘_衝撃_鎧転倒02");
	CreateSE("SE03","se戦闘_破壊_鎧03");

	FadeDelete("上背景", 200, true);

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	EffectZoomDXadd(18500, 500, 100, "#FFFFFF", "cg/ef/ef039_時間移動.jpg", false);

//	Move("絵EV100", 200, 0, 0, Axl3, false);
//	Zoom("絵EV100", 200, 1000, 1000, Axl3, true);

	Zoom("絵EV100", 100, 500, 500, Axl3, true);
	Wait(500);

	MusicStart("SEボウガン",0,1000,0,1000,null,false);
	Fade("発射", 0, 1000, null, true);
	Rotate("発射", 300, @0, @0, @3600, null,false);
	Zoom("発射", 300, 3000, 3000, Axl3, false);
	FadeDelete("発射", 500, false);

//	Wait(1000);
	FadeDelete("絵EV100", 300, false);
	Zoom("絵爆発", 0, 1100, 1100, null, true);


	EffectZoomDXadd(18500, 2000, 500, "#FFFFFF", "cg/ef/ef022_汎用武者散華.jpg", false);

	Shake("絵爆発", 3500, 20, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵爆発", 3500, 1300, 1300, Dxl2, false);
	Fade("絵爆発", 50, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(2000);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);


	Fade("絵色100", 2000, 1000, Axl3, true);

	Wait(1000);

	ClearFadeAll(2000, true);
	CP_AllDelete();

	Wait(2000);








if(#変な柱フラグ == 2){

//――――――――――――――――――――――――――――――
.//◆※ゲームオーバー二回目
//◆銀星号·変な柱モード
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev189_銀星号の成れの果て_a.jpg");

	SoundPlay("@mbgm28",0,1000,true);


	FadeDelete("上背景", 1000, true);


	SetFwC("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/mc04/050vs0010a14">
　……唔。
　原来如此，很棘手的状况呢。

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/mc04/050vs0020a14">
　从过去的对战中寻找提示应该是有效的。
不过问题在于，找到的如果不是你<RUBY text="····">能够实行</RUBY>
的方法就没有意义。

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/mc04/050vs0030a14">
　没有隐身之术的你，以曾经使用隐身之术
折磨你的敌人为参考，在这种场合下只是徒
劳……难道你不这样认为吗。

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/mc04/050vs0040a14">
　怎么样？
　选项已经很有限了吧？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆タイトルへ

	SetVolume("@mbgm*", 3000, 0, null);

	ClearFadeAll(3000, true);
	CP_AllDelete();

	Wait(2000);

}else if(#変な柱フラグ == 4){

//――――――――――――――――――――――――――――――
.//◆※ゲームオーバー四回目
//◆銀星号·変な柱モード
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev189_銀星号の成れの果て_a.jpg");

	SoundPlay("@mbgm28",0,1000,true);
	FadeDelete("上背景", 1000, true);


	SetFwC("cg/fw/fw光_不快.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/mc04/050vs0050a14">
　陷入苦战了呢。

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/mc04/050vs0060a14">
　我也很难给你什么建议。
　只能说些普遍的道理罢了……
　总之，姑且听一下吧。

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/mc04/050vs0070a14">
　对最强武器的持有者而言，这一武器往往也是
最致命的地方。

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/mc04/050vs0080a14">
　因为过度依赖这件武器，一旦失去，很可能就
变得无所适从。
　或者说……最强武器可能会被敌方<RUBY text="·····">反过来利用</RUBY>。

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/mc04/050vs0090a14">
　这也是经常发生的事情吧？
　…………唔。
　怎么感觉自己的话听起来很刺耳呢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


#変な柱フラグ = 0;

//◆回数記録初期化してタイトルへ
	SetVolume("@mbgm*", 3000, 0, null);
	ClearFadeAll(3000, true);
	CP_AllDelete();

	Wait(2000);

}


}

..//ジャンプ指定
//次ファイル

