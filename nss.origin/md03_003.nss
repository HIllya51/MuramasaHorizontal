//<continuation number="1940">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_003.nss_MAIN
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
	#bg057_普陀楽城廊下_03=true;
	#bg045_普陀楽城公方の間_03a=true;
	#ev222_茶々丸Ｈ_a=true;
	#ev222_茶々丸Ｈ_b=true;
	#ev222_茶々丸Ｈ_c=true;
	#ev222_茶々丸Ｈ_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_004.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#md03_003=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene md03_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

..//ジャンプ指定
//前ファイル　"md03_002.nss"


//◆廊下

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg057_普陀楽城廊下_03.jpg");
	FadeBG(0, true);

	CreateSE("歩く", "se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("歩く", 0, 1000, 0, 1000, null,true);

	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030010a07">
「干得好，哥哥。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030020a00">
「什么？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030030a07">
「就是刚才。
　居然想到抓住雷蝶的软肋奉承他，
还真是老奸巨猾呢～」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030040a00">
「哦……那个啊。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030050a00">
「那些是真心话。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030060a07">
「是～吗～」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030070a07">
「…………」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030080a07">
「……哎？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("歩く", 1000, 0, null);


//◆茶々丸の間。bg045

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg045_普陀楽城公方の間_03a.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　在普陀乐城深处的一个角落。
　这里似乎是堀越公方足利茶茶丸的居住区。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆茶々丸私服

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);


	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030090a07">
「总之招呼都打完了。
　今天没别的事了。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030100a07">
「慢慢歇着吧。
　从明天开始就要忙得一塌糊涂了～」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　茶茶丸像个老太婆一样叹着气，
弯腰想坐下来。<k>

　我从背后掐住了她的脖子。

　强迫她坐到附近的桌子上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se人体_衝撃_転倒01", 1000);


//◆茶々丸消去
	DeleteStL(300,false);

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030120a07">
「哎？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030130a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：茶々丸襲われ

	CreateTextureEX("襲われ", 5000, @0, @0, "cg/ev/ev222_茶々丸Ｈ_a.jpg");
	CreateTextureEX("襲われ２", 5000, -512, -110, "cg/ev/resize/ev222_茶々丸Ｈ_al.jpg");
	Request("襲われ２", Smoothing);
	Zoom("襲われ２", 0, 800, 800, null, true);
	Fade("襲われ２", 1000, 1000, null, false);
	Move("襲われ２", 2000, @100, @-300, Dxl2, true);
	Fade("襲われ", 0, 1000, null, true);
	Delete("@OnBG*");


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義
	CreateTextureSP("襲われ", 5000, @0, @0, "cg/ev/ev222_茶々丸Ｈ_a.jpg");
	CreateTextureSP("襲われ２", 5000, -512, -110, "cg/ev/resize/ev222_茶々丸Ｈ_al.jpg");
	Request("襲われ２", Smoothing);
	Zoom("襲われ２", 0, 800, 800, null, true);
	Move("襲われ２", 2000, @100, @-300, Dxl2, true);

	//リコ背景抹消
	RecoIn();
}
//========================================================


	FadeDelete("襲われ２", 1000, true);
	Wait(1000);
//■音楽に関してはまだ未決で　そもそも「友愛」って雰囲気じゃない inc櫻井
	SoundPlay("@mbgm19", 0, 1000, true);

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030140a07">
「呀～～～～!?
　这骤变算什么啊～～～!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030150a07">
「等、停手，停手停手！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030160a00">
「别吵。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我压制住那拼命挣扎的娇小身躯，这样命令道。
　同时另一只手不停地剥掉她的衣服。

