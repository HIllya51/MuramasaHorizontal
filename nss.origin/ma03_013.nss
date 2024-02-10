//<continuation number="1010">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_013.nss_MAIN
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
	#bg001_空a_03=true;
	#bg035_鎌倉サーキット俯瞰a_03=true;
	#ev114_輪姦される操_a=true;
	#ev114_輪姦される操_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_014.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	#ma03_013=true;
	ReConquest();
	if($PLACE_reco){
		RecoOut();
	}
}

scene ma03_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//シーン内
//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================
..//ジャンプ指定
//前ファイル　"ma03_012.nss"

//◆夜
//◆サーキット場
//◆黒
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 1500, "#000000");

	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);

	CreateColorSP("絵暗転２", 50, "#000000");

	Delete("上背景");

	FadeDelete("絵暗転", 2000, true);


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);

	//リコ背景抹消
	RecoIn();
}
//========================================================

	WaitKey(1000);

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_03.jpg");
	FadeBG(2000,true);

	WaitKey(1000);

	FadeDelete("@OnBG*", 2000, true);

	SetNwC("cg/fw/nw社長Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130010e101">
「哈、呼……
　小、小操，这边也拜托你照顾哦。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130020b42">
「……是……」

{	NwC("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130030e101">
「嗯哦！
　哈啊……受不了了！」

{	NwC("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130040e102">
「小操，这边也要。
　给我再含深一点。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130050b42">
「是……嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆操輪姦

	CreateTextureSP("絵Ｅ100", 10, Center, Middle, "cg/ev/ev114_輪姦される操_a.jpg");
	FadeDelete("絵暗転*", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

	SetNwR("cg/fw/nw社長Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130060e102">
「哦哦，在吸了在吸了。
　很舒服啊小操。」

{	NwR("cg/fw/nw社長Ｃ.png");}
//【ｅｔｃ／社長Ｃ】
<voice name="ｅｔｃ／社長Ｃ" class="その他男声" src="voice/ma03/0130070e103">
「哈哈哈，发出噗滋噗滋的声音
吸着肮脏的肉棒……
　小操，你就那么喜欢吗？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130080b42">
「啊……哈……
　……是……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130090e102">
「呵呵呵……喜欢什么呢？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130100b42">
「……嗯唔……
　啊嗯……嗯……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130110e102">
「这可不行啊小操，得好好回答问题才行。
　否则，就会被这样哦？」

{	FwR("cg/fw/fw操_沈痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130120b42">
「唔!?　咳咳、咳……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130130e102">
「看吧。」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130140b42">
「嗯、呜……不要……
　请、请别这样。我会好好做的……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130150e102">
「先回答问题。
　小操喜欢的是什么呢～？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130160b42">
「……啊……好……
　把……把这个……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130170e102">
「嗯～？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130180b42">
「把叔叔们的……
　……粗大……壮硕的……男性器…
……这样吸着、舔着、含在嘴里……」

//【操】
<voice name="操" class="操" src="voice/ma03/0130190b42">
「……我……最喜欢了……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130200e102">
「哈哈哈哈哈！
　哎呀呀，你这孩子真下流！」

{	NwR("cg/fw/nw社長Ｃ.png");}
//【ｅｔｃ／社長Ｃ】
<voice name="ｅｔｃ／社長Ｃ" class="その他男声" src="voice/ma03/0130210e103">
「真难办啊，这么淫乱让人很担心你的将来啊。
  我得注意让自己女儿不要变成这样才行。」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130220e102">
「哎呀哎呀真是的。
  当父亲可真不容易啊，对吧？」

{	FwR("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130230b24">
「哈哈哈……」

{	NwR("cg/fw/nw社長Ｄ.png");}
//【ｅｔｃ／社長Ｄ】
<voice name="ｅｔｃ／社長Ｄ" class="その他男声" src="voice/ma03/0130240e104">
「不，这不是挺可爱的嘛。我休息一下还要再
来一次。
  啊啊，皇路君。给我倒杯水。」

{	FwR("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130250b24">
「是、是。请用。」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130260e102">
「瞧啊，小操。
  这是你最喜欢的叔叔的东西哦？　在你脸上蹭
一蹭吧。」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130270b42">
「啊……嗯、嗯。」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130280e102">
「开心吗？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130290b42">
「……嗯、是的……很开心。」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130300e102">
「对吧对吧。
　鼻子再靠近点，闻闻吧。」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130310b42">
「嗯……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130320e102">
「哈哈哈，这幅景象真是美好啊。
  这么漂亮的小姑娘，竟然把脸靠近胖得流油
的男人胯下，撒着娇！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130330b42">
「哈啊……呼……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130340e102">
「味道不错吧？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130350b42">
「……是的……
　非常……棒……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130360e101">
「小操真是好孩子啊。
　那么，给你奖励……吧！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130370b42">
「啊嗯嗯！」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130380e101">
「瞧，啊哈哈。
  被这样对待，很舒服吧？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130390b42">
「啊啊、嗯……哈啊！
  别、别这么、激烈……啊嗯。」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130400e101">
「叔叔的前端正在小操的最深处翻搅着哦。
　哈哈哈……太棒了。」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130410b42">
「呜呜……哈啊……
　太、太激烈了……请您、温柔点……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130420e101">
「呼……呼……怎么样？
  叔叔和小操可是深深地结合在一起了哦……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【操】
<voice name="操" class="操" src="voice/ma03/0130430b42">
「啊啊、啊啊……！
　请、请您……慢、慢点……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130440e101">
「哈……哈……那就说出来吧。
  说你跟叔叔合为一体很开心。」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130450b42">
「呜、啊、哈啊……！
　我、我……嗯。」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130460b42">
「跟叔叔……合为一体……
　很、开心……！」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130470e101">
「哈！　我忍不住了！
　就这样一口气到高潮吧！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130480b42">
「嗯啊啊！」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130490e102">
「小操，别忘了照顾这边哦。
  我也差不多想射了。」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130500b42">
「呜呜……嗯啊……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130510e102">
「哦哦……要射了，要射了。」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130520e101">
「我说小操，你也要摆动腰部！
  给我把叔叔的东西紧紧含住！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130530b42">
「嗯、啊嗯……啊啊啊！」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130540e101">
「很好很好！　屁股扭得真下流！」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130550e102">
「小操，我要射了……
　我要射在你嘴里。」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130560b42">
「嗯……！」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130570e102">
「哦哦……
  要射了要射了。小操，快吸！　全部吸出来。」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130580b42">
「嗯……嗯嗯……」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130590b42">
「呜嗯……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130600e102">
「很好……射了射了。
  小操，把嘴张开给我们看看。不要让精液溢
出来哦。」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130610b42">
「……嗯……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130620e102">
「哦呵，我射了挺多嘛。哈哈哈！
  那你知道该怎么做吧？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130630b42">
「……唔……
　嗯……唔嗯……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130640e102">
「喝下去了喝下去了。
  真让人受不了啊，在这么年轻的小姑娘嘴里
痛痛快快地射出腥臭的精液，而且还让对方全
部喝了下去！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130650b42">
「啊哈……」

{	NwR("cg/fw/nw社長Ａ.png");}
//嶋：修正（だけは）【090930】
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130660e101">
「呵呵，小操……这边也让你好好饱餐一顿哦。
  只有上面的小嘴吃饱你是满足不了的吧？」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130670e101">
「看我的！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130680b42">
「哈啊！」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130690e101">
「这里吗？
　小操的子宫口是这里吗!?」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130700b42">
「嗯、啊……不行……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130710e101">
「哦哦，好爽！
　前所未有的紧致啊！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	CreateColorSP("絵フラ", 2000, "#FFFFFF");
	Wait(200);
	CreateTextureSP("絵Ｅ200", 10, Center, Middle, "cg/ev/ev114_輪姦される操_b.jpg");
	Fade("絵フラ", 300, 0, null, true);

	SetFwR("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【操】
<voice name="操" class="操" src="voice/ma03/0130720b42">
「啊……啊啊————！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	Fade("絵フラ", 0, 1000, null, true);
	Wait(50);
	Fade("絵フラ", 100, 0, null, true);

	Wait(50);

	Fade("絵フラ", 0, 1000, null, true);
	Wait(200);
	FadeDelete("絵フラ", 600, true);


	SetNwR("cg/fw/nw社長Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130730e101">
「哈哈，高潮了啊！
　小操也高潮了啊！」

//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130740e101">
「叔叔的精子射进子宫里你就高潮了啊！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130750b42">
「……啊……哈啊……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130760e101">
「哦哦……还有哦，还有哦。
　全部射到你的最深处……」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130770b42">
「呜呜……」

{	NwR("cg/fw/nw社長Ｃ.png");}
//【ｅｔｃ／社長Ｃ】
<voice name="ｅｔｃ／社長Ｃ" class="その他男声" src="voice/ma03/0130780e103">
「嘿……会长，您还能射出这么浓这么多啊。
  这可真困扰，要是小操怀孕了该怎么办？」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130790e101">
「呼……不用担心。
　不是让她吃了避孕药吗。」

{	NwR("cg/fw/nw社長Ｃ.png");}
//【ｅｔｃ／社長Ｃ】
<voice name="ｅｔｃ／社長Ｃ" class="その他男声" src="voice/ma03/0130800e103">
「并不完全保险哦。
  也有很小的概率会怀上。」

{	NwR("cg/fw/nw社長Ｄ.png");}
//【ｅｔｃ／社長Ｄ】
<voice name="ｅｔｃ／社長Ｄ" class="その他男声" src="voice/ma03/0130810e104">
「什么，那样的话也挺好嘛。
  到那时就让小操成为世界上第一个孕妇参赛
者吧。」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130820e101">
「哈哈哈，那倒不错！
  那就是抱着大大的肚子在赛道上奔驰了吧！」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130830e102">
「充满了话题性呢。
  也就是说很值得我们对田村出资吧。」

{	FwR("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130840b24">
「……哈哈哈。」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130850e102">
「怎么样啊，这位父亲。
  你不觉得那样也很有趣吗？」

{	FwR("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130860b24">
「……没、没错。
  如果各位赞助者都希望如此的话。」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130870e101">
「哈哈哈！是吗是吗。
  小操，你父亲也这样说了哦。怎么样？　你会
为叔叔怀小孩吗？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130880b42">
「……」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130890b42">
「……是的。
　如果您希望……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130900e101">
「很好很好。
  小操很诚实非常好。」

{	NwR("cg/fw/nw社長Ｃ.png");}
//【ｅｔｃ／社長Ｃ】
<voice name="ｅｔｃ／社長Ｃ" class="その他男声" src="voice/ma03/0130910e103">
「不，说真的。就是这样我们才会被情所缚啊。
  对我们来说向田村的竞技用剑胄部门进行资
金援助这件事并没有什么吸引力……」

{	NwR("cg/fw/nw社長Ｄ.png");}
//【ｅｔｃ／社長Ｄ】
<voice name="ｅｔｃ／社長Ｄ" class="その他男声" src="voice/ma03/0130920e104">
「不过都这样张开双腿表示诚意了我们也不好
拒绝。
  不用担心钱的问题，尽情去干吧，皇路君！」

{	FwR("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130930b24">
「……非常感谢。」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130940e101">
「哈哈哈哈哈！」

{	FwR("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130950b24">
（……笑吧）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130960b24">
（随你们笑吧。
  我可没把你们当人）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130970b24">
（这就跟在养牛一样。
  只不过是为了榨取名为金钱的乳汁，而投喂
饲料并打扫排泄物而已）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130980b24">
（照料家畜会弄脏也是理所当然的……
  仅此而已。仅此而已）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130990b24">
（我和操在得到桂冠之前……
  才不会在意这种事）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0131000b24">
（哪能在意啊……）

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0131010b42">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(3000, 2000);
	}
//============================================

..//ジャンプ指定
//次ファイル　"ma03_014.nss"

}


