//<continuation number="360">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_027.nss_MAIN
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
	#ev253_飢餓虚空の内側=true;
	#bg047_景明故郷町a_01=true;
	#ev128_病床の光_a03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;
}

scene md05_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_026vs.nss"


//◆闇
//◆通常ボックスに戻り

	PrintBG("上背景", 30000);
	CreateColorSP("下敷き黒", 10, "BLACK");
	SoundPlay("@mbgm15", 0, 1000, true);

	FadeDelete("上背景",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………

　……我……

　怎么了……？

　这里是……哪里？

　…………

　……有什么……

　……不够。

　有什么东西，从我身上被剥离。

　少了什么……

　是什么……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md05/0270010a14">
《什么都。》

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270020a14">
《无一欠缺。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md05/0270030a14">
《景明……你所追求的东西，应该都
在这里。
　不对吗……？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆巨大な光。景明は胎内から見上げているような感じ。
//◆微妙にエロスで。
//◆参考になりそうなカット有り。ブラスレのコミックに

//光resize版を超拡大？ エロスは胸のあたり？　inc櫻井

	CreateTextureEX("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");
	Request("絵巨大光", Smoothing);
	Zoom("絵巨大光", 0, 1200, 1200, null, true);

	Zoom("絵巨大光", 3000, 1000, 1000, null, false);
	Fade("絵巨大光", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　…………

　……光……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md05/0270040a14">
《战斗已经结束。
　慢慢，平静下来。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　结束了……？

　但是，我……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md05/0270050a14">
《景明，你有何不满？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……不够。

　有什么……重要之物，从我这里被夺走了……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【光】
<voice name="光" class="光" src="voice/md05/0270060a14">
《正好相反。
　是你被夺走了。》

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270070a14">
《但是，被光取回来了。
　已不再缺乏任何东西。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md05/0270080a14">
《为什么，觉得不够？》

{	FwR("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270090a14">
《冷吗？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……不。

　……很温暖……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md05/0270100a14">
《是吧。
　你在光的胎内。》

//【光】
<voice name="光" class="光" src="voice/md05/0270110a14">
《被光守护着。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md05/0270120a14">
《平静吧？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……啊啊……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/md05/0270130a14">
《那么，这样沉睡便好。
　无需在乎光。》

//【光】
<voice name="光" class="光" src="voice/md05/0270140a14">
《只有你。
　进入胎内也毫无痛楚。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　…………

　我……

　……一定要……
　把你打倒才行……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【光】
<voice name="光" class="光" src="voice/md05/0270150a14">
《为何？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　你……杀死了很多人……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【光】
<voice name="光" class="光" src="voice/md05/0270160a14">
《是啊。》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270170a14">
《所以你，是在抗拒我吗？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　…………

　……………………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【光】
<voice name="光" class="光" src="voice/md05/0270180a14">
《你不会这么说的。
　诚然。你已经知晓……》

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270190a14">
《认识武的本质。
　那只是扼杀生命而已，没有正道与邪道的
区别。》

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270200a14">
《世上的武背负着善恶相抵的诅咒。
　那么武人把同类看做正义或看做邪恶，认可
自己拒绝他人，不得不说极为奇怪。》

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270210a14">
《武人全都相同，因为刀尖对善恶一视同仁，
尽数毁坏。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【光】
<voice name="光" class="光" src="voice/md05/0270220a14">
《能非难武道的，若非身无寸铁讲道的圣人，
就只有不知廉耻的伪善者罢了。
　你两者都不是吧？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/md05/0270230a14">
《你，没有抗拒我的理由。》

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270240a14">
《安心吧。
　无需忧愁，追求光吧。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　……追求……

　我……追求的是……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("絵巨大光", 1000, 0, null, true);


//◆蜘蛛シルエット？

	CreateColorSP("絵色黒", 2000, "#000000");
	CreateStencil("絵マスク１",1200,center,InBottom,128,"cg/st/3d村正蜘蛛_俯瞰.png",false);
	SetAlias("絵マスク１","絵マスク１");
	CreateColor("絵マスク１/色１", 1200, 0, 0, 1024, 576, "White");
	Fade("絵マスク１/色１", 0, 500, null, false);
	SetShade("絵マスク１", HEAVY);
	Fade("絵色黒", 100, 0, null, true);

	WaitKey(1500);

//◆消す
	Fade("絵色黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　……尘土飞扬。
　零零碎碎，某物的残渣……

　伸出手指。
　一一捡拾……连接起来……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆蜘蛛シルエット？

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateStencil("絵マスク１",1200,center,InBottom,128,"cg/st/3d村正蜘蛛_俯瞰.png",false);
	SetAlias("絵マスク１","絵マスク１");
	CreateColor("絵マスク１/色１", 4200, 0, 0, 1024, 576, "White");
	SetShade("絵マスク１", HEAVY);
	Fade("絵マスク１/色１", 1, 500, null, false);
	Fade("絵色黒", 100, 0, null, true);

	SetFwR("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【光】
<voice name="光" class="光" src="voice/md05/0270250a14">
《…………》

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270260a14">
《为何，要追求这种东西？》

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270270a14">
《追求这种冰冷的铁块。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　……好冷……

　确实，它异常冰冷。
　仅是触碰，就仿若冻结成冰……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カシャーン。蜘蛛の影、散る
	OnSE("se日常_建物_窓ガラス破壊01", 1000);

	DrawEffect("絵マスク１/色１", 1800, "HardSplit", 30, 30, null);
	FadeDelete("絵マスク１/色１", 1000, true);

	Fade("絵巨大光", 1000, 1000, null, true);


	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【光】
<voice name="光" class="光" src="voice/md05/0270280a14">
《这东西和你不相称。》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270290a14">
《这对你来说有何意义？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
<voice name="光" class="光" src="voice/md05/0270300a14">
《你选择的是光。》

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270310a14">
《追求能守护你，并给予你安宁的……光
就好。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/md05/0270320a14">
《…………》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270330a14">
《好吧。
　景明，让我消除你的迷茫吧。》

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270340a14">
《光来提问。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……提问……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【光】
<voice name="光" class="光" src="voice/md05/0270350a14">
《老实回答便好。伪装会摧毁你站立的基石，
弱化之。
　不过——即使老实回答，你被我收纳的结局
也不会改变……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【光】
<voice name="光" class="光" src="voice/md05/0270360a14">
《首先一问。
　现在统已去世，你的安宁只存在于光身上
——对吧？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　————

　我的……安宁……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆回想フラッシュ：過去の光、病床の光

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg047_景明故郷町a_01.jpg");
	CreateTextureSP("絵回想300", 2101, 300, InBottom, "cg/st/st光三年前_通常_制服.png");


	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoIn1(18000,600);

	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev128_病床の光_a03.jpg");


	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoOut1(300);
	Delete("絵回想*");

	EfRecoOut2(600,true);


//◆選択：肯定／否定

}

..//ジャンプ指定
//◆肯定　"md05_027a.nss"
//◆否定　"md05_027b.nss"



//★選択肢シーン
scene md05_027.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm15", 0, 1000, true);

	CreateColorSP("絵下敷き黒", 10, "BLACK");

	CreateTextureSP("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("肯定","否定");
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
//◆肯定　"md05_027a.nss"
				$GameName = "md05_027a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆否定　"md05_027b.nss"
				$GameName = "md05_027b.nss";
		}
	}
}