　剥衣服的手法应该相当高明，茶茶丸却没有对此
表示赞赏。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030170a07">
「你你你干什么～～～!?」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030180a00">
「……你不明白？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030190a07">
「该说是不明白呢，还是害怕明白呢……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030200a00">
「侵犯你。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030210a07">
「哇～！　果然～！
　我要强烈抗议！这种事
要好好按步骤来啊！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030220a07">
「女孩子是需要心理准备的！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030230a00">
「那就准备吧。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030240a07">
「正在被侵犯哪有可能进行准备！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030250a00">
「…………」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030260a07">
「禁止无视别人的话～～！
　至少要说明一下啊～！　究竟是为什么我
会这么三级跳地突飞猛进到成人等级!?」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030270a00">
「说明？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我重复着这个词。
　手的动作却依旧不停。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030280a00">
「该说明的是你吧，茶茶丸。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030290a07">
「说、说明什么？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030300a00">
「让我穿上这种制服——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　感受着军装的憋闷，我越说越火。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030310a00">
「带我到普陀乐来，结果我还成了副官？
　你真是胡闹。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030320a07">
「这是因为那个……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030330a00">
「我什么时候成为你的手下了？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030340a07">
「那、那只不过是形式上嘛。
　我觉得有了身份哥哥也好办事。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030350a00">
「多管闲事。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我单手握住露出的乳房。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030360a07">
「呀！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030370a00">
「听好了……茶茶丸。
　我再强调一遍。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0030380a00">
「我不会协助你。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030390a07">
「嗯……嗯……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030400a00">
「是你要协助我。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0030410a00">
「为了拯救光。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030420a07">
「嗯……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030430a00">
「如果你做不到——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　我向抓住脖子的手施加力道。
　<RUBY text="···">明确的</RUBY>力量。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030440a00">
「就没必要留着你的命。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030450a07">
「不、不！
　我协助！　拼上性命，全力协助！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030460a07">
「话说那才是我的目的!!」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030470a00">
「我知道。
　只要你不搞错事情的顺序，就行了。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0030480a00">
「我只会为光而行动。
　堀越公方，只有对光有益之时，
我才会帮助你。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030490a07">
「是……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030500a00">
「副官吗……
　真麻烦。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0030510a00">
「不管怎样，都要和刚刚<RUBY text="····">那些家伙</RUBY>照面吗。
　每个人都这样，岂止是有几个怪毛病……
不如说这些将军净是些怪人。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030520a07">
「啊哈哈，还真是呢。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030530a00">
「你位居怪人之首。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030540a07">
「我……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030550a00">
「连想像都觉得累。
　我很理解不想上学的小孩的心情。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030560a07">
「但、但是但是，
　我擅自决定是很抱歉。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030570a07">
「但是我觉得身为副官会比较好办事。
　对我来说，把普陀乐交给哥哥
我也能外出行动……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030580a00">
「哼！」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030590a07">
「因此……那个……
　我就想，如果你能原谅我，
我会很开心的……」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030600a00">
「……算了。
　既定事实也没法改变了。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030610a00">
「既然如此，我就尽量利用副官的身份好了。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030620a07">
「好～！
　我最喜欢这样积极向前看的哥哥了～！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030630a07">
「我一定会补偿你的！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030640a00">
「是吗。
　那就这样老实待着。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030650a07">
「好的～！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030660a07">
「…………」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030670a07">
「……？……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030680a07">
「哎!?
　难不成我的危机状况一点都没有解除!?」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030690a00">
「我让你老实待着。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030700a07">
「哈啊啊～～～！
　这个那个，所以说那个，要做这种事首先
要经过相爱这一浪漫过程才行……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030710a00">
「不需要。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030720a07">
「唔、唔……
　那…………至少……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030730a07">
「哥哥……喜欢我吗？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030740a00">
「不。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030750a07">
「真冷酷!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030760a07">
「只是因为欲望吗～！
　你这么想侵犯可爱的我吗～！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030770a00">
「基本上来说，也不是这样。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030780a07">
「完全否定吗!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030790a07">
「哎～
　那为什么这么做～」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030800a00">
「只是想用身体让你记住。
　记住你的立场。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030810a07">
「立场？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030820a00">
「你是我的道具。
　要谨记这一点。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030830a07">
「……」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

