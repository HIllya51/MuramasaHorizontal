continuation number="670">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004.nss_MAIN
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
	#bg048_景明故郷オフィス_01=true;
	#bg047_景明故郷町a_01=true;
	#bg050_湊斗家門前_02=true;
	#bg002_空a_02=true;
	#ev128_病床の光_c=true;
	#ev133_兜割に挑む光_a=true;
	#ev136_戦闘解説ＶＳ首領編３_e=true;
	#ev128_病床の光_f=true;
	#ev138_首領の最期_c=true;
	#bg054_湊斗家祭殿b_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mb04_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_003.nss"

//◆オフィス。第五話の
//◆ウェイト
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演背景", 1000, Center, Middle, "cg/bg/bg048_景明故郷オフィス_01.jpg");
	SetShade("絵演背景", EXTRAHEAVY);
	OnBG(100,"bg048_景明故郷オフィス_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawTransition("絵暗転", 600, 1000, 0, 100, Axl2, "cg/data/slide_05_00_0.png", true);
	Delete("絵暗転");
	FadeDelete("絵色白", 2000, false);
	FadeDelete("絵演背景", 4000, true);
	SoundPlay("@mbgm29",0,1,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………………………………………………

　这里是……

　？————————？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw部長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040010e238">
「……嗯？
　凑斗君，怎么了？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040020a00">
「……部长!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　两年前，你——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw社員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/mb04/0040030e226">
「啊，前辈你好过分啊。
　就算你刚起床有多么不在状况，那么露骨地
对他表现出惊讶，他也太可怜了。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040040a00">
「——」


{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040050e238">
「……过分的是你。
　他只是还没睡醒吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　没睡醒？
　……我刚才还在做梦吗？

　不——不对。
　要说梦的话，这里才应该是梦。

　这里是梦，
　现实的世界在另一边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040060a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　另一边？
　另一边——<k>另一边————

　另一边？
　………………………………是什么？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw部長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040070e238">
「……
　看起来你似乎很疲惫啊。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040080a00">
「啊——不。
　非常抱歉。」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040090a00">
「真的只是睡糊涂了而已……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 5000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　意识终于接上了现实。
　这里是公司——我工作着的一个小公司。

　窗外还很明亮。现在正是正儿八经的工作时间。
　但我似乎是睡着了。而且还睡得很沉。

　总觉得最后看到这幅场景——也就是深深陷入
睡眠这件事——仿佛已经是很多年以前的事了。
突然有了这种略微不合逻辑的感觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw部長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040100e238">
「不过，这也是没办法的啊。
你家里发生了那么多事，够呛吧？
　今天也没什么工作，你可以先回去了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040110a00">
「不，但是……」


{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040120e238">
「悠闲的时候勉强自己，
繁忙的时候还昏倒了的话，
对公司来说可就是困扰了。」


{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040130a00">
「……」


{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/mb04/0040140e226">
「前辈，公司职员的身体就是本钱。
　管理好自己的身体状况也是分内的工作。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040150a00">
「……的确啊。」


{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/mb04/0040160e226">
「所以我的午睡也是工作的一部分哦。
　呵呵呵～具有冲击性的事实现在被揭开了～」


{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040170e238">
「……即使有这样的职员，我们的公司也在
运转哦。
　所以你不用在意了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040180a00">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆外へ
//◆故郷の町
	SetVolume("@mbgm*", 1500, 0, null);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　回家的路上。
　这个时间比平时都要早。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040190a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　走惯了的路。
　住惯了的城镇。

　平静安详的故乡。

　但是——没错。
　现在有一些小问题。

　由退伍军人组成的山贼团出现了——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040200a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆湊斗家
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg050_湊斗家門前_02.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　郊外的宅邸。
　我生活的家。

　这里并不是我出生的家。
　但是，这里有我的家人。

　现在有卧床不起的妹妹。
　以及养母。

　他们是我无可替代的家人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆統
	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【統】
<voice name="統" class="統" src="voice/mb04/0040210b46">
「哦？
　今天好早啊。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040220a00">
「——」


{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/mb04/0040230b46">
「欢迎回来，景明。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040240a00">
「……嗯。
　我回来了。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040250a00">
「统大人。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆夕空
	OnBG(5000,"bg002_空a_02.jpg");
	FadeBG(2000,true);
	DeleteStA(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　现在的生活是平静而安稳的。
　以后这份安稳也会一直持续下去。

　一定会持续下去的——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040260a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　——明明是这样想的。
　但又不知为何，我却已经知道，

　这无法实现。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆イベントＣＧ等を流して第五話の展開をコンパクトに表現
//◆で、山賊竜騎兵が統を斬ろうとするとこ
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	WaitKey(200);
	CreateTextureSP("絵回想１", 8000, Center, Middle, "cg/ev/ev128_病床の光_c03.jpg");
	CreateTextureSP("絵回想２", 8000, Center, Middle, "cg/ev/ev133_兜割に挑む光_a.jpg");
	CreateTextureSP("絵回想３", 8000, Center, Middle, "cg/ev/ev136_戦闘解説ＶＳ首領編３_e.jpg");
	CreateTextureSP("絵回想４", 8000, Center, Middle, "cg/ev/ev128_病床の光_f03.jpg");
	CreateTextureSP("絵回想５", 8000, Center, Middle, "cg/ev/ev138_首領の最期_c.jpg");
	Fade("絵白転", 300, 150, null, true);

	Delete("絵回想５");
	Wait(50);
	Delete("絵回想４");
	Wait(50);
	Delete("絵回想３");
	Wait(50);
	Delete("絵回想２");
	Wait(50);

	Fade("絵白転", 400, 1000, null, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm34",0,1,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
    ——————————————————————
————————————————————————
————————————————————————
————————————————————————

　刹那间，我感受到了意识的跳跃。

　时间轴错乱了。
　这里究竟是现在，还是过去，亦或是未来呢？

　不——冷静下来！
　分清现实！

　看清自己眼前的现实！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵
//◆統
//あきゅん「演出：なるべく過去と同じように。BGMも同様に。けど村正系の曲は避ける」
	SetVolume("@mbgm*", 5000, 1000, null);
//	StR(1000, @0, @0,"cg/st/st統_通常_私服.png");
//	FadeStR(300,true);
//	WaitKey(300);
//	DeleteStR(300,true);

	StL(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	FadeStL(300,true);

	WaitKey(300);

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　养母一脸呆滞地静静坐在地上。
　在她身旁——一个龙骑兵正将太刀挥过头顶。

　是山贼！
　山贼的武者正要杀害养母!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040270a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　快救她——必须赶去救她。
　……要怎么救!?

　只有武者的力量才能制止武者。
　我……只是一个普通的人类。

　无法阻止——
　无法阻止他吗!?

　难道我只能眼睁睁地看着养母被杀害吗!?

　不…………
　我有力量！

　一定有的！
　这一点我很清楚。

　此时此地能够救出养母的力量，是存在的。
　就在我触手可及的地方——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆キーン。共鳴音
//あきゅん「SE：ちょいとイメージと違うので別版が欲しい」
	CreateSE("SE01","se特殊_雰囲気_共鳴01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 2000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……有了！
　没错，就是这个！

　一股庞大力量的波动。
　威武的胎动通过指尖所碰触到的金属传递而来。

　剑胄！
　这是能与那个龙骑兵抗衡，不，是凌驾其上的力量。

　只要使用这个力量的话！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040280a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……但是。
　为什么我会知道。

　为什么我会知道它是如此强大到令人恐惧的东西。
　没错——从我回应剑胄的呼唤这一刻起。

　凑斗景明的人生，便开始走向地狱——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。共鳴音
//あきゅん「SE：ちょいとイメージと違うので別版が欲しい」
	CreateSE("SE01","se特殊_雰囲気_共鳴01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 2000, false);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040290b40">
《你还在犹豫什么！
　吾之主君！》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040300a00">
「……什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗天牛虫
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureEX("絵演立", 1000, Center, Middle, "cg/st/3d正宗天牛虫_正面.png");
	Move("絵演立", 0, @0, @180, null, true);
	Fade("絵演立", 300, 1000, null, true);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040310b40">
《快说出誓言，与吾正宗结下契约！
　令尊正深陷危机之中吧！》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040320a00">
「啊……啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　……正宗？
　这个是……我所等待的剑胄的名字吗？

　——是……这样的吗？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040330b40">
《快点，主君！
　说出誓言！》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040340a00">
「誓言……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　没错。
　总之……必须要快些。

　必须要救养母。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//あきゅん「演出：うーん、ギャグ臭いかなぁ」
	SoundPlay("@mbgm04",0,1000,true);

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040350a00">
「遇鬼……斩鬼……」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040360a00">
「逢佛……弑佛……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　——这是，
　善恶相杀的诅咒。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040370a00">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　不行！
　决不能结下这个誓约——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 300, 0, null);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040380b40">
《喂，你疯了吗！
　如此狂言，是谁教你的！》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040390a00">
「……什么？」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040400b40">
《吾正宗是贯彻正义的力量！
　斩的是鬼，断的是恶！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040410b40">
《该毁灭的只有邪恶！
　快起誓！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　只有……邪恶吗？

　……这样就可以了吗？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040420b40">
《快！》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040430a00">
「……鬼若现世，灭尽恶鬼。
　恶若现世，断绝邪恶。」


{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040440a00">
「剑胄之理，正在于此……？」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040450b40">
《疑问是多余的，但我还是谅解你了！
　自此刻起，吾正宗便是凑斗景明的刀！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040460b40">
《那么，一同讨伐那恶鬼吧！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ガシーン。装甲
//◆正宗
//あきゅん「演出：ここは過去シーンとまったく同様にする」
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStC(0,true);
	Delete("絵演*");
	WaitKey(1000);
	FadeDelete("絵フラ", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　我装备上了剑胄。
　多么庞大的力量啊。

　它大概会令世间所有的野兽都望尘莫及吧，
超越性的狂暴力量就存在于此地。
　而且——这力量非常爽快舒畅！

　这便是憎恨邪恶之力。
　这便是为击溃恃强凌弱的狂妄之徒而准备的力量，
它拥有更为强悍的威力。

{	SoundPlay("@mbgm10",0,1000,true);}
　这正是正义！
　正是其化身！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);


	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040470b40">
《正是如此！
　上吧，主君!!》


{	FwR("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040480a00">
「好！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1250,null,false);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_汎用移動.jpg", false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	StC(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	FadeStC(0,true);
	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　如今，恶就在眼前。
　企图杀害养母的山贼武者！

　武者正惊慌失措地看着这里。
　蠢货！　他大概以为只有自己才拥有强大的力量吧！

　他大概深信只有自己可以凭借暴力肆意害人吧！
　现在我要对这份傲慢施以惩罚。

　邪恶的力量必将被正义的铁锤粉碎！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//◆ボイス「だぁいあぁーーー！」
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040490b40">
《ＤＡＡＡＩＩＡＡＡＡＡＡＡＡＨＨＨＨ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆突進
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　敌人挥着太刀向养母砍了下去。
　但在他砍到之前，

　我就会将其斩倒在地——<k>
　
{	SetVolume("@mbgm*", 100, 0, null);}
　在那——一瞬间。

　我发觉养母正注视着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【統】
<voice name="統" class="統" src="voice/mb04/0040500b46">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



}

//◆選択：就这么斩下／……等等

..//ジャンプ指定
//◆このまま斬る　"mb04_004a.nss"
//◆……待て　"mb04_004b.nss"

//★選択肢シーン
scene mb04_004.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("就这么斩下","……等等");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆このまま斬る　"mb04_004a.nss"
				$GameName = "mb04_004a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆……待て　"mb04_004b.nss"
				$GameName = "mb04_004b.nss";
		}
	}
}