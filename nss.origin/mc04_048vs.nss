//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_048vs.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	//CP_AllDelete();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_02";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	$GameName = "mc04_049vs.nss";

}

scene mc04_048vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm13",0,1000,true);


..//������ָ��
//ǰ�ե����롡"mc04_047vs.nss"


//������֦������

	CreateTextureSP("�}����50", 100, Center, 0, "cg/bg/bg001_��a_01.jpg");
	CreateTextureEX("�}��", 1590, center, middle, "cg/st/3d�Х���_�T��_ͨ��.png");
	Request("�}��", Smoothing);
//	Rotate("�}��", 0, @0, @0, @-50, null,true);
	Zoom("�}��", 0, 1000, 1000, null, true);
	Move("�}��", 0, @0, @-1300, null, true);
	SetBlur("�}��", true, 1, 200, 100, false);
	Fade("�}��", 0, 1000, null, true);

	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 200, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @0, @0, @90, null,true);
	Fade("�}������", 0, 300, null, true);

	Shake_Loop("@�}��","shake02");

	CreateSE("SE01","se���L_����_�z_�ٶ�ʧ��01");
	CreateSE("SE10","se���L_����_��ͻ�M05");

	FadeDelete("�ϱ���", 1000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
//	Move("�}����50", 30000, @0, @-1500, Dxl2, false);
	Move("�}��", 2000, @0, @1300, Dxl2, true);
	FadeF4("�}��", 0, 1000, 60000, 0, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��Ϊӭ��������������С���
������ʶ����

���Ѿ�û��������
�����Ƿ��о��Ѻľ�ȫ����

���Ѿ�û�У��ָܷ�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/048vs0010a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ͽ�������
���Լ�Ҫ������

���ǰɡ�
������Ҳ�á�

��û�취��
����Ϊ�Ѿ��߾������ˡ���

����������֦���ˣ��ն��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/048vs0020a03">
������Ҳ�ã�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ǵġ�

����ô���������ɡ�
��Ӧ����ô����

����������֦������֮ǰ��Ӧ����ʲô�أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SE02","se����_���å��ԥå�_������04");
	CreateSE("SE03","se���L_����_��ͻ�M08");

	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("�}��", 500, @-5, @20, Dxl2, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 300, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
//	Zoom("�}��", 1000, 500, 500, Axl3, false);
	Fade("�}������", 1000, 0, null, false);
	Move("�}��", 1000, @1000, @-100, Axl3, true);
	Delete("�}������");

}

//���x�k������������������������������
//���ɤ�Ǥ�ͬ��
//���x�k֫���`��
scene mc04_048vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	CreateTextureSP("�}����50", 100, Center, 0, "cg/bg/bg001_��a_01.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice05("ɱ","ɱ","ɱ","ɱ","ɱ");
	select
	{
		//���`������
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
	
		case @�x�k֫��
		{
			ChoiceA05();
		}
		case @�x�k֫��
		{
			ChoiceB05();
		}
		case @�x�k֫��
		{
			ChoiceC05();
		}
		case @�x�k֫��
		{
			ChoiceD05();
		}
		case @�x�k֫��
		{
			ChoiceE05();
		}
	}
}

scene mc04_048vs.nss_02
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintGO("������", 30000);

	SoundPlay("@mbgm13",0,1000,true);


//���Х���������
	CreateTextureEX("kana", 18100, 0, Middle, "cg/ev/resize/ev205_ʸ��Ĥ��ŤĥХ���_al.jpg");
	SetBlur("kana", true, 1, 300, 100, false);
	Move("kana", 0, @-200, @-200, null, true);
	CreateTextureEX("�}EV100", 18000, 0, Middle, "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_a.jpg");
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	SetBlur("�}EV100", true, 1, 300, 100, false);

	FadeDelete("������", 0, true);
	Fade("kana", 200, 1000, null, false);
	Move("kana", 200, @-200, @+100, Dxl1, true);
	Fade("�}EV100", 0, 1000, null, true);

	Wait(100);

	OnSE("se����_�z_װ��06",1000);
	Move("kana", 300, @-300, @250, Dxl2, true);

	Wait(1000);

	Move("�}EV100", 0, -390, 140, null, true);

	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);
	FadeDelete("kana", 250, false);
	Move("�}EV100", 200, 0, 0, Axl3, false);
	Zoom("�}EV100", 200, 1000, 1000, Axl3, true);

	Wait(200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ʱ�˵ؾ����а������������֦��
��Ҳ����������ͬ�ľ��ϡ�

��ֹͣ��Ͳ����������
������������ס�

����֤ʣ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���ܥ�����The paradox of "Tell and apple"��
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/048vs0030a03">
��������ʥ֮ʸ�޷�����ƻ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ͥ륮�`����
	CreateSE("SE�ܥ�����","se����_�Х���_�ѥ�`���_L");

	MusicStart("SE�ܥ�����",1000,1000,0,1000,null,true);
	EffectZoomDXadd(18500, 1000, 100, "#FFFFFF", "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_a.jpg", true);
	Wait(100);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��
������������������ɱ��
������������������<RUBY text="����">��Ȼ</RUBY>Ҫɱ��

����������֦�Ǹ����ߡ�
�����������޷����ϵ�Թ�������֮�ˡ�

������ֻʣ���һ��������
��������;�����Ա���

��ֻ��Ϊɱ¾��ʹ�á�
��ֻΪɱ¾!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);

}

..//������ָ��
//�Υե����롡"mc04_049vs.nss"
