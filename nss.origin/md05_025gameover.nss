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

scene md05_025gameover.nss_MAIN
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

scene md05_025gameover.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_025.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 100, "BLACK");

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");

	CreateSE("SEL01","se����_냇��_���ɤ��ɤ�_L");
	MusicStart("SEL01",500,500,0,1000,null,true);

	FadeDelete("�ϱ���",500,true);

//���`��

	SetFwC("cg/fw/fw��������_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������������
<voice name="��������" class="��������" src="voice/md05/025ga0010a15">
�����ԡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/025ga0020a01">
��������������������

{	FwC("cg/fw/fw��������_��Ц.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/025ga0030a15">
�����ĩ·��Ӧ�ڴˣ�Ů�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������˝�����롣�����`��
//�����`�४�`�Щ`

	SetVolume("SEL01", 3000, 1000, null);

	CreateColorEX("�}ɫ100", 15000, "Black");

	Request("�}����100", Smoothing);
	SetBlur("�}����100", true, 3, 500, 100, false);

	Zoom("�}����100", 4000, 2000, 2000, null, false);
	Fade("�}ɫ100", 0, 1000, null, false);
	DrawTransition("�}ɫ100", 3000, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	SetVolume("SEL01", 3000, 0, null);

	WaitKey(1000);

	SetVolume("SEL01", 500, 0, null);

	CreateSE("SE01","se���L_�Ɖ�_�y�Ǻ��Ɖ�");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(3000);
	SetVolume("SE01", 1000, 0, null);

	ClearFadeAll(1000, true);
	CreateColorSP("�}ɫ100", 1500, "Black");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ٴ���ս��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����룯���ʤ�
//�����ʤ��������ȥ��

}

..//������ָ��
//���롡"md05_025gameovera.nss"
//���ʤ�



//���x�k֫���`��
scene md05_025gameover.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	CreateColorSP("�\", 100, "BLACK");


	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("��ս","����ս");
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
//���롡"md05_025gameovera.nss"
				if($����ꇺ��ץե饰==true){$GameName = "md05_025.nss";}
				else{$GameName = "md05_025gameovera.nss";}
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���ʤ�
			$GameName = "mz00_000.nss";
		}
	}
}



