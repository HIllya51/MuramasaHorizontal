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

	$TITLE_NOW=" ����������Ӣ��ƪ���������� ";

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg014_�`�}���A��_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//�룺���˱�ʾ�����Τǡ��ǥХå���`�Ɍgװ�ޤǽ�����ޤ���
	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//������֦����Έ��ϡ�"mb01_002a.nss"
	//���������⡡"mb01_003.nss"
	//$GameName = "mb01_002a.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	if($����֦���� == true){
		$GameName = "mb01_003_1.nss";
	}else{
		$GameName = "mb01_002a.nss";
	}


}

scene mb01_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_001.nss"

//���`�}��ҹ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg014_�`�}���A��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm33",0,1000,true);

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	StL(1000, @0, @0,"cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0020010a02">
�����������ܡ���


{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mb01/0020020a12">
���١�����


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0020030a02">
�������ܡ������ܡ������ܡ�����
����˵�Ǹ�����������˶�ɱ!?��


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0020040a02">
������һ��Ȼ���ſں�˵������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mb01/0020050a12">
�������ȥ�ʰ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0020060a02">
��ʲô����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mb01/0020070a12">
��ȥ�������˰��������
���Ǽһ�һ���������ѡ�����


//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mb01/0020080a12">
���������������ȥ�����������������룬��
�š�
��������ʵ�ش�ġ�����

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0020090a02">
������������


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mb01/0020100a12">
���٣��١���
���ٺٺٺٺٺٺٺٺ١�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(3000, 2000);

//���ƥ�åף�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}�\��", 10000, "#000000");
	CreateColorSP("�}�\��", 150, "#000000");
	Move("�}�\��", 0, -512, @0, null, true);
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/tp_Ӣ�۾�����.png");
	Zoom("�}�ƥ�", 0, 700, 700, null, true);
	Request("�}�ƥ�", Smoothing);
	Delete("�ϱ���");
	FadeDelete("�}�\��", 2000, true);

	WaitKey(2000);
	FadeDelete("�}�\��", 1000, true);

	WaitKey(3000);
	ClearWaitAll(3000, 2000);

/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���Ⲣ��Ӣ�۵Ĺ��¡�

����Ӣ���Իή�١�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//�������ȥ룺װ�א��������Ӣ�۾�

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}�ƥ�", 20000, Center, Middle, "cg/sys/Telop/lg_Ӣ�۾�.png");
	FadeDelete("�ϱ���", 2000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

}


..//������ָ��
//���ե饰���
//������֦����Έ��ϡ�"mb01_002a.nss"
//���������⡡"mb01_003.nss"


//���x�k֫���`��
scene mb01_002.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("����֦����Έ���","��������");
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
//������֦����Έ��ϡ�"mb01_002a.nss"
				$GameName = "mb01_002a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���������⡡"mb01_003.nss"
				$GameName = "mb01_003.nss";
		}
	}
}