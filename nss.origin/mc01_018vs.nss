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

scene mc01_018vs.nss_MAIN
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
	//��"mc01_010vscb.nss"�ˤ�Ҋ�Ф�ե饰��������ϡ�"mc01_018vsa.nss"
	//�Υե����롡"mc01_019vs.nss"
	//$GameName = "mc00_001.nss";

//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;


	if($mc01_010vscb_���uҊ�Ф�==true){
		$GameName = "mc01_018vsa.nss";
	}else{
		$GameName = "mc01_019vs.nss";
	}


}

scene mc01_018vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_017vs.nss"

//������������
//���֣ӥ��å������`���

//��������ݳ���������P���m���ˑ��L�ݳ���줿���ʤ���ϣ����

	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_��ꪏ���02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#FFFFFF");
	CreateTextureSP("�}��", 3000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	CreateSE("SEL01","se���L_����_���Б��L��_L");
	MusicStart("SEL01",3000,1000,0,1250,null,true);
	Delete("�ϱ���");
	FadeDelete("�}ɫ�\", 1000, true);

	SoundPlay("@mbgm10",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc01/018vs0010a00">
��������Ȼ�����а�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/018vs0020a01">
���˾Ų���ʮ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����ս�˼����غϺ�ó����ۣ��ҵ���š�
�������ƺ�Ҳ����ͬ��������ۡ�

�������ֱ���Գ�Ϊ���������Ƽ���Ϊ�����������
���������ı�����ͻ�������߶���ͬѰ�������͡�
����һ���侲�۲�ͻᷢ�֣�ͳ����Щ��ս������ȴ
��Ϊ׾�ӡ�

��ս����ʹ�ó����������������¿���֮�⣬�ƺ�û
ʲô���ɿ��ԡ�
����Ȼ���м������֮�������˼��֣�����Ϊһ����
�ߣ�����ͣ�������ԳƵ��϶���һ��ĳ̶ȡ�

���������������Ǹ����С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 300, 0, null);

//����������
	PrintGO("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_��ͻ�M02");

	CreateWindow("�}����", 19000, 0, 0, 1024, 288, false);
	SetAlias("�}����","�}����");
	CreateColorSP("�}����/�}��ɫ", 19010, "#CC0000");
	CreateTextureSPmul("�}����/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	CreateTextureSP("�}����/�}�����}װ��", 19100, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	Move("�}����/�}�����}װ��", 0, @308, @-80, null, true);

	CreateWindow("�}����", 19000, 0, 288, 1024, 288, false);
	SetAlias("�}����","�}����");
	CreateColorSP("�}����/�}��ɫ", 19010, "#336600");
	CreateTextureSPmul("�}����/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");

	CreateTextureSP("�}����/�}�����}װ��", 19100, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");
	Move("�}����/�}�����}װ��", 0, @-390, @200, null, true);

	Request("�}��*", Smoothing);

	MusicStart("SE01",0,750,0,1000,null,false);

	Move("�}����/�}�����}װ��", 450, @-60, @0, Dxl2, false);
	Move("�}����/�}�����}װ��", 450, @60, @0, Dxl2, false);
	FadeDelete("�ϱ���", 300, true);

	SetFwC("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/018vs0030b33">
��������������Ǳ���ġ�������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������һ��������Ϯ���Ĺ�����
�������Ѿ����������Σ���ʵ��������Ȼ������Щη
����

��������������ս���ķ�ʽ����������Ȼ���޼��ɿ�
�ԡ�
���Ҽ�����Ϊ����һ���ضϵ������ںü��ƣ�Ȼ��ȴ
��ȫû�п��Ա���Ϊ�����ļ��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��С���

}

..//������ָ��
//��"mc01_010vscb.nss"�ˤ�Ҋ�Ф�ե饰��������ϡ�"mc01_018vsa.nss"
//�Υե����롡"mc01_019vs.nss"

//���x�k֫���`��
scene mc01_018vs.nss_SELECT
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
	SetChoice02("Ҋ�Ф�ե饰����","ͨ��");
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
//��"mc01_010vscb.nss"�ˤ�Ҋ�Ф�ե饰��������ϡ�"mc01_018vsa.nss"
				$GameName = "mc01_018vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�Υե����롡"mc01_019vs.nss"
				$GameName = "mc01_019vs.nss";
		}
	}
}


