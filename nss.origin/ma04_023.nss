//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_023.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma04_023.nss","MURMASAIN_ma04_023",true);

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
	#ev925_Ұ̫����Ƭ_e=true;

	if($���쥤���ɚ��� == true){
	}else{
		SatugaiSystem();
		judgment_of_count();
	}

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($���쥤���ɚ��� == true){
		$PreGameName = $GameName;
		$GameName = "ma04_024.nss";
	}else{
		if($��ȫ����֦���� == true){
			if($���������� == true){
				$PreGameName = $GameName;
				$GameName = "ma04_024.nss";
			}else if($һ������ == true){
				$Next_deadGame = "ma04_024.nss";
				$GameName = "mz01_001.nss";
			}else if($�������� == true){
				$GameName = "mz01_003.nss";
			}
		}else if($��ȫһ������ == true){
			if($���������� == true){
				$PreGameName = $GameName;
				$GameName = "ma04_024.nss";
			}else if($����֦���� == true){
				$Next_deadGame = "ma04_024.nss";
				$GameName = "mz01_002.nss";
			}else if($�������� == true){
				$GameName = "mz01_003.nss";
			}
		}else{
			if($���������� == true){
				$PreGameName = $GameName;
				$GameName = "ma04_024.nss";
			}else if($һ������ == true){
				$Next_deadGame = "ma04_024.nss";
				$GameName = "mz01_001.nss";
			}else if($����֦���� == true){
				$Next_deadGame = "ma04_024.nss";
				$GameName = "mz01_002.nss";
			}else if($�������� == true){
				$GameName = "mz01_003.nss";
			}
		}
	}

}

scene ma04_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_022a.nss"
//ǰ�ե����롡"ma04_022b.nss"

