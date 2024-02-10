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

scene md06_004.nss_MAIN
{

	$TITLE_NOW=" ！！！！　具麹鐙　！！！！ ";

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//��イベントＣＧ
	#イベントファイル兆=true;
	#bg016_巷�@b_01=true;
	#bg007_飛�m寄揃b_01=true;
	#bg009_�`�}廖姙瞬b_01=true;
	#bg013_�`�}県遨d_01=true;
	#bg013_�`�}県遨d_02=true;
	#bg013_�`�}県遨d_03=true;

	//��ル�`トフラグ、�x�k岔、肝のGameName
	$PreGameName = $GameName;

	$GameName = "md06_005.nss";

}

scene md06_004.nss
{
	$スクリプトバ�`ジョン = "  Version $Revision: 1 $";
	$��撹兆 = ModuleFileName();
	$��猟兆 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ峺協
//念ファイル　"md06_003.nss"


//＃嚏の咄
//＃巷�@��
//＃弌ウェイト
//＃翫屎
	PrintBG("貧嘘尚", 30000);
	CreateSE("SEL01","se徭隼_邦_嚏咄02_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	CreateColorSP("�\", 3000, "BLACK");

	CreateColorSP("もうひとつの�\", 140, "BLACK");
	OnBG(150, "bg016_巷�@b_01.jpg");
	FadeBG(0, true);
	Delete("貧嘘尚");

	$SYSTEM_effect_rain_dencity = 40;
	$$SYSTEM_effect_rain_speed = 128;
	CreateEffect("�}�森�嚏", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}�森�嚏","�}�森�嚏");
	Move("�}�森�嚏", 0, 256, 144, null, true);
	Zoom("�}�森�嚏", 0, 2000, 2000, null, true);

	FadeDelete("�\", 4000, true);

	WaitKey(800);

	SoundPlay("@mbgm31", 0, 1000, true);


	StR(1000, @0, @0, "cg/st/st翫屎_宥械_暴捲.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw翫屎_挨且.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//‐翫屎／
<voice name="翫屎" class="翫屎さん" src="voice/md06/0040010a01">
仝´´麼埴´´々

{	FwC("cg/fw/fw尚苧_丑挨.png");}
//‐尚苧／
<voice name="尚苧" class="尚苧" src="voice/md06/0040020a00">
仝´´´´々

{	FwC("cg/fw/fw翫屎_��しい.png");}
//‐翫屎／
<voice name="翫屎" class="翫屎さん" src="voice/md06/0040030a01">
仝氏湖丹議´´
　椎倖��珊頁指肇杏´´�拭�

{	FwC("cg/fw/fw尚苧_�a深.png");}
//‐尚苧／
<voice name="尚苧" class="尚苧" src="voice/md06/0040040a00">
仝´´´´´´´´々

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//＃ウェイト

	WaitKey(1000);

	SetVolume("SEL*", 2500, 0, null);

//＃フェ�`ドアウト
	CreateColorEX("�}弼�\", 20000, "#000000");
	Fade("�}弼�\", 2000, 1000, null, true);

	DeleteStA(0,true);
	Delete("@OnBG*");
	Delete("�}�森�嚏");

	WaitPlay("SEL*", null);

	CreateColorSP("�}弼�\顕和", 10000, "#000000");
	CreateColorSP("�}弼�\顕", 15010, "#000000");
	Move("�}弼�\顕", 0, -512, @0, null, true);

	CreateTextureSP("會猟", 15000, Center, Middle, "cg/sys/Telop/tp_��麹�ﾐ鯲�.png");
	Zoom("會猟", 0, 700, 700, null, true);
	Request("會猟", Smoothing);

	Fade("�}弼�\", 2000, 0, null, true);

	WaitKey(2000);

	FadeDelete("�}弼�\顕", 2000, true);

	WaitKey(4000);

	Fade("�}弼�\", 3000, 1000, null, true);
	Delete("會猟");
	Wait(2000);

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
　宸音頁哂俛議勧傍。

　遇頁廾遮具麹翫屎議勧傍。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

//＃タイトル�祭絢���麹翫屎　��麹��
	CreateTextureSP("��麹��", 15000, Center, Middle, "cg/sys/Telop/lg_��麹��.png");
	Fade("�}弼�\", 2000, 0, null, true);

	WaitKey(3000);

	Fade("�}弼�\", 2000, 10000, null, true);


//＃☆この�､�bg013を聞う��栽はbg013bにすること
//＃�`�}偏瞬，帛
	OnBG(130, "bg013_�`�}県遨d_01.jpg");
	FadeBG(0, true);

	Fade("�}�森�嚏", 0, 1000, null, true);

	Delete("��麹��");
	Delete("もうひとつの�\");
	Delete("�}弼�\顕和");
	FadeDelete("�}弼�\", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
　爺和寄岱。

　綜爺猟僥社畠悶册笥涙冱議講佛厮将��払。
　徽頁瓜佛岻梧蕗哈擬遇栖議媾諮��旺隆泌
剩况匯違��柊涙忸！！涙胎忽坪忽翌��
脅�殲攣惶閑田添圧停�緑嶄。

　繁姫繁��壅瓜繁澑姫。
　繁棒朔延撹分此��壓凪貧嗽均迩仟議此糠。

　爺腎伴付��髄欠値倉��寄仇遣俥。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//＃卞��

	CreateColorSP("�\鳥１", 25000, "#000000");
	DrawTransition("�\鳥１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg012_�`�}�k念巓�x_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\鳥１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\鳥１");


	SetFwC("cg/fw/fw尚苧_宥械b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//‐尚苧／
<voice name="尚苧" class="尚苧" src="voice/md06/0040050a00">
仝´´´´々

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
　厘試彭。

　苧苧厮牌返繍徭失姫墾。
　云哘柿泰噐菜圧嶄音氏壅検軟議吭紛��
音岑採絞嗽哭栖阻賠佰議匯震��
靖李彭匯俳脅厮嶮潤議弊順。

　翫屎傍��寄古頁高債勝恷朔議薦楚嵶囹阻厘。
　涙貫臥屬。徽厘匆範葎短嗤凪麿議辛嬬來。

　飛寔泌緩��高葎採勣斑厘試和栖。
　
　除栖嘉蝕兵房深宸乂並��恷嶮岻媾
狛朔音消��匯岷短嗤恢伏幗窃夘雌。

　峪�誚釘�宸劔匆隆晦音辛。
　厘奚将揖玲去幸參式劍幻岻寂議埃協
！！棋匯俳頼潤岻扮��御窟厘鑑況尚苧議恟彜��
旺斤厘侃侈。

　厘鸚幢佃慕議恟佩��勣喇隈舵才屎吶栖登畳。
　斤払肇伏凋岻繁議鯨鏑嚥名連恂竃温灰。<k>
　
　奚将議宸倖埃協。

　隼遇��抜短嬬堕佩。
　侮岑厘畠何恟佩議麿断曾繁��尖輝恬葎御窟宀��
抜斤繍厘僕貧淑遍尺宸匯岼夭崔岻音尖。

　音砿厘奕担傍��脅峪氏嶷鹸彭書爺俚連岻窃議三。
　恷朔孤巌參訓脱葎喇��詳蒸嚥厘氏中。

　噐頁厘箔棒呀音嬬。

　書爺匆澣�豼暴┳�紡議壇��瓜定煤議筆繁溜卵議
詳蒸阻��音�觧愴ィ�匆涙侃辛肇��宴壓銑花議
瞬祇痞痳。
　缶祐違議房沫彭。

　葎採��厘勣試彭。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//＃卞��

	CreateColorSP("�\鳥１", 25000, "#000000");
	DrawTransition("�\鳥１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg009_�`�}廖姙瞬a_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\鳥１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\鳥１");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
　祥麻試彭��緩伏匆峪複和涙勝議孜剤。

　姫墾阻高。

　云乎便擦議叫廉��
　軸宴川旗孟秋匆尖哘屆照岻麗��
　
　抜瓜厘牌返篤撒。

　´´朔孜。

　厮崩返涙貨阻宅。

　免飛音頁匯龍仇�誚堵膾陵突僉�！
　挽隼孜音輝兜。

　屡隼勣姫��葎採音厚壼匯乂寡函佩強。

　匯壅仇容岳畳僅才佩強��墻墾議号庁
才瓜墾宀議方楚脅延誼涙隈�誅鵝�
　�嶬擅�噫諮挽隼壓警付彭弊順。

　泌惚曾定念��羨震繍高姫棒議三��
祥音氏鯛誼泌緩弥仇。

　´´朔孜。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//＃卞��
	CreateColorSP("�\鳥１", 25000, "#000000");
	DrawTransition("�\鳥１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


}

..//ジャンプ峺協
//肝ファイル　"md06_005.nss"