//◆ＣＧ差分

	CreateTextureEX("襲われ02", 5100, @0, @0, "cg/ev/ev222_茶々丸Ｈ_b.jpg");
	Fade("襲われ02", 1000, 1000, null, true);
	Delete("襲われ");

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆照れ
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030840a07">
「……啊……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030850a00">
「……？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030860a07">
「那、那个。
　刚才的话，再说一次。Ｏｎｃｅ ｍｏｒｅ。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030870a00">
「ｍｏｒｅ？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030880a07">
「再说一次。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030890a00">
「……你是我的道具，
　茶茶丸。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030900a07">
「…………」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030910a07">
「哈啊……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030920a00">
「？」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　感觉她变得奇怪了。
　……算了，用不着管这些。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030930a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030940a00">
「干嘛？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030950a07">
「……那个，该怎么做……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030960a00">
「什么？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030970a07">
「做、做这种事的时候……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030980a07">
「做法或规则之类的。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030990a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　我用指尖撩起茶茶丸的一缕头发，轻轻把玩。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031000a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031010a00">
「不再挣扎了吗？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031020a07">
「是哥哥说让我老实待着的。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031030a00">
「那是一种说话策略。
　不照做也没关系。只是想让你安静下来
听我说话。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031040a07">
「……魔鬼……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031050a00">
「不过顺从也挺好的。
　话说……你什么都不懂？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031060a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031070a00">
「你是个雏？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031080a07">
「……唔……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　身下的少女脸上蓦然染上了朱色。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031090a00">
「明明还钻到我床上过。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031100a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031110a00">
「难不成，如果当时我真的出手的话，
你就手足无措了吗？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031120a07">
「……禁止羞恥ｐｌａｙ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031130a00">
「是吗，茶茶丸。
　你明明未经人事，却还做出
那种事吗？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031140a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031150a00">
「意外地可爱啊。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031160a07">
「……唔……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　听到我暗含笑意的话语，茶茶丸阖上眼睛。
　或许是太过害羞，连脖颈都染上了绯色。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031170a00">
「至少有自慰过吧？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031180a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031190a00">
「没有吗？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031200a07">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　我单手贴上茶茶丸的臀部。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031210a07">
「啊！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031220a00">
「回答我。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031230a07">
「没、没有……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031240a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031250a00">
「真的吗？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031260a07">
「唔……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　她泪眼婆娑地点头。
　看来不是撒谎。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031270a00">
「…………
　这里。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　用指尖轻戳秘所。
　娇小的背猛地弓了起来。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031280a07">
「呀啊……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031290a00">
「我准备插进这里。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031300a07">
「……这、这我还是明白的……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031310a00">
「不湿润就不好进去。
　……虽然也不是不能做。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　看到柜橱里摆着酒，我说道。

　常规方法应该是用手唤起她的官能吧。
　
　真麻烦。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031320a00">
「自己弄湿。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　我对连自慰都一无所知的小姑娘这样下令。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031330a07">
「……呃……」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031340a07">
「要怎么做……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031350a00">
「怎么做都行。
　不管你用什么方法。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031360a00">
「不湿的话<RUBY text="······">操你就不舒服</RUBY>。
　只要让我操着舒服就行了。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031370a07">
「……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031380a07">
「嗯……嗯。
　知道了……我试试……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031390a00">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　我是故意给她出难题的，
　但是茶茶丸出乎意料地没有拒绝。

　她会怎么做呢。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031400a07">
「……哈啊……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031410a07">
「……嗯……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031420a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031430a00">
「怎么了，我可是下命令了。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031440a00">
「你在做什么？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031450a07">
「……在变得……能让哥哥……
觉得舒服。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031460a07">
「如果哥哥希望我湿润……
我会的……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031470a07">
「因为……我是……
　……哥哥的……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031480a07">
「呼……唔……！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031490a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031500a00">
「……？……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　茶茶丸的呼吸开始愈发粗野，皮肤
开始渗汗。
　看样子体温升高了。

