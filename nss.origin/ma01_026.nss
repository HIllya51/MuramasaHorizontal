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

scene ma01_026.nss_MAIN
{

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//��ϣ�
	$express_log=#SYSTEM_skip_express;
	$skip_log=$SYSTEM_skip;
	$auto_log=$SYSTEM_text_auto;

	$SYSTEM_skip=false;
	$SYSTEM_text_auto=false;

	if(#SYSTEM_break_play_movie){MoviePlay("dx/mvOP.ngs", true);}
	else{MoviePlay("dx/mvOP.ngs", false);}

	if(#keep_auto_and_skip){
		if($express_log){
			#SYSTEM_skip_express=$express_log;
		}

		if($skip_log){
			$SYSTEM_skip=true;
		}else if($auto_log){
			$SYSTEM_text_auto=true;
		}
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg002_��a_03=true;
	#bg010_���������Q_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
//�룺�ե饰
	#һ�¥��ꥢ = true;
	#msong01=true;

	$PreGameName = $GameName;

	$GameName = "ma02_001.nss";

}

scene ma01_026.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_025.nss"


//��ҹ��
//���v�|������
//���`�}���L�Ⱦ���



	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����5000", 5000, Center, Middle, "cg/bg/bg002_��a_03.jpg");
	CreateTextureSP("�}����20", 20, Center, Middle, "cg/bg/bg010_���������Q_03.jpg");

	StL(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);
	FadeStR(0,true);

	FadeDelete("�ϱ���", 1000, true);

	WaitKey(1000);

	FadeDelete("�}����5000", 1000, true);


	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����L��
<voice name="���L" class="���L" src="voice/ma01/0260010a11">
������������
������ɱ���崨��������۷ɣ�
�����������������

//��������á����V���줫����
{	OnSE("se�ճ�_��_���V������",1000);
	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma01/0260020a11">
�����������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0260030a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 10, "#000000");

	FadeDelete("�ϱ���", 2000, true);

	WaitKey(1000);

//�����������ȹ���һ�֤��ı�ʾ���뤫��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(50);}
¡<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(50);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(50);}
һ<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(50);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(50);}
һ<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(50);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(50);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(50);}
һ<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(50);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(50);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`�����å���01",1000);}
��

��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);}
δ<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`�����å���01",1000);}
��

��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`�����å���01",1000);}
��

��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);}
ɱ<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
ʮ<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`�����å���01",1000);}
��

��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
һ<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
Ϊ<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
ɱ<?>
{OnSE("se�ճ�_��_�����ץ饤���`���`������01",1000);
WaitKey(100);}
��<?>
{OnSE("se�ճ�_��_�����ץ饤���`�����å���01",1000);}
��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ƥ�åף�
//���������Ӣ�ۤ����Z�ǤϤʤ���
//����Ӣ�ۤ�־���ߤϟo�äǤ��롣

	Wait(2000);

	CreateColorSP("�}�\��", 10000, "#000000");

	CreateColorSP("�}�\��", 150, "#000000");
	Move("�}�\��", 0, -512, @0, null, true);

	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/tp_��һ��ĩβ.png");
	Zoom("�}�ƥ�", 0, 700, 700, null, true);
	Request("�}�ƥ�", Smoothing);

	FadeDelete("�}�\��", 2000, true);

	WaitKey(2000);

	FadeDelete("�}�\��", 1000, true);

	WaitKey(4000);

	CreateTextureEX("�}�ƥ�", 100, 300, Middle, "cg/sys/Telop/lg_��һ��.png");
	Fade("�}�ƥ�", 1000, 1000, null, true);

	Wait(1000);

	CreateTextureEX("�}�ƥ�", 100, 300, Middle, "cg/sys/Telop/lg_��һ����.png");
	Fade("�}�ƥ�", 1000, 1000, null, true);

	WaitKey(3000);

	ClearWaitAll(1000, 1000);


//����һԒ����
//���ϣХ�`�ө`

..//������ָ��
//�Υե����롡"ma02_001.nss"

}


//������������������������������������������������

/*�룺�˱ܤ��ޤ���������������������������������������

������Ԓ�åܥ���
//��٩`��������������ϡ�ex���ե�����˸�{
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ex/0010010b57">
�������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ex/0010020b57">
������ɱ�ģ���

//�����w��
<voice name="���w" class="���w" src="voice/ex/0010030b56">
�������

//�����w��
<voice name="���w" class="���w" src="voice/ex/0010040b56">
����ɱ�ģ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

������������������������������������������������������*/

