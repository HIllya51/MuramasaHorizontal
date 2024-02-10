//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_005.nss_MAIN
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
	#bg075_横須賀軍港_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_コブデン=true;

	$PreGameName = $GameName;

	$GameName = "mc01_006.nss";

}

scene mc01_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_003_1.nss"

//◆以下のテキストは共用部分"mb01_003.nss"なため使用しない

//◆ＣＧ：新聞紙面
//◆↓英雄編と共用。食い違いのないよう注意
/*
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);	
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/ev/ev168_新聞.jpg");
	SoundPlay("@mbgm34",0,1000,true);
	Delete("上背景");
	FadeDelete("黒幕１",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　　　　〝元帅，离世_

〝本日六时，幕府申次众发表了正三位刘卫大将领、足
利护氏殿下离世的消息。_

〝关于其离世的时间、死因等，均未给予说明。
　仅有传达，此后预定由护氏殿下的嫡孙——四郎邦氏
殿下入住普陀乐城主堡，代行政务。_

〝身处混乱中心的各界，出现了各式各样的传言，有人
认为这是京都的阴谋，有人认为是进驻军的暗杀，有人
认为是冈部残党的报复，也有人认为这件事与前段时间
在奉刀参拜之后就被封锁了的八幡宫有关。_

〝不过一切说法都仅是臆测，没有确切的根据。_

〝但是依据消息灵通人士的情报，事前大将领殿下确定
为身体健全，无任何异样。若这一情报属实，那么大将
领便非抱病而亡，那么他的死就必定是某种人为因素造
成的。_

〝除此之外，收到这一消息的进驻军总司令部——_

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト。ウェイト

	FadeDelete("絵背景50", 1000, true);
	SetVolume("@mbgm*", 1000, 0, null);
	WaitKey(1000);


*/

//◆横須賀軍港。夜
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100, "bg075_横須賀軍港_03.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm35",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　他并不是一个诸多挑剔的男人。

　若某天突然被夺走了自由饮用红茶的权利，纵感到愤
怒，他也会在之后忍受以咖啡代替红茶。得知年轻妻子
与人私通的消息后，纵怒而拔剑，他也会在发现妻子只
是带着英俊的演员频繁出没于剧场后，就容忍了这件事。

　可以说他有着常人般的宽容。
　也许周围的人对他的见解多少会有些不同，但那也只
是必然存在的合理分歧而已。

　至少，他自身并不是一个会为日常生活中的琐碎事项
不停抱怨的人。
　他有着传统英国骑士式的傲慢。

　然而他的这份傲慢在使他心怀宽容的同时，也决定了
他在面对不合理的压制时，必然会奋起反抗。
　过度的宽容只是一种精神上的卑微，这与骑士的名誉
是决不相符的。

　若他最为敬重的父亲因他犯下的过错而向他挥出铁拳，
那就连同眼泪一起承受。
　若他最深爱的妻子因他长久未归而哀叹甩他耳光，那
就紧紧地将她拥抱。

　但有理由连掠夺了他财产的强盗的归程打车费都由他
来负担吗？
　没有理由。送给盗贼的本该就只有正中他后背的一刀，
仅此而已。

　所以他从未怀疑过自己的正确性。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/stコブデン_通常_制服.png");
	FadeStR(300,true);

	SetFwH("cg/fw/fwコブデン_怒り.png");

	#voice_on_コブデン=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050010b04">
「快点！　别磨磨蹭蹭。」


