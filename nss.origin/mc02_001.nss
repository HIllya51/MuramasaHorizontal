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

scene mc02_001.nss_MAIN
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
	#bg078_���`������ʷ�͢_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//������Ԓ�ǚ�������
	//��·�٤򚢺���"mc02_001a.nss"
	//�c��һ���򚢺���"mc02_001b.nss"
	//$GameName = "mc00_001.nss";
	//$SelectGameName="@->"+$GameName+"_SELECT";
	//call_scene $SelectGameName;

	if($�ٚ��� == true){$GameName = "mc02_001a.nss";
	}else if($һ������ == true){$GameName = "mc02_001b.nss";}

}

scene mc02_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_026.nss"

	//$�ٚ��� = true;
	//$һ������ = true;

//���ӣţ������`�󡣥ɥ����ұ����_�����褦��
//�����`������ʷ�͢�L��
	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����20", 100, Center, Middle, "cg/bg/bg078_���`������ʷ�͢_01.jpg");
	CreateColorSP("�\Ļ��", 25001, "BLACK");
	CreateColorSP("��Ļ��", 25000, "WHITE");
	OnSE("se����_����_ߵ��02",1000);

	Delete("�ϱ���");

	DrawDelete("�\Ļ��", 300, 1000, "slide_06_00_0", true);
	SoundPlay("@mbgm34",0,1000,true);
	FadeDelete("��Ļ��", 400, true);

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0010010a07">
�����ڿ�ʼ�����������У���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0010020a07">
�������ˣ���ǰ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0010030a00">
���ǡ���


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("�Ϥ䤢�뤭","se����_����_ľ����ä���i��01_L");
	MusicStart("�Ϥ䤢�뤭",0,1000,0,2000,null,false);
	WaitKey(1500);
	SetVolume("�Ϥ䤢�뤭", 0, 0, null);

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0010040a07">
�����٣���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1800, @0, @50, "cg/st/st���w_ͨ��_�Ʒ�.png");
	Move("@StR*", 300, @0, @-50, Axl3, false);
	OnSE("se�ճ�_��_�����Q��02",1000);
	FadeStR(300,true);

	SetFwC("cg/fw/fw���w_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0010050b56">
��������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0010060a07">
�����ȣ��������״����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0010070b56">
���š�����һ������ն�����
����ɱ������

//�룺������˫�ӣ���091005��
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0010080b56">
��֮�����ֽ����׵�Ϻ��˫��
ɱ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

..//������ָ��
//��С���
//������Ԓ�ǚ�������
//��·�٤򚢺���"mc02_001a.nss"
//�c��һ���򚢺���"mc02_001b.nss"

//���x�k֫���`��
scene mc02_001.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	OnBG(100,"bg078_���`������ʷ�͢_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("��·�٤򚢺�","�c��һ���򚢺�");
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
//��·�٤򚢺���"mc02_001a.nss"
				$GameName = "mc02_001a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�c��һ���򚢺���"mc02_001b.nss"
				$GameName = "mc02_001b.nss";
		}
	}


}


