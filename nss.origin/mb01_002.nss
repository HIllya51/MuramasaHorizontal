//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_002.nss_MAIN
{

	$TITLE_NOW=" ！！！！　哂俛鐙　！！！！ ";

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//��イベントＣＧ
	#bg014_�`�}訓�A瞬_03=true;

	//��ル�`トフラグ、�x�k岔、肝のGameName
	$PreGameName = $GameName;

//�襭些�に燕幣されるので、デバッグモ�`ド�g廾まで盾茅します。
	//＃フラグ蛍瓷�坤妊丱奪阿里燭痿x�k岔にしてあります
	//＃�稍琳ι�贋の��栽　"mb01_002a.nss"
	//＃それ參翌　"mb01_003.nss"
	//$GameName = "mb01_002a.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	if($�稍琳λ斥� == true){
		$GameName = "mb01_003_1.nss";
	}else{
		$GameName = "mb01_002a.nss";
	}


}

scene mb01_002.nss
{
	$スクリプトバ�`ジョン = "  Version $Revision: 1 $";
	$��撹兆 = ModuleFileName();
	$��猟兆 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ峺協
//念ファイル　"mb01_001.nss"

//＃�`�}，匚��
	PrintBG("貧嘘尚", 30000);
	CreateColorSP("�}圧��", 15000, "#000000");
	OnBG(100,"bg014_�`�}訓�A瞬_03.jpg");
	FadeBG(0,true);
	Delete("貧嘘尚");
	FadeDelete("�}圧��", 2000, true);
	SoundPlay("@mbgm33",0,1000,true);

	StR(1000, @0, @0,"cg/st/st匯訳_宥械_崙捲b.png");
	StL(1000, @0, @0,"cg/st/st僣��隨_宥械_暴捲.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw匯訳_孜しい.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//‐匯訳／
<voice name="匯訳" class="匯訳" src="voice/mb01/0020010a02">
仝´´音辛嬬。々


{	FwC("cg/fw/fw僣��隨_外丶.png");}
//‐僣��隨／
<voice name="僣��隨" class="僣��隨" src="voice/mb01/0020020a12">
仝細´´々


{	FwC("cg/fw/fw匯訳_鏑りc.png");}
//‐匯訳／
<voice name="匯訳" class="匯訳" src="voice/mb01/0020030a02">
仝音辛嬬、音辛嬬、音辛嬬´´��
　低傍椎倖繁銭涙恟議繁脅姫!?々


{	FwC("cg/fw/fw匯訳_奎��a.png");}
//‐匯訳／
<voice name="匯訳" class="匯訳" src="voice/mb01/0020040a02">
仝低宸社誌肖隼糊佚笥鮭傍！！々


{	FwC("cg/fw/fw僣��隨_宥械.png");}
//‐僣��隨／
<voice name="僣��隨" class="僣��隨" src="voice/mb01/0020050a12">
仝低辛參肇諒亜。々


{	FwC("cg/fw/fw匯訳_����.png");}
//‐匯訳／
<voice name="匯訳" class="匯訳" src="voice/mb01/0020060a02">
仝焚担�拭�


{	FwC("cg/fw/fw僣��隨_宥械.png");}
//‐僣��隨／
<voice name="僣��隨" class="僣��隨" src="voice/mb01/0020070a12">
仝肇諒麿云繁亜´´甲弟。
　椎社誌匯協音氏簸姿´´々


//‐僣��隨／
<voice name="僣��隨" class="僣��隨" src="voice/mb01/0020080a12">
仝�餽団鑼睹�議繁肇輝中嵎諒麿´´厘�襭�寄
古。
　麿氏孚糞指基議´´々

{	FwC("cg/fw/fw匯訳_屎�x.png");}
//‐匯訳／
<voice name="匯訳" class="匯訳" src="voice/mb01/0020090a02">
仝´´´´々


{	FwC("cg/fw/fw僣��隨_�祭�.png");}
//‐僣��隨／
<voice name="僣��隨" class="僣��隨" src="voice/mb01/0020100a12">
仝細��細´´
　細細細細細細細細細´´�　�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(3000, 2000);

//＃テロップ��
	PrintBG("貧嘘尚", 30000);
	CreateColorSP("�}�\中", 10000, "#000000");
	CreateColorSP("�}�\仇", 150, "#000000");
	Move("�}�\仇", 0, -512, @0, null, true);
	CreateTextureSP("�}テロ１", 100, Center, Middle, "cg/sys/Telop/tp_哂俛�ﾐ鯲�.png");
	Zoom("�}テロ１", 0, 700, 700, null, true);
	Request("�}テロ１", Smoothing);
	Delete("貧嘘尚");
	FadeDelete("�}�\中", 2000, true);

	WaitKey(2000);
	FadeDelete("�}�\仇", 1000, true);

	WaitKey(3000);
	ClearWaitAll(3000, 2000);

/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
　宸旺掲哂俛議絞並。

　徽哂俛挽氏週匝。

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//＃タイトル�祭絢���麹翫屎　哂俛��

	PrintBG("貧嘘尚", 30000);
	CreateTextureSP("�}テロ１", 20000, Center, Middle, "cg/sys/Telop/lg_哂俛��.png");
	FadeDelete("貧嘘尚", 2000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

}


..//ジャンプ峺協
//＃フラグ蛍瓷
//＃�稍琳ι�贋の��栽　"mb01_002a.nss"
//＃それ參翌　"mb01_003.nss"


//￥�x�k岔シ�`ン
scene mb01_002.nss_SELECT
{
//＊�x�k岔念協�x
	$��撹兆 = ModuleFileName();
	$��猟兆 = $SYSTEM_present_process;
	SystemInit();

//＊念の彜�Bを協�x
	PrintGO("嘘尚０", 30000);
	FadeDelete("嘘尚０", 0, true);


//＊�x�k岔
	SetChoice02("�稍琳ι�贋の��栽","それ參翌");
	select
	{
		//カ�`ソル喘
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
	
		case @�x�k岔１
		{
			ChoiceA02();
//＃�稍琳ι�贋の��栽　"mb01_002a.nss"
				$GameName = "mb01_002a.nss";
		}
		case @�x�k岔２
		{
			ChoiceB02();
//＃それ參翌　"mb01_003.nss"
				$GameName = "mb01_003.nss";
		}
	}
}