{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050020e049">
「……巡逻的人暂时不会来。
　虽然按规定是每十五分钟巡视基地一周，但
他的表是那种秒针不转的话分针也不会前进的构
造。」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050030e050">
「掉到海里之后肯定就生锈了。」


{	FwH("cg/fw/fwコブデン_怒り.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050040b04">
「别再说无聊的废话了！
　让我想起了我在横滨时的那些部下，
真是不爽。」


{	FwH("cg/fw/fwコブデン_通常.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050050b04">
「快点解决……
　海风冷得刺骨。我想赶紧回房间裹起毛毯。」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050060e050">
「我们也想啊。」


{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050070e049">
「……真的要做吗？
　要是被人知道了，那可不是开除军籍这么
简单就能了结的。」


{	FwH("cg/fw/fwコブデン_通常.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050080b04">
「哼。别人怎么可能会知道。
　巡逻的人一小时只来一次，这可是你们自
己说的。」


//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050090b04">
「从六波罗的间谍到一个单纯以犯罪为乐的人，
只要愿意谁都能办得到。
　如果是内部的人，那就更不会惹人怀疑了。」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050100e050">
「啊啊……应该是吧？」


{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050110e049">
「只要没在设置炸药时被人抓住的话……」


{	FwH("cg/fw/fwコブデン_怒り.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050120b04">
「所以才让你们快点。」


{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050130e049">
「是、是。」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050140e050">
「现在也不可能反悔了，那就做吧。
　……总有种划不来的感觉啊。」


{	FwH("cg/fw/fwコブデン_通常.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050150b04">
「能供你们在<RUBY text="ｌｏｎｄｏｎ">首都</RUBY>郊外买一座牧场的报酬
还不够多吗？」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050160e050">
「也不是不够。」


{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050170e049">
「一想到要心怀愧疚地继续在军队中活下去
就……」


{	FwH("cg/fw/fwコブデン_通常.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050180b04">
「你对军队也没有丝毫眷恋不是吗？
找个时机退役吧。
　我也是这样打算的。」


//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050190b04">
「我已经受够了每天都在这异国的穷乡僻壤看
海的日子了。已经够了。真的放过我吧。
　钱已经到手了。现在我只想马上回国，和妻
子一起过平静的生活。」


{	FwH("cg/fw/fwコブデン_怒り.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050200b04">
「是啊，所以我才会这么做。
　这样做有什么错？　司令部那群腐败的混蛋！」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050210b03">
「……当然，如果你只有这些要求的话，我们也
不会有什么不满。
　虽然我们是一群腐败的混蛋。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ライトが。ホワイトアウトホワイトイン？
//◆ＧＨＱ兵。包囲

	OnSE("se日常_建物_照明点灯",1000);
	WaitKey(500);
	OnSE("se特殊_雰囲気_兵士包囲", 1000);

	CreateColorSPadd("絵色白", 19900, "#FFFFFF");
	CreateTextureSPadd("ライツ", 100, @0, @0, "cg/data/circle_04_00_1.png");

	Wait(12);

	DeleteStA(0,true);
	FadeDelete("絵色白", 1000, true);


	WaitKey(1000);
	SetVolume("@OnSE*", 1000, 0, null);
	OnSE("se戦闘_銃器_複数構える02",1000);

	SetNwH("cg/fw/nyＧＨＱ兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050220e049">
「……啊——啊！」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050230e050">
「……啊，果然。
　我早就在想事情会不会变成这样……」


{	FwH("cg/fw/fwコブデン_唖然.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050240b04">
「————————」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 1000, 0, null);


	OnSE("se人体_足音_歩く01_L",1000);
	CreatePlainSP("絵板写", 1500);
	WaitKey(300);
//◆キャノン
	StL(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");

//★ inc遠藤 立ち絵に逆光を追加。不格好か。
//081/076
	CreateStencil("S1", 1000, 120, InBottom, 128, "cg/st/stキャノン_通常_制服.png",false);
	SetAlias("S1","S1");
	CreateStencil("S1/S2", 1000, 120, InBottom, 128, "cg/st/stキャノン_通常_制服.png",false);
	SetAlias("S1/S2","S1/S2");
	CreateColorSP("S1/S2/C1", 1200, "#000000");
	SetShade("S1/S2", EXTRAHEAVY);

	FadeStL(0, false);
	Fade("S1/S2/C1", 0, 700, null, false);
	FadeDelete("絵板写", 300, true);

	SetVolume("@OnSE*", 1000, 0, null);

	SoundPlay("@mbgm36",0,1000,true);


	SetFwH("cg/fw/fwキャノン_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050250b03">
「科布登中佐。
　我之前就想忠告你了。」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050260b03">
「堂堂正正地行事是骑士的美德，而不是夜贼
的美德。
　……想要进行犯罪的行径，却竟然不知道做
好隐蔽工作。你的神经究竟是怎么长的？」


{	FwH("cg/fw/fwコブデン_唖然.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050270b04">
「克莱夫·卡农……」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050280b03">
「不过，多亏了阁下的骑士道精神，我才能来
得及在事前阻止你们，所以也没理由抱怨。
　顺便，请你痛痛快快地投降吧。」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050290b03">
「你的愿望大致是可以为你实现的。
　你可以回国。可以和你的夫人团聚。也可以
得到平静的生活。」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050300b03">
「只是，可能你以后都不能再开口说话，不能
随意移动身体，也不能再花钱了。」


{	FwH("cg/fw/fwコブデン_唖然.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050310b04">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　他确信自己是正确的。
　因此——当现实被摆在眼前时，他并未花太长的
时间就接受了。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc01_006.nss"