　伸手去摸，果然很烫。
　
　——这是？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031510a07">
「…………」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031520a07">
「啊……嗯……
　……这……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031530a07">
「这样……可以吗？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031540a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　我试探着摸了摸那里。
　……很热，水润十足。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031550a00">
「这是什么本事……？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031560a07">
「说是本事太过分了……
　我只是顺应哥哥的意愿……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031570a00">
「虽说确实如此。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　又不是水龙头，拧了就会出水。
　不是说要湿就能湿的吧。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031580a07">
「……喂……
　哥哥……要上我了吧……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031590a00">
「……」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031600a07">
「哥哥……尽情地，
　对我……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　难过的视线扎在我身上。

　不知为何，有种冲动<RUBY text="··">倏然</RUBY>窜过脊背。

　——对了。
　我是为了侵犯这家伙而这么做的。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031610a00">
「分开双腿。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031620a07">
「……嗯……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031630a00">
「这样就行了。
　保持这个姿势。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　我想支配足利茶茶丸。
　这冲动令男性器官屹立而起。

　省去对处女的照顾。
　此刻毋须顾虑。

　将露出的器官紧贴过去。
　插入。

　贯穿。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＧ差分
	CreateTextureEX("襲われ03", 5200, @0, @0, "cg/ev/ev222_茶々丸Ｈ_c.jpg");
	Fade("襲われ03", 1000, 1000, null, true);
	Delete("襲われ02");

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031640a07">
「……啊——嘶嘶嘶……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　少女的身体弯成了弓型。
　凄惨的恸哭好似通过颤动的小嘴奔涌而出。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031650a00">
「进去了哦……
　知道吗？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031660a07">
「……嘶……嗯……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031670a00">
「好紧。
　这里是最深处吗？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031680a00">
「你知道吗……茶茶丸。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031690a07">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　不知是由于疼痛还是冲击太强，她全无说话的余裕。
　只是用湿润的眼眸望着我。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031700a00">
「我要夺走你了……」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031710a00">
「我要将你攫为己有。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031720a07">
「————嘶嘶!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	CreateColorEX("白フラ", 15000, "WHITE");
	Fade("白フラ", 300, 1000, null, true);
	CreateTextureEX("襲われ04", 5000, @0, @0, "cg/ev/ev222_茶々丸Ｈ_d.jpg");
	Fade("襲われ04", 0, 1000, null, true);
	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	Fade("白フラ", 1500, 0, null, true);

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031730a07">
「……啊……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031740a07">
「哈……嘶……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031750a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031760a00">
（高潮了？）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　与预料正相反。
　初次接受男人的处女，竟然这么容易就……

　但是，看这个反应——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031770a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031780a00">
「你这女人不可原谅。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031790a07">
「哎……啊……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031800a00">
「居然在我——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　抚摸着她的下腹部。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031810a00">
「在你体内释放之前，
　先到达顶峰。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031820a07">
「……到达顶峰……？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031830a07">
「我……我…………刚才……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　神志不清、意识朦胧地说着胡话。
　少女的心似乎还未飘回现实。

　无神的瞳孔中映着我的面容。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031840a07">
「哥哥……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031850a00">
「……唔。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　嘴角勾起。

　比想象中还要——
　这姑娘比自己期待的还要——

　有<RUBY text="··">调教</RUBY>的价值。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031860a00">
「我会教给你的。
　方方面面都教到。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031870a00">
「首先……从惩罚开始。」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031880a07">
「……？……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　随便玩玩的念头早就没了。
　要慢慢地——用心地做。

　长夜漫漫。
　只要花时间，没有解决不了的问题。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆※余力あったら書き足そう。

	CreateColorEX("黒", 15000, "BLACK");
	Fade("黒", 1500, 1000, null, true);


	SetNwC("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031890a07">
「哈唔……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031900a07">
「哇，不要咬啊，那里……！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031910a07">
「等——别，手指往哪里——」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031920a07">
「……嘶……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031930a07">
「我会听话，会乖乖听话的——」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031940a07">
「…………啊～～！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(1500, 1500);
	}
//============================================

}

..//ジャンプ指定
//次ファイル　"md03_004.nss"