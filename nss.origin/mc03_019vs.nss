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

scene mc03_019vs.nss_MAIN
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
	//��$���Ҿt��_Flag��������ϡ�"mc03_019vsa.nss"
	//��$���ҼӜp_Flag��������ϡ�"mc03_019vsb.nss"
	//��$�����ܤ�_Flag��������ϡ�"mc03_019vsc.nss"
	//��$���ұܤ�_F��������ϥ롡"mc03_019vsd.nss"
	//$GameName = "mc00_001.nss";
	//$SelectGameName="@->"+$GameName+"_SELECT";
	//call_scene $SelectGameName;

//�룺�t�����A�С��Ӝp���K�ˡ��ܤ����K�ˡ��ܤ����A��

	if($mc03_017vs_Flag=="�t��"){$GameName = "mc03_019vsa.nss";}
	else if($mc03_017vs_Flag=="�Ӝp"){$GameName = "mc03_019vsb.nss";}
	else if($mc03_017vs_Flag=="�ܤ�"){$GameName = "mc03_019vsc.nss";}
	else if($mc03_017vs_Flag=="�ܤ�"){$GameName = "mc03_019vsd.nss";}
}

scene mc03_019vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_018vsaa.nss"
//ǰ�ե����롡"mc03_018vsab.nss"
//ǰ�ե����롡"mc03_018vsb.nss"

//������󡸥ǥХå����ݳ��_�J�åե饰��
//	$mc03_017vs_Flag="�t��";
//	$mc03_017vs_Flag="�Ӝp";
//	$mc03_017vs_Flag="�ܤ�";
//	$mc03_017vs_Flag="�ܤ�";

//���_ʼ
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}��", 5000, Center, Middle, "cg/ev/resize/ev502_�����i��Ƭ��lm.jpg");
	Rotate("�}��", 0, @0, @180, @0, null,true);

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����������ˡ�
���Ѿ�û����·�ˡ�

��ֻ�ܰ��վ����ĵ�·��ǰͻ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T����
	CreateCamera("��", 0, 0, 10000);
	SetAlias("��","��");

	CreateTextureSP("��/�}����", 0, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	CreateTextureSP("��/�}�����}����", 250, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	Request("��/�}�����}����", Smoothing);
	Zoom("��/�}�����}����", 0, 250, 250, null, true);
	Move("��/�}�����}����", 0, @932, @-10, null, true);

	CreateTextureSP("��/�}�����}����", 250, Center, Middle, "cg/st/3d���å������`_�T��_���Lb.png");
	Request("��/�}�����}����", Smoothing);
	Zoom("��/�}�����}����", 0, 350, 350, null, true);
	Move("��/�}�����}����", 0, @-932, @10, null, true);

	FadeDelete("�}��", 1000, false);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("��/�}�����}����", 650, @-480, @0, null, false);
	Move("��/�}�����}����", 650, @480, @0, null, false);
	MoveCamera("��", 650, @0, @0, 550, AxlDxl, false);

	SetFwC("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/019vs0010b33">
���ý�ˮճ�����ɡ�������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ﻹ�ǵ����������ͻӣ����ƻ������ٶ�ͬ���ǹ�
�ھ޴���һ������Ϯ����
��������һ�����ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("��", null);

//���ե饰���
//�����Ҥ��ЄӤ�����ե�����˷��

}

..//������ָ��
//��$���Ҿt��_Flag���������
//�Υե����롡"mc03_019vsa.nss"

//��$���ҼӜp_Flag���������
//�Υե����롡"mc03_019vsb.nss"

//��$�����ܤ�_Flag���������
//�Υե����롡"mc03_019vsc.nss"

//��$���ұܤ�_Flag���������
//�Υե����롡"mc03_019vsd.nss"

//���x�k֫���`��
scene mc03_019vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm10",0,1000,true);

	OnBG(100,"bg006_���w�β���_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice04("���Ҿt��","���ҼӜp","�����ܤ�","���ұܤ�");
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
			ChoiceA04();
//��$���Ҿt��_Flag��������ϡ�"mc03_019vsa.nss"
				$GameName = "mc03_019vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//��$���ҼӜp_Flag��������ϡ�"mc03_019vsb.nss"
				$GameName = "mc03_019vsb.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//��$�����ܤ�_Flag��������ϡ�"mc03_019vsc.nss"
				$GameName = "mc03_019vsc.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//��$���ұܤ�_Flag��������ϥ롡"mc03_019vsd.nss"
				$GameName = "mc03_019vsd.nss";
		}
	}
}