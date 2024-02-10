//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_011.nss_MAIN
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
	#bg079_ウォルフ教授の部屋_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_012.nss";

}

scene mc02_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_010.nss"

//◆ウォルフの部屋
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	
	OnBG(11, "bg079_ウォルフ教授の部屋_03.jpg");
	FadeBG(0, false);
	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　真清闲啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0110010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　从被士兵带走，来到这个房间后，已过了三十分钟。
　房间的主人不在，士兵也很快退出了房间，所以也没
有诉说不平的对象。

　虽然大鸟大尉说是名为沃尔夫教授的人物把我叫来……
　但只是找我来，却把我置之不理，这样做有何意图呢。

　房间里十分杂乱。
　本以为是山一样的古书堆，那之上却放着非洲的
工艺品和像是木雕的假面，我看向对面，那里放着
数本装甲竞技的专业杂志。

　墙上贴着——田村甲业宣传用的——少女骑手皇路操
的等身海报。
　还有像是评价般的文字。字体很漂亮：

“装甲骑手不穿内裤。甚是美丽”

　意义不明。

　既然被称为教授就是学者吧，可是我完全无法从中看出
沃尔夫教授的研究领域。
　无论何种解释都可以理解，但又似乎有些地方让人想不
通。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0110020a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　总之，我被长时间撂在这个空间内不闻不问，正在
顺利地培养无聊之虫。
　培育过头，似乎该狂暴起来了。

　如果这是自己的房间，就有能够消磨时间的事可做，
即便无所事事，悠然打盹也不错，所以一般是不会感到
无聊的。
　但是，在别人的房间里，有可做与不可做之事。

　找出各种稀罕之物消磨时间，仅是如此就愈发刺激了
无聊感。
　作为理所当然的礼仪礼节，忍住不去擅自触摸令人很
难熬。

　…………但是。
　一个人待在别人的房间里这种情况原本就很奇怪。

　这个房间的主人与其说是毫不在意私人物品被客人擅
自触摸……倒不如说是只将即便被擅自触摸也无需担心
的物品放在这里吧。
　若非如此，就不会让我进入主人不在的房间吧。

　虽然也不否认有可能只是对此漠不关心……<k>
　
　
　马上就一个小时了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0110030a00">
「……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0110040a00">
「失礼了……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　怀着些许歉疚，我拿起了距离自己最近的那叠纸。

　看来似乎是什么论文。

　第一页的纸上写着标题。
　
　————『剑胄梦想论』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ページめくる音
	OnSE("se日常_物_紙をめくる02", 1000);
//◆ノベル表示


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　剑胄所谓何物。此乃糅合了人之血肉与金属所打造而
成的铠甲，具备生命体与金属的双重特性。换言之，剑
胄拥有与人类相似的智慧，受到损伤会像生物一样再生，
独自进行活动也并非不可能。而且，此物体亦是货真
价实的金属，基本上无人使用时不会有所动作，只要保
存环境得当，亦不会死亡或腐烂变质。
　接下来。自不必多言，剑胄会给予穿戴它的战士魔神
之力。这便是剑胄。

　区区铠甲与剑胄，究竟是何种未知物质给二者带来云
泥之别？以我等现今科学的认知力还无法企及，其航行
能力不足以远行至真实之岛。先人与我等殚精竭虑的劳
动是否终能开花结果，如今尚无一言能够断定。
或许在百年后的最高学府中，那些拥有突飞猛进技术知
识的教授们或许会和我等同样一头雾水，亦或是，马其
顿某处穷乡僻壤的天才所写的，将历来剑胄研究彻底推
翻的论文会在下个月的新科学杂志上华丽登场。不管怎
样，我等活在当下的求知者所能做的只有一件事。那就
是相信不知何时会造访的灵光一闪的那一刻，对脑细胞
鞭驽策蹇。

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//―――――――――――――――――――――――――――――

//◆戻り

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0110050a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　这篇论文似乎并不完整。
　应该欠缺了些许吧，翻过一页，内容突然映入眼帘。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 1000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);

}

..//ジャンプ指定
//次ファイル　"mc02_012.nss"