
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc01_010vsca.nss_MAIN
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
	$First_Battle_Damage = $First_Battle_Damage+1;

	$PreGameName = $GameName;

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//�Υե����롡"mc01_011vs.nss"
	//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"
	//$GameName = "mc01_011vs.nss";

	Cockpit_AllFade0();

	if($First_Battle_Damage >= 2){
		$GameName = "mc01_010vsz.nss";
	}else{
		$GameName = "mc01_011vs.nss";
	}

}

scene mc01_010vsca.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_010vsc.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//���϶�
//�������϶Θ���
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}�ݴ���", 17100, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	CreateTextureSP("�}����", 17000, InRight, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	Request("�}����", Smoothing);
	Request("�}�ݴ���", Smoothing);
	Move("�}�ݴ���", 0, @-100, @120, null, true);
	Zoom("�}�ݴ���", 0, 1300, 1300, null, true);

	FadeDelete("�ϱ���", 500, false);

	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("�}�ݴ���", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("�}����", 0, 1500, 1500, null, true);
	Move("�}����", 60000, 0, @0, null, false);

	Move("�}�ݴ���", 300, @-60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ֽ����߾ٵ���ͷ����ͳ���ƹ᳹���ס�
������һ���ƣ����Խ���ӵ����������Ĺ��������
��Ϊ��ͳ����Ϊ������

��������η����˵����У������볣����
��������һ����ʤ���Ļ���ս���ͽ����ˡ�

����׼װ�׵�©����һ�����£�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("�}�\Ļ", 20000, "#000000");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("�}����", 18100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 18000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);

	SetFwC("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/010vs0090b33">
�������������������ء���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T��������
	CreateSE("SE01a","se���L_����_���ϕN01");
	MusicStart("SE01a",0,1000,0,1200,null,false);
	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 19010, "#336600");
	CreateTextureSPmul("�}��/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 19100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}��/�}�����}װ��", Smoothing);
	Zoom("�}��/�}�����}װ��", 0, 750, 750, null, true);

	Zoom("�}��/�}�����}װ��", 300, 1250, 1250, Axl2, false);
	Move("�}��/�}�����}װ��", 300, @0, -430, Axl2, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc01/010vs0100a01">
��������ô����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	PrintGO("�ϱ���", 30000);
	CreateTextureSPover("�}�݄���", 110, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	Request("�}�ݱ���", Smoothing);
	Zoom("�}�ݱ���", 0, 3000, 1000, null, true);

	CreateTextureSP("�}�ݺ���", 100, -660, -610, "cg/st/3d���å������`_�T��_���La.png");
	Request("�}�ݺ���", Smoothing);
	Rotate("�}�ݺ���", 0, @0, @-30, @0, null,true);

	CreateTextureSP("�}�ݴ���", 100, 170, -360, "cg/st/3d�����˜�_�T��_���La.png");
	Request("�}�ݴ���", Smoothing);
	Rotate("�}�ݴ���", 0, @0, @-10, @0, null,true);

	$�����sС��=300;
	$�����j�{��=$�����sС��*1.75;
	Zoom("�}�ݴ���", 0, $�����sС��, $�����sС��, null, true);
	Zoom("�}�ݺ���", 0, $�����j�{��, $�����j�{��, null, true);

	Move("�}�ݺ���", 15000, -580, -610, Dxl2, false);
	Move("�}�ݴ���", 15000, 90, -330, Dxl2, false);

	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������׼̫���������һ˲�䡭��
��������ͻȻ�ӻ���һ�μ���!?

�����Ƿ��ľٶ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc01/010vs0110a00">
���㣡��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ȅ���
	CreateColorSP("�}ɫ�\", 20010, "#000000");
	CreateSE("SE02b","se���L_����_�����01");
	MusicStart("SE02b",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

	CreateSE("SE02c","se���L_����_Ұ̫�����02");
	MusicStart("SE02c",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

//�������`��
	CreateSE("SE03","se���L_����_��ꪏ���02");
	CreateSE("SE03a","se���L_�n��_�nͻ01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 22000, "#FFFFFF");
	CreateTextureSP("�}�݄���", 21000, Center, Middle, "cg/ef/ef044_��a.jpg");
	CreateTextureEXadd("�}�݄�����", 21110, Center, Middle, "cg/ef/ef044_��a.jpg");

	CreateTextureSP("�}���ձ���", 1000, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_01.jpg");

//������󡸣ãУ����ڂ����x��
	Cockpit_AllFade2();

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	MyLife_Count(0,$�����饤���{����);
	CP_IHPChange(0,$����������{����,null,false);

	CP_SpeedChange(0,512,null,false);
	MyTr_Count(0,440);

	CP_PowerChange(0,870,null,false);

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,243,null,false);

	CP_AltChange(0,15,null,false);
	CP_RollBarMove2(0,0,null,true);

	Delete("�}�ݴ���");
	Delete("�}�ݺ���");
	Delete("�}�݄���");
	Delete("�}�ݱ���");
	Delete("�}ɫ�\");

	FadeDelete("�}ɫ��", 500, false);
	Shake("�}�݄�����", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("�}�݄�����", 500, 1500, 1500, Dxl2, false);
	Fade("�}�݄�����", 250, 1000, null, true);
	Fade("�}�݄�����", 250, 0, DxlAuto, true);
	FadeDelete("�}�݄���", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������������ǿռȡ��λ�õ����ƣ�
��Ǳ������·����Խ�������

��������
��������Ч������һ�������˵���װ������صĵط���
�����������ˡ�

������������ˡ�
���ǡ���ô����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���L���һ�ġ�
//�����`��
	CreateSE("SE04","se���L_����_�z_���02");
	CreateSE("SE04a","se���L_����_�z��������03");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04a",0,1000,0,1000,null,false);

	Shake("@CP_Frame*", 1500, 0, 30, 0, 0, 1000, Dxl2, false);
	Shake("�}�ݿձ���", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

//������󡸣ãУ������ݳ��_ʼ��
	$�����饤�՜p�ق� = $�����饤���{���� - 218;
	$����������p�ق� = $����������{���� - 3;

	MyLife_Count(300,$�����饤�՜p�ق�);
	CP_IHPChange(300,$����������p�ق�,null,false);

	MyTr_Count(300,140);
	CP_SpeedChange2(1500,226,Dxl2,false);

	CP_HighChange2(1500,1444,Dxl2,false);
	CP_AltChange(1500,10,Dxl2,false);
	Move("�}���ձ���", 1500, @0, @-60, Dxl2, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc01/010vs0120a00">
���۰�!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���������ˡ���
������������һ����

���������ȫ���С�����ʮ���һ����
���������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SEL01","se���L_����_������01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SEL01",0,1000,0,1250,null,true);

//������󡸣ãУ��ϕN�����܉��������
	MyTr_Count(300,330);
	CP_PowerChange(2000,870,null,false);
	CP_SpeedChange(2000,387,Axl1,false);

	Move("�}���ձ���", 2000, @0, @200, DxlAuto, false);
	CP_HighChange(2000,1527,DxlAuto,false);
	CP_AltChange(2000,20,DxlAuto,false);
	FrameShake();

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/mc01/010vs0130a01">
����������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/010vs0140a00">
�����õ��ġ���
��������������幥����Դͷ����!?��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/010vs0150a01">
��û�С���
����ͨ���ղŵ�һ�������׵�һ�㡣
�ǲ���<RUBY text="����">���</RUBY>����

//��������
<voice name="����" class="��������" src="voice/mc01/010vs0160a01">
������ĳ��<RUBY text="����">���</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��û��
��ͨ��������ʱ�Ĵ��У���Ҳ��������һ�㡣

������������ΰ쵽�ģ�
��Ҳδ������������Ȳ������߻�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 100, 0, null);

//������󡸣ãУ��·���˳������åס�
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MyTr_Count(300,390);
	CP_SpeedChange(450,420,Axl1,false);

	CreatePlainSP("�}��д", 1000);
	SetBlur("�}��д", true, 2, 500, 60, false);
	Zoom("�}��д", 800, 2000, 2000, Dxl2, false);

	CP_HighChange(450,1611,DxlAuto,false);
	CP_AltChange(450,28,DxlAuto,false);
	CP_RollBarMove("@�}��д", 800, 180, AxlDxl, false);

	WaitKey(300);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Wait(1500);
	Cockpit_AllFade0();

//������`������


}

..//������ָ��
//�Υե����롡"mc01_011vs.nss"
//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"

//���x�k֫���`��
scene mc01_010vsca.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg006_���w�β���_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("ͨ��","����`���ե饰��");
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
			ChoiceA02();
//�Υե����롡"mc01_011vs.nss"
				$GameName = "mc01_011vs.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"
				$GameName = "mc01_010vsz.nss";
		}
	}
}