//���x�k��᪡�����
//���w��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15010, "#FFFFFF");
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ݳ�����", 100, -1024, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	Delete("�ϱ���");
	SoundPlay("@mbgm08",0,1000,true);
	CreateSE("SEL01","se���L_����_������01_L");
	CreateTextureSP("�}�ӣ�", 100, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	Request("�}�ӣ�", Smoothing);
	Move("�}�ӣ�", 0, @220, @0, null, true);//��Kλ��
	Move("�}�ӣ�", 0, @1024, @120, null, true);//����λ��
	Zoom("�}�ӣ�", 0, 2000, 2000, null, true);//����Ĥ��ݳ�
	Shake("�}�ӣ�", 360000, 1, 2, 0, 0, 1000, null, false);

	Move("�}�ݳ�����", 24000, @1024, @0, null, false);

	DrawDelete("�}��ܞ", 150, 1000, "slide_01_03_1", true);
	MusicStart("SEL01",0,1000,0,1400,null,true);
	DrawDelete("�}��ܞ", 150, 1000, "slide_01_03_1", true);

//�ץ����ζ��x
	CreateProcess("�д����ǈ��ݳ�", 5000, 0, 0, "MURMASAIN_ma04_023");
	SetAlias("�д����ǈ��ݳ�","�д����ǈ��ݳ�");

//�ץ��������`��
	Request("�д����ǈ��ݳ�", Start);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��׷��

����׸�֨���졣
��ȫ��Ĺؽڶ������ҽ�����

�������ں���
��ֻҪ����һ�λ������̫����������á�

��ֻҪһ������
��������Ĩ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��
	WaitAction("�д����ǈ��ݳ�", null);
	Delete("��*");

	SetVolume("SEL*", 300, 0, null);
	CreateSE("SEP02","se���L_����_��ͻ�M02");
	MusicStart("SEP02",0,1000,0,1200,null,false);
	CreateColorSPadd("�}�ե�", 6000, "#FFFFFF");
	Delete("�}�ӣ�");
	Wait(10);
	Fade("�}�ե�", 900, 0, null, false);
	DrawDelete("�}�ե�", 600, 1000, "slide_05_00_1", true);

//���y�Ǻš����N
	CreateColorSP("�}�\", 1, "#CC0000");
	CreateColorSP("�}�\", 8500, "#000000");
	DrawTransition("�}�\", 200, 0, 1000, 500, null, "cg/data/slide_01_03_0.png", true);
	Delete("�}�ݳ�����");
	CreateTextureSP("�}�ţ�", 100, -328, 0, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02tll.jpg");
	Request("�}�ţ�", Smoothing);
	SetBlur("�}�ţ�", true, 3, 500, 50, false);
	Zoom("�}�ţ�", 0, 2000, 2000, null, true);
	DrawDelete("�}�\", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("�}�ţ�", 600, @0, -1980, DxlAuto, false);
	Zoom("�}�ţ�", 600, 1000, 1000, null, false);
	Wait(600);
	CreateSE("SE04","se���L_����_���ϕN01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("�}�ţ�", 8000, @0, -780, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ÿ졪��
����Զ��

��Ȼ���Ѿ��˲����ˡ�
��ֻҪ�ܿ�����Ĩ��Ӱ��
��ֻҪ�ܿ�����Ĩ��ɫ��

����Ҫ׷��
������׷��

��������˫��򡪡�
������ק�䡪��

���ӿ���
���ӿ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D




if($���쥤���ɚ��� == true){
//if_start

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������������x�k�Ǥ��Τޤޚ���������
	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawTransition("�}��ܞ", 100, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("�}�ţ�", 100, -512, -141, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("�}�ţ�", 300, -615, -196, AxlDxl, false);
	DrawDelete("�}��ܞ", 100, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma04/0230010a00">
����Ҳһ����
����ҲҪɱ����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0230020a00">
����ҲҪɱ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}else{
//else_start


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�������`������`�ȤΈ���

	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawTransition("�}��ܞ", 100, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("�}�ţ�", 100, -512, -141, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("�}�ţ�", 300, -615, -196, AxlDxl, false);
	DrawDelete("�}��ܞ", 100, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma04/0230030a00">
�����Ǻš���
����Ҫ����ն�䣡��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}
//if_end




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���⡿
<voice name="��" class="��" src="voice/ma04/0230040a14">
���ܺá�
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������Ѿ����ңԶ��
���ɲ�֪Ϊ������������������ȴ�������ڶ��ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���⡿
<voice name="��" class="��" src="voice/ma04/0230050a14">
��������������
������ؿ�������

//���⡿
<voice name="��" class="��" src="voice/ma04/0230060a14">
�������������д����ҵ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���춥���������財�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���⡿
<voice name="��" class="��" src="voice/ma04/0230070a14">
��������ʱ����
�����ܽ���������֮������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ɫװ����ʧ�ˡ�
��һ˲�䡪������һ˲�䡪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ˡ���Ԫ�����¤��������쥤��`�ؤͤǣ�

	PrintGO("�ϱ���", 20000);

	CreateTextureEX("�}�ӣ�100", 1100, Center, Middle, "cg/st/resize/st��_ͨ��_˽��_l.png");
	CreateStencil("�ޥ�����",1110,center,Middle,128,"cg/st/resize/st��_ͨ��_˽��_l.png",false);
	SetAlias("�ޥ�����","�ޥ�����");
	CreateColor("�ޥ�����/ɫ��", 1120, 0, 0, 1024, 576, "BLACK");

	Move("�}�ӣ�100", 0, @200, @200, null, true);
	Move("�ޥ�����", 0, @200, @200, null, true);
	DrawTransition("�ޥ�����/ɫ��", 0, 0, 500, 100, null, "cg/data/slide_02_00_0.png", true);


	Fade("�ޥ�����/ɫ��", 300, 1000, null, false);
	Fade("�}�ӣ�100", 300, 800, null, true);

	CreateTextureSP("�}����100", 100, Center, -576, "cg/bg/resize/bg001_��c_03l.jpg");

	OnSE("se����_�z_װ��04",1000);


	FadeDelete("�ϱ���", 500, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma04/0230080a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�Bĸ
//��������ݳ������륷�`��������m����
	OnSE("se�M��_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 15000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}���뱳��", 6100, Center, Middle, "cg/ev/ev008_���Ӥ򱧤���Ů.jpg");

	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 300, 400, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��
����������������������������

��
������������������������Լ����

��
�����������������������⺢�ӡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(500);

	Fade("�}��ܞ", 400, 1000, null, true);
	Delete("�}�ӣ�100");
	Delete("�ޥ���*");
	Delete("�}����*");
	DeleteStA(0,true);
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma04/0230090a00">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš���픤�
	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}�\", 5500, "#000000");
	CreateTextureSP("�}�ţ�", 100, Center, -794, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02tll.jpg");
	Move("�}�ţ�", 0, @200, @0, null, true);
	Rotate("�}�ţ�", 0, @0, @180, @0, null,true);
	Request("�}�ţ�", Smoothing);
	CreateSE("SE02","se���L_����_���ϕN01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 200, 1000, "slide_02_01_1", true);
	Move("�}�ţ�", 400, @0, -834, Dxl2, false);
	DrawDelete("�}�\", 200, 1000, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����ɫ����Ӱ��������յľ�ͷ��
���Ѿ��������޷�������

��Ψ�Ҷ�������硣��֮���
������������Ů�����ŵؾ������¡�

���������ߣ��̸�һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE05","se���L_����_��ͻ�M02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ţƣ�", 2000, -420, -276, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_am.jpg");
	Move("�}�ţƣ�", 200, -353, @0, null, false);
	Fade("�}�ţƣ�", 300, 1000, null, false);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���⡿
<voice name="��" class="��" src="voice/ma04/0230100a14">
����Ұ������ս��֮���¹���Ƭ��������

//���⡿
<voice name="��" class="��" src="voice/ma04/0230110a14">
������׹�䡪������С���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�������󡤥쥤�ǥ��Х�
//�����˥ᤫ��
//��������ݳ������˥᣿��

	SetVolume("@mbgm*", 500, 0, null);

	MovieSESet(20000,"mvС����_c","se����_mv��_С����_c");

	MovieSEStart(2000);
	CreateColorSPadd("�}��", 15000, "#FFFFFF");
	Delete("�}�ţƣ�");


	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/resize/bg042_���΍u�ذ�_03_ex01.jpg");
	CreateTextureSP("�}����200", 10000, Center, Middle, "cg/bg/resize/bg042_���΍u�ذ�_03_ex02.png");

	Request("�}����100", Smoothing);
	Request("�}����200", Smoothing);

	Zoom("�}����100", 0, 600, 600, null, true);
	Zoom("�}����200", 0, 600, 600, null, true);

	CreateTextureEXadd("�}ef200", 2000, -55, -678, "cg/ef/resize/ef020_����ͻ؞02tl.jpg");
	CreateTextureEXadd("�}ef300", 2000, 313, -1103, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02t2l.jpg");
	CreateColorEXadd("��Ļ��", 11000, "White");
	CreateColorEXmul("��Ļ��", 5000, "Black");

	Request("�}ef200", Smoothing);
	Request("�}ef300", Smoothing);

	Rotate("�}ef200", 0, @0, @0, @+30, null,true);
	Rotate("�}ef300", 0, @0, @0, @+30, null,true);

	CreateSE("SE01","se���L_����_��ͻ�M07");
	CreateSE("SE02","se���L_����_��ͻ�M08");
	CreateSE("SE03","se���L_�n��_���Ľ��e01");
	CreateSE("SE04","se���L_�Ɖ�_���k09");


	WaitKey(600);

	FadeDelete("�}��", 500, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ef200", 0, 1000, null, false);
	DrawTransition("�}ef200", 300, 0, 1000, 100, null, "cg/data/slide_04_00_1.png", false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}ef300", 0, 1000, null, false);
	DrawTransition("�}ef300", 500, 0, 1000, 100, null, "cg/data/slide_04_00_0.png", false);

	Wait(200);

	DrawTransition("�}ef200", 600, 1000, 0, 100, null, "cg/data/slide_04_00_0.png", false);
	DrawTransition("�}ef300", 600, 1000, 0, 100, null, "cg/data/slide_04_00_1.png", false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("��Ļ��", 0, 1000, null, false);
	DrawTransition("��Ļ��", 300, 0, 500, 100, null, "cg/data/zzex_Slide_01_05_00.png", true);

	Fade("��Ļ��", 300, 0, null, false);
	DrawTransition("��Ļ��", 300, 600, 0, 100, Dxl1, "cg/data/zzex_Slide_01_05_00.png", false);

	Wait(500);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("��Ļ��", 0, 1000, null, false);
	DrawTransition("��Ļ��", 500, 0, 1000, 100, Dxl1, "cg/data/zzex_Slide_01_05_00.png", true);

	Delete("�}ef200");
	Delete("�}ef300");
	Delete("��Ļ��");

	Shake("�}����200", 3000, 3, 1, 0, 0, 1000, null, false);
	Fade("��Ļ��", 5000, 0, null, false);

	Wait(3000);

	SetVolume("SE*", 2000, 0, null);

	CreateVOICE("�������","ma04/0230120a13");
	MusicStart("�������",0,1000,0,1000,null,false);

		$ma04_VoiceTime=RemainTime("�������");
		WaitKey($ma04_VoiceTime);

	CreateVOICE("�������","ma04/0230130a13");
	MusicStart("�������",0,1000,0,1000,null,false);


		$ma04_VoiceTime=RemainTime("�������");
		WaitKey($ma04_VoiceTime);

//���ãǣ��h�����l���Ϥ���त�ǣ֣��l���¤���y����
//�����ɩ`�󡣼�ͻ
//����ͻ�β���
//������������ޤ���
//���ɤ��������΍u�����ζ��¤���դ�Ҋ�Ϥ��륦����ս���
/*
	CreateTextureSP("�}�ţ�54", 5100, Center, Middle, "cg/ev/ev125_�դ�Ҋ�Ϥ��륦����ս���_d.jpg");
	CreateTextureSP("�}�ţ�53", 5100, Center, Middle, "cg/ev/ev125_�դ�Ҋ�Ϥ��륦����ս���_c.jpg");
	CreateTextureSP("�}�ţ�52", 5100, Center, Middle, "cg/ev/ev125_�դ�Ҋ�Ϥ��륦����ս���_b.jpg");
	CreateTextureSP("�}�ţ�51", 5100, Center, Middle, "cg/ev/ev125_�դ�Ҋ�Ϥ��륦����ս���_a.jpg");
	FadeDelete("�}��", 1000, true);
	WaitKey(1000);
	FadeDelete("�}�ţ�51", 1000, true);
	WaitKey(1000);
	FadeDelete("�}�ţ�52", 1000, true);
	WaitKey(1000);
	FadeDelete("�}�ţ�53", 1000, true);
	WaitKey(1000);
*/

/*
//���ܥ����Τߡ��ƥ����ȱ�ʾ�o��
	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������ա�
<voice name="�������" class="�������" src="voice/ma04/0230120a13">
����������������������

//��������ա�
<voice name="�������" class="�������" src="voice/ma04/0230130a13">
��ʤ�����ꡭ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/


	ClearWaitAll(3000, 2000);

//����x
//��Ұ̫����Ä��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg041_Ƭ������_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
//�������SE��������������`�ס�
	CreateSE("SEL01","se��Ȼ_ˮ_�����01_L");//���ߩ`ע��
	MusicStart("SEL01",1600,1000,0,1000,null,true);
	WaitKey(2000);
	FadeDelete("�}��ܞ", 2000, true);
	WaitKey(2000);

	SetVolume("SEL*", 1000, 600, null);
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	WaitKey(100);
	CreateTextureSP("�}�ţ�", 3100, Center, Middle, "cg/ev/ev925_Ұ̫����Ƭ_e.jpg");
	FadeDelete("�}�ե�", 600, true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="��������" src="voice/ma04/0230140a01">
����������
��Ұ̫����һ���֡������֡���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0230150a00">
���š�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����äȡ�
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	Delete("�}�ţ�*");
	WaitKey(100);
	SetVolume("SEL*", 2000, 1000, null);
	FadeDelete("�}�ե�", 600, false);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0175]
//��������
<voice name="����" class="����" src="voice/ma04/0230160a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0230170a01">
��������������

//��������
<voice name="����" class="��������" src="voice/ma04/0230180a01">
���㡭��
������ܴ�����Ǻ��𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0230190a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0230200a00">
�������Ļ�����
���������С�����

//��������
<voice name="����" class="����" src="voice/ma04/0230210a00">
������һ��Ҫȥ�����С�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������á�ϥ��Ĥ���
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

//���Ф�������롣
	CreateSE("SE02","se���L_�n��_�zܞ��03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreatePlainSP("�}����", 1000);
	FadeFR2("�}����",0,1000,200,0,0,16,DxlAuto, false);
	WaitPlay("SE02", null);

//����ä���ե��`�ɥ�����
	ClearWaitAll(3000, 0);

//�����쥤���ɤ򚢤��Ƥʤ����Ϥϥҥ��󚢺��I��

..//������ָ��
//�Υե����롡"ma04_023.nss"


}



//����������������������������������������������



.//�ץ�����======================================================

..//�����ǈ��ݳ�
function MURMASAIN_ma04_023()
{
	CreateSound("SEP01", SE, "sound/se/se���L_����_��ͻ�M02");
	SetVolume("SEP01", 0, 0, NULL);
	SetAlias("SEP01", "SEP01");

	Request("SEP01", "Play");
	SetVolume("SEP01", 0, 1000, null);
	Request("SEP01", Disused);

	Move("@�}�ӣ�", 600, @-1024, @-120, Dxl2, true);//���楤��
	Move("@�}�ӣ�", 400, @80, @0, null, true);//�٤�����
	Wait(300);

	CreateSound("SEP02", SE, "sound/se/se���L_����_��ͻ�M01");
	SetVolume("SEP02", 0, 0, NULL);
	SetAlias("SEP02", "SEP02");

	Request("SEP02", "Play");
	SetVolume("SEP02", 0, 1000, null);
	Request("SEP02", Disused);

	CreateColor("�}�ե�", 6000, 0, 0, 1024, 576, "#FFFFFF");
	Request("�}�ե�", AddRender);
	SetAlias("�}�ե�", "�}�ե�");

	Move("@�}�ӣ�", 0, @-80, @0, null, true);//���˷֑���
	Move("@�}�ӣ�", 0, @-2400, @0, DxlAuto, true);//һ�Ȼ������
	Wait(10);
	Fade("�}�ե�", 900, 0, null, false);
	DrawTransition("�}�ե�", 600, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", true);
	Request("�}�ե�", UnLock);
	Request("�}�ե�", Disused);

	Wait(1200);
	Zoom("@�}�ӣ�", 0, 1000, 1000, null, true);
	Move("@�}�ӣ�", 1600, @2400, @0, DxlAuto, true);
}



