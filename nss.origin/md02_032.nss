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

scene md02_032.nss_MAIN
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
	#bg001_��c_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md02_032.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_031.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg001_��c_03.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm@30", 0, 1000, true);

//���ݸ�

	SetFwC("cg/fw/fw��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//	SetFwC("cg/fw/fw��_ͨ��b.png");
//���⡿
<voice name="��" class="��" src="voice/md02/0320010a14">
����!!��

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0320020a07">
��ι����
���㵽���Ƕ������ĳ���!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 500);


//������
//���x�k���������褦�����ޤˤϤ��������˷��ʤ���
//���ɤ��x��Ǥ�ͬ��

}

..//������ָ��
//�Υե����롡"md02_033.nss"

//���x�k֫���`��
scene md02_032.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 90000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	OnBG(100,"bg008_����_01.jpg");
	FadeBG(0,true);
	StC(500, @0,@0,"cg/rec/stRec_�㿗_�Գ�.png");
	FadeStC(0,true);
	Delete("������");
	FadeDelete("�}ɫ�\", 1000, true);

//	FadeDelete("������", 500, true);


//���x�k֫
	SetChoice03("����ô��","ż��Ҳ�����","ʵ��û�취");
	FadeDelete("������", 300, true);
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
//���������褦
				$GameName = "md02_033.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//�����ޤˤϤ�����
				$GameName = "md02_033.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//���˷��ʤ���
				$GameName = "md02_033.nss";
		}
	}
}