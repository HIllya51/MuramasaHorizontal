//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_035.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_035.nss","power",true);
	

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
	#bg073_��d_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_036.nss";

}

scene md05_035.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_034.nss"


//������
//�������������ġ�bg073d


	PrintBG("�ϱ���", 30000);

	//ͽ�i��ǰ�Υե����뤫��ο������v�S��BGM���
	SoundPlay("@mbgm14", 0, 1000, true);

	CreateSE("������", "se����_������_���݅���_L");
	MusicStart("������", 0, 1000, 0, 1000, null,true);
	OnBG(100, "bg073_��d_02.jpg");
	FadeBG(0, true);
	CreateProcess("�ץ�����", 12000, 0, 0, "power");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����",Start);

	CreatePlainEX("�}��д", 100);
	Fade("�}��д", 0, 800, null, true);
	Shake("�}��д", 1000000, 1, 2, 0, 0, 1000, DxlAuto, false);

	CreateTextureEX("�����󺣥��ڥ����", 2100, Center, Middle, "cg/bg/bg073_��d_02.jpg");
	Zoom("�����󺣥��ڥ����", 0, 1100, 1100, null, true);

$��`�ץ�`�֥ʥå��� = "@�����󺣥��ڥ����";
$��`�ץ�`�֥����� = 20000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);

	Fade("�����󺣥��ڥ����", 0, 800, null, true);
	Shake("�����󺣥��ڥ����", 1000000, 1, 2, 0, 0, 1000, DxlAuto, false);



	DrawDelete("�ϱ���", 500, 500, "slide_02_01_0", true);

	SetVolume("������", 5000, 500, null);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����沨�������

����Ϊ����˰ɡ�
�����ԡ���

���ڻζ��Ĳ��Ǻ�ˮ��
�������������

����ҡ����������յĲ�����

��������ۺ����Ӵ�ĳ�����
�����ŵ���

��������������

�������Ϯ��������һ����
�������ң������������Ҳһ���ᴩ��

��������ǹ�������һ��������ˡ�

������������ֹ��

�������ɱ��Ҳ������ֹ��

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/0350010a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���µ�����Ҳ��������롣

���Ⲣû�д�
�������κ�����ô˵��Ҳ���Բ��ǹ�Ĵ�

����ֻ������̫��ִ�ֵ�һ���Ρ�

����ô����������˭��

�����ǿ���ʼ�������ڴ���ֹ�����ˡ�
������������˭֮���أ�

���Զ�������

���ն���Ң��

���ն�ͳ��

������
�������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(500);

//�����㤭��
//���ţ֣��ۤ줿Ұ̫����Ƭ�֤ǘ��������
	SetVolume("SE*", 2000, 0, null);
	SetVolume("������", 2000, 0, null);


	OnSE("se�M��_냇��_�i��01", 1000);

	CreateTextureEX("�}����100", 3000, Center, Middle, "cg/ev/ev255_Ұ̫���򘋤������_a.jpg");
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetBlur("�}����100", true, 2, 500, 100, false);


	Zoom("�}����100", 1500, 1000, 1000, Dxl2, false);
	Fade("�}����100", 500, 1000, null, true);

	Wait(2500);

	CreateColorSP("�\Ļ��", 10000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 500, null, "cg/data/slide_04_00_0.png", true);

	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("�����󺣥��ڥ����");



}

..//������ָ��
//�Υե����롡"md05_036.nss"


function power()
{

	CreateColor("�٤����", 3500, 0, 0, 1024, 576, "#c46c3e");
	SetAlias("�٤����","�٤����");
	Request("�٤����", AddRender);
	Fade("�٤����", 0, 0, null, false);
//	DrawTransition("�٤����", 0, 200, 200, 990, null, "cg/data/circle_01_00_0.png", true);


	begin:

	while(1)
	{
	Fade("�٤����",150,200,null,true);
	Fade("�٤����",200,150,null,true);
	Fade("�٤����",180,230,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,190,null,true);
	Fade("�٤����",200,150,null,true);

	Fade("�٤����",150,230,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,170,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,200,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,170,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",100,280,null,true);
	Fade("�٤����",350,150,null,true);
	Fade("�٤����",100,240,null,true);
	Fade("�٤����",150,120,null,true);
	Fade("�٤����",200,220,null,true);
	Fade("�٤����",170,100,null,true);

	Fade("�٤����",150,120,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",100,240,null,true);
	Fade("�٤����",140,140,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,130,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,130,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,120,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,120,null,true);
	Fade("�٤����",400,90,null,true);
	Fade("�٤����",180,110,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,130,null,true);
	Fade("�٤����",200,90,null,true);

	}


}
