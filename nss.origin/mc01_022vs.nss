//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_022vs.nss_MAIN
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

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//��"mc01_021vs.nss"����x��ʹ�ä������ϡ�"mc01_022vsa.nss"
	//�Υե����롡"mc01_022vsb.nss"
	//$GameName = "mc00_001.nss";
	//$SelectGameName="@->"+$GameName+"_SELECT";
	//call_scene $SelectGameName;

	if($mc01_021vsb_��xʹ�� == true){
		$GameName = "mc01_022vsa.nss";
	}else{
		$GameName = "mc01_022vsb.nss";
	}

}

scene mc01_022vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vsaba.nss"
//ǰ�ե����롡"mc01_021vsba.nss"
//ǰ�ե����롡"mc01_021vsbb.nss"

	//$mc01_021vsb_��xʹ�� = true;

//������
//���x��
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureEX("�}�ձ�����", 110, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	CreateTextureSP("�}�ձ���", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}��ܞ", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ڿ�ʼ���°ںü��ơ�
��״��û���κκ�ת��������ͦ��һ��֮��
������������ת��ս�����Ƶ�ͻ�ƿڡ�

��ץס���ͻ�ƿڣ�����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���󤭤��Х�󥹱���
//���ޤ����`�ʸФ�
	CreateSE("SE01","se����_Ѫ_��Ѫ01");
	CreateSE("SE01a","se����_��_��Ġ����02");
	CreateColorEXmul("�}ɫ��", 17010, "#CC0000");
	CreateTextureEXover("�}�݄���", 17000, Center, Middle, "cg/data/worm_01_00_0.png");
	DrawTransition("�}�݄���", 0, 0, 500, 500, null, "cg/data/zoom_01_00_0.png", true);

	MusicStart("SE01",0,1000,0,500,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 750, null, true);
	Fade("�}�݄���", 0, 750, null, true);

	Zoom("�}�ձ�����", 0, 1250, 1250, null, true);
	Fade("�}�ձ�����", 0, 1000, null, true);
	Shake("�}�ձ�����", 900, 0, 30, 0, 0, 1000, Dxl2, false);

	Wait(10);

	Zoom("�}�ձ�����", 900, 1000, 1000, null, false);
	FadeDelete("�}�ձ�����", 900, false);
	FadeDelete("�}ɫ��", 600, false);
	DrawDelete("�}�݄���", 600, 100, "worm_01_00_0", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc01/022vs0010a01">
������������!?��

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc01/022vs0020a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

..//������ָ��
//��С���
//��"mc01_021vs.nss"����x��ʹ�ä������ϡ�"mc01_022vsa.nss"
//�Υե����롡"mc01_022vsb.nss"

//���x�k֫���`��
scene mc01_022vs.nss_SELECT
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
	SetChoice02("��x��ʹ�ä���","��x��ʹ�ä��Ƥ��ʤ�");
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
//��"mc01_021vs.nss"����x��ʹ�ä������ϡ�"mc01_022vsa.nss"
				$GameName = "mc01_022vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�Υե����롡"mc01_022vsb.nss"
				$GameName = "mc01_022vsb.nss";
		}
	}
}