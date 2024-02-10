//<continuation number="1110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_030.nss_MAIN
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
	#bg031_八幡宮境内_01=true;
	#ev216_光降臨_a=true;
	#ev216_光降臨_b=true;
	#ev216_光降臨_c=true;
	#ev216_光降臨_d=true;
	#ev216_光降臨_e=true;
	#ev932_銀星号正拳突き_a=true;
	#ev932_銀星号正拳突き_b=true;
	#ev959_髭切斬撃汎用=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_031.nss";

}

scene md01_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_029vs.nss"


//◆裏参道へ
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	CreateTextureEXover("絵演背景上", 4100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵演背景*", 0, 750, null, true);
	Shake("絵演背景上", 3600000, 8, 0, 0, 0, 1000, null, false);
	CreateTextureSPmul("絵背景", 4000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateColorSP("絵色赤", 1000, "#990000");
	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateSE("SEL01","se戦闘_動作_空突進05");
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SEL01",2000,800,0,1000,null,true);
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm12",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　须切跃进里参道。
　虽只慢了一点，但的确是迟了，我继续走。

　退路已被封——在最初的时候。
　压制敌人的飞行战术，即便被逼得走投无路时，
唯一的出入口也应在我身后。

　那是——在什么时候！

　……在我们互相争夺时机的时候吗!?

　最后的那次看上去确实是企图反击的，
但实际上，是为了确保退路的行动吗!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300010a00">
（战局……！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　正是如此。
　埋首战斗，我却忽略了这个。

　必须迅速将敌人歼灭的，只有我。
　敌方只需从这地下空间逃离，就能达到
胜利的条件！

　竟把这点给忘了。

　不……倒不如说，没把这忘记的大将领着实可怕。
　被毫不认识的人袭击甚至危及生命的情况下，
还能保持如此冷静。

　这就是年轻浅薄跟经验老道的差距吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆追走
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0300020a01">
《……到地面上去了！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　村正的剑胄传音，如咬牙切齿般。

　没能赶上。
　足利护氏已逃到外面。

　在地面上，一众精锐武士会迎接他们的主君。
　要突破这守卫将其砍杀……是不可能的。

　如此，该如何是好。

　我倒还好。
　但亲王呢!?

　——养父呢!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300030a00">
「呼……喔!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆地上
	SetVolume("SEL*", 1000, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色白", 5000, "#FFFFFF");
	FadeDelete("絵演背景上", 300, false);
	Fade("絵色白", 600, 1000, Dxl2, false);
	Zoom("絵背景", 600, 3000, 3000, Axl2, true);

	WaitKey(2000);

//◆八幡宮境内
//◆通常表示後にレッドマスク
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	Delete("上背景");
	SetVolume("SE*", 1000, 0, null);
	FadeDelete("絵暗転", 1000, true);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色血", 5000, "#CC0000");
	CreateTextureSPmul("絵背景", 100, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	CreateColorSP("絵色血床", 50, "#CC0000");
	FadeFR2("絵背景",0,1000,300,0,0,20,DxlAuto, false);
	FadeDelete("絵色血", 1000, true);

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300040a05">
「怎。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300050a05">
「怎么了……这是……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300060a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　尸横遍野。

　士兵。
　武者。
　侍臣。
　神官。

　在地面上的幕府众人。八幡宫的所有人。
　无差别地，绝对平等地，享受着所谓
死的同一命运。

　生命已不复存在。
　安静而平稳地，呈现出一片平静的世界。

　这里是冰原。
　极北的荒野。

　始末共存。
　不动不变的静止世界。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0300070a01">
《……主君。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　剑胄发出干涸的声音，促使我注意。

　约莫在视野正中央。
　——搭载贵族的带棚牛车，坐镇于此。

　不合时宜到近乎滑稽的东西。
　村正想要传达这景象所昭示的一切，我已深切地顿悟。

　看到这副光景的刹那间便已明白。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300080a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　竹帘轻晃。

　首先是那洁白的指尖——
　接着是娇艳的姿容。

　从那深处出现。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300090a05">
「这是……长庚局？」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300100a05">
「在这里干什么？发生什么事了？
　……你家主人怎么了!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：十二単？の光
//◆演出
	CreateTextureEX("絵ＥＶ上", 4020, -650, -540, "cg/ev/resize/ev216_光降臨_al.jpg");
	Move("絵ＥＶ上", 3000, -1010, -330, DxlAuto, false);
	Fade("絵ＥＶ上", 1000, 1000, null, true);

	WaitKey(1000);

	SetNwL("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md01/0300110a14">
「若宫堂中云袖舞。
　幽婉叠叠锦团簇。」

//【光】
<voice name="光" class="光" src="voice/md01/0300120a14">
「直念故人何时归。
　……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆演出
	CreateTextureSP("絵ＥＶ覆", 4010, -480, -340, "cg/ev/resize/ev216_光降臨_al.jpg");
	Move("絵ＥＶ覆", 2000, -555, @0, DxlAuto, false);
	FadeDelete("絵ＥＶ上", 1000, true);

	WaitKey(1000);

	SetNwR("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md01/0300130a14">
「战斗已迎来终结，
那些不解风情的指责非难在所难免。
　可在我看来都毫无意义。」

//【光】
<voice name="光" class="光" src="voice/md01/0300140a14">
「难得遇上好玩的对手与我共舞。
　不过……原本技艺就像一枝花，注定在旁人
不曾见到的虚无中散落吧。」

//【光】
<voice name="光" class="光" src="voice/md01/0300150a14">
「唔。不去惋惜花朵，让它再次绽放就好。
　这次由你当对手，
上演一曲比之前更为华丽的舞蹈吧。」

//【光】
<voice name="光" class="光" src="voice/md01/0300160a14">
「不要拒绝哦……景明！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆で、ここでＥＶ全体像か。
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev216_光降臨_a.jpg");
	Move("絵ＥＶ覆", 3000, -512, -288, Dxl2, false);
	Zoom("絵ＥＶ覆", 3000, 500, 500, DxlAuto, true);
	FadeDelete("絵ＥＶ覆", 5000, false);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　她完全忽视了大将领。
　那容颜笔直地朝向我。

　光。

　……已经两年不见。
　与这肉身姿态如此靠近的相见。

　光的容姿与记忆中的她几乎没有改变，
思及这逝去的时光与年龄，让人意外。
　甚至让我感到一种失调的违和感。

　为何没有一丝改变？
　为何还是昔日的她？

　光的命运，明明应该能改变她容貌到惨烈的程度！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300170a00">
「光——」

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300180a05">
「不回答余吗！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　我的低语，被另一方向的怒吼所掩盖。
　嗯？光一脸疑惑地将视线投向那边。

　是被置之不理的大将领。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md01/0300190a14">
「什么事。
　若不是什么要紧事，请不要介入我们
家族对话。」

{	FwR("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300200a05">
「……汝、
　汝未曾见到现在的状况吗!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　对我的发言被打断而感到不愉快的光，
以及被困惑缠绕而激动万分的六波罗元帅。
　两者的世界隔绝到近乎悲哀。

　悬崖峭壁的上方与下方。

　只是——在上方俯视的光能看清护氏及其周遭的一切，
而下方的护氏，只能望见一片广漠的虚空。

　大将领还未理解<RUBY text="··········">对目前来说必要的东西</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300210a05">
「是长庚的话！
　在如此情况中，不可能什么都没看到。」

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300220a05">
「回答余的问题！
　这到底是怎样的状况!?」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300230a14">
「所谓长庚，不过是隐世之名。
　意为黄昏之星晨。虽是别人命名，
但还算看的上眼。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　光首先看向我，满是恳切地解说。 
　然后转向大将领。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/md01/0300240a14">
「我干掉了。」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300250a05">
「什么!?」

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300260a14">
「唔。
　看样子是谈不下去了。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　不知何故，光转过身来，低声说道。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md01/0300270a14">
「你不是问砍倒这些人的是谁吗？
　我是说，那就是我。」

{	FwR("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300280a05">
「……汝还正常吗？」

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300290a14">
「突然这么说，很失礼吧。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300300a00">
「……会这么说是当然的吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　因为他并不清楚。
　因为他还没察觉到。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/md01/0300310a14">
「被你这么说我会受伤的……」

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300320a05">
「汝这是在愚弄余吗!?」

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300330a14">
「真烦。麻烦的男人。」

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0300340a15">
《要评理的话，胄倒觉得对方没什么不对。》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300350a14">
「为什么？」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300360a05">
「是汝所为？
　说梦话也该差不多了吧。你这家伙
到底哪里有那样的力量！」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300370a14">
「那是自然——」

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300380a14">
「…………
　从刚才起，就我一人在说个不停。」

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0300390a15">
《因为你把对方逐一<RUBY text="··">认真</RUBY>对待。
　细节方面就适当搪塞过去吧。》

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300400a14">
「唔。无礼的事我不喜欢。
　不管是自己还是别人。」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300410a05">
「汝，长庚——」

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300420a14">
「……没办法了。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＥＶ差分：二世村正（女王蟻）出現
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureEX("絵ＥＶｂ", 4100, Center, Middle, "cg/ev/ev216_光降臨_b.jpg");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵ＥＶｂ", 1000, 1000, null, true);

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/md01/0300430a14">
「就从<RUBY text="··">那边</RUBY>开始解决吧。
　六卫大将领，足利护氏卿。」

{	FwR("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300440a05">
「什么……？」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300450a14">
「我来见你也别无他意。
　在下光，要审问霸主！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：蟻、パーツ分解。装甲アクション１
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵ＥＶｃ", 4000, Center, Middle, "cg/ev/ev216_光降臨_c.jpg");
	CreateSE("SE01","se特殊_鎧_装着03");
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　慢慢张开的手臂。
　微笑的嘴角。

　从口中编织出的誓句。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【光】
<voice name="光" class="光" src="voice/md01/0300460a14">
「遇鬼斩鬼。」

//【光】
<voice name="光" class="光" src="voice/md01/0300470a14">
「逢佛弑佛。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：装甲アクション２
	CreateTextureSP("絵ＥＶｃｃ", 3990, Center, Middle, "cg/ev/ev216_光降臨_d.jpg");
	FadeDelete("絵ＥＶｃ", 1000, true);

	SetFwR("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300480a05">
「……白银色的剑胄……？」

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300490a05">
「汝——难道是……」

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300500a14">
「剑胄之理。」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300510a14">
「正在于此!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ガキーン
//◆銀星号
	CreateSE("SE01","se特殊_鎧_装着02");
	MusicStart("SE01",0,1000,0,700,null,false);
	PrintGO("上背景", 5000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");

	CreateTextureSP("絵ＥＶｄ", 3980, Center, Middle, "cg/ev/ev216_光降臨_e.jpg");
	FadeDelete("絵ＥＶｃ", 600, true);

	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常b.png");
	FadeStR(0,true);
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);
	WaitKey(2000);
	FadeDelete("絵フラ", 2000, true);

//◆ＢＧＭ：銀星号
	SoundPlay("@mbgm01",0,1000,true);

	SetFwR("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300520a05">
「——银星号!?」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300530a05">
「汝即是那杀戮狂魔……？
那么。」

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300540a05">
「……那么，
　统率汝之人是……」

{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300550a14">
「大将领！
　那些微不足道的事之后再说吧！」

//【光】
<voice name="光" class="光" src="voice/md01/0300560a14">
「现在，光要审问你的根本。」

{	FwR("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300570a05">
「什么……？」

{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300580a14">
「足利护氏。
　以武力威震天下之人。
和光追寻同一道路之人。」

//【光】
<voice name="光" class="光" src="voice/md01/0300590a14">
「面对走在称霸之道的前辈，我表示敬意。
　瞻仰其身影而祈求指教。」

//【光】
<voice name="光" class="光" src="voice/md01/0300600a14">
「究竟何为称霸！」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300610a05">
「————」

{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300620a14">
「没有道理回答不上吧。」

{	FwR("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300630a05">
「……哈。
　余每日要两次被庶民询问称霸之道啊！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶｄ", 1000, true);

//◆銀星号と鬚切、対峙
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @-30, @0,"cg/st/3d髭切_立ち_抜刀.png");
	Move("@StL*", 300, @30, @0, null, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw護氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300640a05">
「想知道何为霸么？银色的怪物！」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300650a14">
「唔！」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300660a05">
「那就告之与汝!!
　……就是掠夺!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆斬撃。なんか必殺技っぽく
//◆ずがどーん
	CreateColorSP("絵色黒", 6000, "#000000");

	CreateSE("SE010","se特殊_電撃_放電01");
	CreateTextureSPadd("絵演髭秘太刀覆", 3110, Center, InBottom, "cg/ev/ev959_髭切斬撃汎用.jpg");
	CreateTextureSP("絵演髭秘太刀", 3100, Center, InBottom, "cg/ev/ev959_髭切斬撃汎用.jpg");
	SetVertex("絵演髭秘太刀*", center, bottom);
	Zoom("絵演髭秘太刀*", 0, 2000, 3000, null, true);
	SetBlur("絵演髭秘太刀*", true, 2, 500, 60, false);

	MusicStart("SE010",0,1000,0,600,null,false);
	Zoom("絵演髭秘太刀*", 400, 1000, 1000, Dxl2, false);
	Move("絵演髭秘太刀*", 400, @0, -160, Dxl2, false);
	Fade("絵色黒", 300, 0, null, true);
	FadeDelete("絵演髭秘太刀覆", 200, true);

	CreateSE("SE01b","se戦闘_村正_重力増幅斬撃");
	CreateSE("SE01c","se戦闘_破壊_爆発08");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	DeleteStA(0,true);

	CreateColorSPadd("絵色白", 4990, "#FFFFFF");
	Fade("絵色黒", 300, 0, Axl2, true);

	Delete("絵色黒");
	Delete("絵演髭*");

	CreateTextureEXsub("絵演震動", 100, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	SetVertex("絵演震動", center, bottom);
	Fade("絵演震動", 0, 700, null, true);
	Zoom("絵演震動", 0, 1000, 2000, Axl2, true);
	SetBlur("絵演震動", true, 3, 300, 100, false);

	Shake("絵演震動", 1500, 0, 10, 0, 0, 500, null, false);
	FadeDelete("絵色白", 1000, false);
	Zoom("絵演震動", 1500, 1000, 1000, Axl2, false);
	FadeDelete("絵演震動", 2000, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300670a00">
「光!?」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300680a05">
「余欲得到天下。
　因此，掠夺。」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300690a05">
「就像这般！
　汝之贼首于余无用，只要是阻碍余之道路，
唯有将其铲除。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0300700a01">
《…………》

{	FwC("cg/fw/fw護氏_大笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300710a05">
「须切的秘太刀能将猎物消灭得不留残渣。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300720a05">
「如幽魂般潜于暗夜噬血之事，本想
放汝一马……
　但在余面前如此厚颜无耻、骄傲自负
也得有个程度！　汝这混账东西!!」

{	NwC("cg/fw/nw光.png");}
//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300730a14">
　　　　　　「原来如此。是这样啊。」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300740a05">
「……哧!?」

{	NwC("cg/fw/nw光.png");}
//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300750a14">
　「所谓霸，即抢夺。
　　完全没有异议。再正确不过了。」

//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300760a14">
　　　　　「在下光也完全赞同！」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300770a05">
「————」

{	NwC("cg/fw/nw光.png");}
//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300780a14">
　「你一心一意想得到大和。
　　也赌上自己的存在去追求吗！」


//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300790a14">
　　「就这么想得到这个国家吗？」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300800a05">
「……哼。
　就算不是大和也没关系。」

{	NwC("cg/fw/nw光.png");}
//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300810a14">
　　　　　　　「……？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300820a05">
「只是凑巧生于大和，因此就制霸大和而已。
　在别的国家也无所谓。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300830a05">
「只要是能建立余霸业的地方——」

{	NwC("cg/fw/nw光.png");}
//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300840a14">
　　　　　　　「且慢。」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300850a05">
「……躲到哪里去了……？
　快现身吧，凶贼!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆顔グラなし
//◆大フォント
	SetNwC("cg/fw/nw光.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
　
<voice name="光" class="光" src="voice/md01/0300860a14">
<FONT size="24">「那么说，就是无爱的吧!!」</FONT>

</PRE>
	SetTextEXC();
	Move("$SYSTEM_present_text", 0, 566, 134, null, true);
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――――

//◆銀星号飛来
	CreateSE("SE00","se特殊_陰義_発動01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/resize/ev901_銀星号天座失墜小彗星_am.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/resize/ev901_銀星号天座失墜小彗星_am.jpg");
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	Request("絵演*", Smoothing);
	Zoom("絵演上", 0, 1200, 1200, null, false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆どがーん。爆裂
//◆なんかもーわけわかんねー感じ
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01","se戦闘_破壊_爆発09");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("絵演*");

	CreatePlainEX("絵演震", 5000);
	Fade("絵演震", 0, 500, null, true);
	SetBlur("絵演震", true, 3, 500, 100, false);

	Shake("絵演震", 300, 0, 300, 0, 0, 1000, Dxl2, true);
	Zoom("絵演震", 300, 1500, 1500, Dxl2, false);
	Shake("絵演震", 300, 0, 300, 0, 0, 1000, Dxl2, true);

	CreateSE("SE01b","se戦闘_破壊_爆発07");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, false);
	Shake("絵演震", 300, 1200, 0, 0, 0, 1000, Dxl2, true);
	Delete("絵演震");

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300870a05">
「哦!?」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300880a00">
「什……呃!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずーん。
//◆銀星号お怒り
	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStR(0,true);
	Fade("絵色白", 1400, 0, null, false);
	DrawDelete("絵色白", 6000, 100, "effect_01_00_0", true);

	SetFwC("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/md01/0300890a14">
「你让我……太失望了啊！
　这么认真听你说的我就像是个笨蛋！」

//【光】
<voice name="光" class="光" src="voice/md01/0300900a14">
「你这虚假的霸业，并非真正的霸业！」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300910a05">
「呜……竟然无损!?
　不可能！」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300920a05">
「汝乃何人——」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300930a14">
「好好听我说话!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どーん
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵演衝撃", 4000, Center, Middle, "cg/ef/ef044_火花c.png");
	Shake("絵演衝撃", 300, 4, 0, 0, 0, 1000, null, false);
	Rotate("絵演衝撃", 200, @0, @0, @360, null,false);
	Zoom("絵演衝撃", 300, 2000, 2000, Dxl2, true);

	CreateSE("SE02","se戦闘_動作_鉄壁吹っ飛ばす");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 500, Dxl2, false);
	Zoom("絵演衝撃", 300, 2000, 4000, null, true);

	Fade("絵色白", 300, 1000, Axl2, true);
	Delete("絵演衝撃");

	StR(1000, 30, -280,"cg/st/3d銀星号_立ち_戦闘b.png");
	FadeStR(0,true);
	WaitKey(200);

	StL(1000, @0, @0,"cg/st/3d髭切_立ち_抜刀.png");
	FadeStL(0,true);
	Shake("@StL*", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-30, @20, DxlAuto, false);

	FadeDelete("絵色白", 2000, false);

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300940a05">
「唔哇!?」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300950a14">
「称霸就是掠夺。
　这个倒还正确。」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300960a14">
「但，为何要掠夺？
　——是因为欲望、渴求！」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300970a14">
「为何要渴求？
　——因为爱，所以渴求！」

//【光】
<voice name="光" class="光" src="voice/md01/0300980a14">
「爱、欲望、掠夺！
　这才是称霸之道!!」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300990a14">
「足利护氏！
　你从最初一步就已经错了!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ぼーん
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE01b","se戦闘_破壊_爆発02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演", 4100, Center, Middle, "cg/ev/ev932_銀星号正拳突き_b.jpg");
	SetBlur("絵演", true, 3, 500, 100, false);
	Shake("絵演", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Fade("絵色白", 300, 0, null, true);

	Fade("絵色白", 300, 1000, null, false);
	Zoom("絵演", 300, 1500, 1500, null, true);

	Delete("絵演");

	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	Request("@StR*", Smoothing);
	Rotate("@StR*", 0, @0, @180, @0, null,true);
	FadeStR(0,true);
	Shake("@StL*", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-30, @20, DxlAuto, false);

	FadeDelete("絵色白", 1000, false);

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0301000a05">
「啊呼……!?」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0301010a14">
「若初衷没有爱，
那就没有欲望，
更谈不上称霸！
　不过是虚荣！」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0301020a14">
「你啊！
　只是想陶醉于
『争夺天下，威名远播』而已吧!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆でかいの一発
//◆吹き飛ぶ鬚切
//◆どっかに落ちた？　どーん。
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色黒", 5000, "#000000");
	CreateTextureSP("絵演", 4000, -30, -990, "cg/ef/resize/ef042_汎用打撃tl.jpg");
	Zoom("絵演", 0, 1000, 5000, null, true);
	SetBlur("絵演", true, 3, 500, 100, false);
	Fade("絵演", 0, 1000, null, true);

	CreateTextureEX("絵演打撃当", 4010, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Fade("絵演打撃当", 0, 500, null, true);
	FadeDelete("絵演打撃当", 400, false);
	Shake("絵演打撃当", 200, 10, 40, 0, 0, 1000, Dxl3, false);
	Zoom("絵演打撃当", 200, 3000, 3000, AxlDxl, false);
	FadeFR2("絵演",0,1000,300,0,0,120,Dxl2, true);

	CreateSE("SE01b","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色黒", 600, 1000, null, false);
	Move("絵演", 300, 0, 4032, AxlDxl, true);

	Wait(300);

	CreateTextureEX("絵背景", 18000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Fade("絵背景", 1000, 1000, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　须切——
　大将领足利护氏，就那样<RUBY text="····">飞往某处</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);

	FadeDelete("上背景", 500, true);
	Wait(500);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0301030a00">
「………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0301040a01">
《………………》

{	FadeStL(300,false);
	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0301050a14">
「呼。
　无端浪费功夫。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　银星号厌恶般吐出几个字。
　交叉双臂，一副不快的模样。

　一次毫不满意的问答——只能窥见到此等余韵。
　几乎没表露出<RUBY text="··">战斗</RUBY>后的痕迹。

　实力状况先前就已知晓。须切——古代名物，
老练匠人之手炼成。打倒刚强武者而气息丝毫不混乱。

　银星号。

　魔物。
　如果我不能打倒这银星号。

　……凝固了般的脑袋，判断着最起码的状况。 

　可是，能赢吗？
　与这个实力差距过大的怪物战斗，能赢吗？

　凭我的力量——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0301060a01">
《……主君。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0301070a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　忽然靠近的熟悉温度。
　不可思议的可靠感。

　我并不孤独。
　……对。没错。

　可以。
　我——我们可以战斗！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//あきゅん「演出：ここでの村正は手前に演出するのでBu的な画像を後で準備」
	CreateSE("SE01","se人体_足音_鎧歩く03");
	StR(1000, 100, -440,"cg/st/resize/3d村正標準_立ち_通常m.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0301080a00">
「光！」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0301090a14">
「因那些无聊的事，让你久等了。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銀星号と村正
	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【光】
<voice name="光" class="光" src="voice/md01/0301100a14">
「看来，今天彼此剑胄的状况不错嘛。
　这比什么都好。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0301110a14">
「接下来，享受吧景明！
　相互争夺、相互索求、尝尽对方的一切吧！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　方才的苦闷似乎早已忘却，她愉悦地说道。
　那个曾说希望把战争化解为和平的她——
早已远去。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――



}

..//ジャンプ指定
//次ファイル　"md01_031.nss"