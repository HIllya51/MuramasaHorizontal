//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004hazure01.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg050_�������Tǰ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	if($md05_���LĿ == true){
			$SelectGameName="@->"+$GameName+"_SELECT02";
			call_scene $SelectGameName;
	}else{
			$SelectGameName="@->"+$GameName+"_SELECT01";
			call_scene $SelectGameName;
	}

}

scene md05_004hazure01.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_004start01.nss"
//ǰ�ե����롡"md05_004yashiki01d.nss"
//ǰ�ե����롡"md05_004saidenn01d.nss"
//ǰ�ե����롡"md05_004byoushitsu01d.nss"
//ǰ�ե����롡"md05_004urayama01d.nss"

//������
//��bg050���y

	SoundPlay("@mbgm30", 0, 1000, true);

	if($md05_�����ݳ�==ture){

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);

//�룺ͬ���ߥե饰�ˤ�äƤ������}�ʤ�����
	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(0,true);

	Delete("�ϱ���");

	}else{

	$md05_�����ݳ�=ture;

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(0,true);

	DrawDelete("�ϱ���", 1000, 1000, "blind_01_00_1", true);
	Wait(1000);
	DrawDelete("�}ɫ�\", 1000, 1000, "blind_01_00_1", true);

	}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������˽��⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���ե饰δ����
//���x�k��Ҋ�룯Ԓ����Ӎ�����ƄӤ���

..//������ָ��
//��Ҋ�롡"md05_004hazure01a.nss"
//��Ԓ����"md05_004hazure01b.nss"
//��Ӎ����"md05_004hazure01c.nss"
//���ƄӤ��롡"md05_004hazure01d.nss"



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���������A
//���x�k��Ҋ�룯Ԓ�����m�࣯�ƄӤ���
//����ͬ���ߤ�������Ϥϡ��m�ࡹ�򡸄e��롹�ˉ��

..//������ָ��
//��Ҋ�롡"md05_004hazure01a.nss"
//��Ԓ����"md05_004hazure01b.nss"
//���m��or�e��롡"md05_004hazure03c.nss"
//���ƄӤ��롡"md05_004hazure01d.nss"



//���x�k֫���`��
//�ե饰δ�����r
scene md05_004hazure01.nss_SELECT01
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice04("�۲�","˵��","ѯ��","�ƶ�");
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
//��Ҋ�롡"md05_004hazure01a.nss"
				$GameName = "md05_004hazure01a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//��Ԓ����"md05_004hazure01b.nss"
				$GameName = "md05_004hazure01b.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//��Ӎ����"md05_004hazure01c.nss"
				$GameName = "md05_004hazure01c.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//���ƄӤ��롡"md05_004hazure01d.nss"
				$GameName = "md05_004hazure01d.nss";
		}
	}
}



//���x�k֫���`��
//�ե饰δ�����r
scene md05_004hazure01.nss_SELECT02
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(0,true);

	FadeDelete("������", 0, true);

	if($ͬ����==""){
		$md05_hazure = "����";
	}else if(!$ͬ����){
		$md05_hazure = "����";
	}else{
		$md05_hazure = "�ֱ�";
	}


//���x�k֫
	SetChoice04("�۲�","˵��", $md05_hazure,"�ƶ�");
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
//��Ҋ�롡"md05_004hazure01a.nss"
				$GameName = "md05_004hazure01a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//��Ԓ����"md05_004hazure01b.nss"
				$GameName = "md05_004hazure01b.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//���m��or�e��롡"md05_004hazure03c.nss"
				$GameName = "md05_004hazure03c.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//���ƄӤ��롡"md05_004hazure01d.nss"
				$GameName = "md05_004hazure01d.nss";
		}
	}
}



