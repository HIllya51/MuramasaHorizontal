
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsb.nss_MAIN
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

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_021vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vs.nss"

//����x
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}��", 5000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����������������ͨ�Ĺ���ֻ���޼����¡�
��ֻ��ת����ȡ��Ѱ����Ӧ�Է�ʽ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ꪏ���02");
	CreateWindow("�}��", 19000, 0, 108, 1024, 360, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 19000, "#CC0000");
	CreateTextureSP("�}��/�}�����}װ�׏r", 19100, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	CreateTextureSPadd("�}��/�}�����}װ�ײ�", 19120, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 19200, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_al.jpg");
	Move("�}��/�}�����}װ��*", 0, @290, @240, null, true);
	Zoom("�}��/�}�����}װ��*", 0, 800, 800, null, true);

	Request("�}��/�}�����}װ��*", Smoothing);

	MusicStart("SE01",0,1000,0,1500,null,false);
	Move("�}��/�}�����}װ��*", 350, @0, @-80, Dxl2, false);
	Zoom("�}��", 200, 1000, 1000, Dxl2, true);

	WaitAction("�}��/�}�����}װ��*", null);

	CreateSE("SE01a","se����_냇��_�k��03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}��/�}ɫ����", 19200, "#FFFFFF");

	Delete("�}��/�}�����}װ��");
	DrawTransition("�}��/�}�����}װ�ײ�", 0, 0, 400, 100, null, "cg/data/slide_03_01_1.png", true);

	FadeDelete("�}��/�}ɫ����", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���������µ���Ϊ���ĵ�����Ϣ����ʼ�ۼ�
���ڵ�������
��
������������Ҫ����������������ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k����װ�����O����װ��ؓ�O����װ���L�F


}

..//������ָ��
//����װ�����O��"mc01_021vsba.nss"
//����װ��ؓ�O��"mc01_021vsbb.nss"
//����װ���L�F��"mc01_021vsbc.nss"

//���x�k֫���`��
scene mc01_021vsb.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("�x�k֫��д", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("�}��", 5000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	CreateWindow("�}��", 19000, 0, 108, 1024, 360, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 19000, "#CC0000");
	CreateTextureSP("�}��/�}�����}װ�׏r", 19100, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	CreateTextureSPadd("�}��/�}�����}װ�ײ�", 19120, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	Move("�}��/�}�����}װ��*", 0, @290, @160, null, true);
	Zoom("�}��/�}�����}װ��*", 0, 800, 800, null, true);
	Request("�}��/�}�����}װ��*", Smoothing);
	DrawTransition("�}��/�}�����}װ�ײ�", 0, 0, 400, 100, null, "cg/data/slide_03_01_1.png", true);

	Wait(32);

	Delete("�x�k֫��д");

//���x�k֫
	SetChoice03("��װ������","��װ������","��װ������");
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
			ChoiceA03();
			$mc01_021vsb_��xʹ�� = true;
//����װ�����O��"mc01_021vsba.nss"
				$GameName = "mc01_021vsba.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
			$mc01_021vsb_��xʹ�� = true;
//����װ��ؓ�O��"mc01_021vsbb.nss"
				$GameName = "mc01_021vsbb.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
			$mc01_021vsb_��xʹ�� = true;
//����װ���L�F��"mc01_021vsbc.nss"
				$GameName = "mc01_021vsbc.nss";
		}
	}
}


