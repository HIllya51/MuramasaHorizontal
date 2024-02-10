//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_013.nss_MAIN
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

	$GameName = "mc01_014vs.nss";

}

scene mc01_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_012vs"


//◆香奈枝サイド
//◆建朝寺前
	PrintBG("上背景", 30000);

	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);

//◆本文中に「そろそろ夕暮れ時でございますね」とあるので、昼の背景を使用しています。 inc櫻井

	OnBG(100, "bg056_建長寺三門前_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm06",1000,1000,true);
	Delete("上背景");

	FadeDelete("黒幕１", 1000, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130010a03">
「…………」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130020a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かちゃ。カップ置く
	OnSE("se日常_食器_カップ置く",1000);

	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服a.png");
	FadeStR(300, true);
	
	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130030a03">
「多谢款待。」

{	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130040a04">
「要走了吗？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130050a03">
「是啊。
　时间可不是无限的。」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130060a04">
「快到日暮时分了吧……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130070a03">
「……真是的，多么过分的男人啊。
　居然冷待我的邀约。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130080a04">
「想必各人都有自己的情况吧。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130090a03">
「请以我为优先。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130100a04">
「遗憾的是，这个世界似乎并不是以大小姐为
中心而旋转。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130110a03">
「是吗？　真是太遗憾了。
　那么我得为了成为世界中心，而重新建造世
界呢。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130120a04">
「此事挪到下周日也无妨吧。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130130a03">
「是啊。
　现在还是处理工作吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝。私服＋コントラバス
	DeleteStR(200, true);

	OnSE("se人体_動作_起きる02", 1000);

	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服b.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130140a04">
「……赝作弓圣也一起吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130150a03">
「难得许可下来了。
　弦乐器如果长期不弹，
其品质可是会有损失的哟？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130160a04">
「那么，我衷心期待那美好的音色。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130170a03">
「婆婆也是，外面就烦劳你处理了。」

{	OnSE("se人体_足音_歩く03_L", 1000);
	DeleteStR(300, false);
	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130180a04">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc01_014vs.nss"