//<continuation number="70">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_031vs.nss_MAIN
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
	#bg070_���ӘS�����A�Υ۩`��_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_032.nss";

}

scene mb02_031vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_030vs.nss"

//�������֣ӳ��
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm10",0,1000,true);//���ߩ`ע��
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg070_���ӘS�����A�Υ۩`��_03.jpg");
	StC(1000, @0, @0,"cg/st/st��霔�_ͨ��_˽��.png");
//	StR(1000, @0, @0,"cg/st/3d�����˜�_����_�i���֟o.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");


	FadeDelete("�}��ܞ", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����һֻ�ֱۻ�סͷ����
������ۡ���߾����ٱ��е�һ�أ�Ҳ�޴󰭡�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/031vs0010b37">
��������


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/031vs0020a00">
���������ˡ�
�������ڼҡ���


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/031vs0030a00">
����������һ�ŵı���̻壬
�������Ը�л����


{	FwR("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/031vs0040b37">
�����ǣ���


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/031vs0050a00">
��<RUBY text="����">��ô</RUBY>����


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/031vs0060a00">
���ʹ����¡���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϵ�������
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXadd("�}��д", 5000);
	Fade("�}��д", 100, 750, Dxl2, false);
	SetVertex("�}��д", 740, 240);
	Zoom("�}��д", 500, 1250, 1250, null, false);
	Wait(100);
	FadeDelete("�}��д", 400, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ѵ�ͬʱ��
��������ƽ������ȡ�

��������ʴ�ԼΪ����޶ȵ�һ�롣
����������ȴ�����Եù�ǿ�����������¡�

�����ҵ�������������
������ǿ�Ƶ��ƽ���ȷ������ȫ��װ��ս�����ѡ�

��Ȼ����ǰ����
��һζ��ǰ��

��û�м��ա�
������̫�����ơ�

��<RUBY text="������������">��Ϊ�Ѿ�����</RUBY>������ʲô�ĸ�������Ҫ��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");

//�����ߣ����L�����}����ᡢ��椨�趨
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -444, "cg/bg/resize/bg070_���ӘS�����A�Υ۩`��_03l.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16200, 0, -120, "cg/st/resize/st��霔�_ͨ��_˽��l.png");
/*
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -344, "cg/bg/resize/bg070_���ӘS�����A�Υ۩`��_03l.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16200, 60, -120, "cg/st/resize/st��霔�_ͨ��_˽��l.png");
*/

	Zoom("�}�ݷ���/�}���}", 0, 500, 500, null, true);
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

//	Move("�}�ݷ���/�}�ݱ���", 60000, @-100, @0, null, false);
//	Move("�}�ݷ���/�}���}", 60000, @-200, @0, null, false);

	Zoom("�}�ݷ���/�}���}", 300, 1000, 1000, Dxl2, false);
	Zoom("�}�ݷ���/�}�ݱ���", 300, 1100, 1100, Dxl2, false);

	Fade("�}ɫ100", 200, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 200, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 200, 1000, null, true);



	SetFwR("cg/fw/fw��霔�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/031vs0070b37">
��̫���ˣ���

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���k�M
//�􄇓�
	CreateSE("SE01a","se���L_����_���ϕN01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 15000, "#FFFFFF");
	CreateColorSP("�}ɫ�\", 1000, "#000000");

	Delete("�}�ݷ���*");
	Delete("�}ɫ100");

	DeleteStA(0,true);
	FadeDelete("�}ɫ��", 600, true);

	CreateSE("SE01b","se���L_����_�����02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_centerin(@0, @0,3000);
	SL_centerinfade2(5);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ƾ�豬������ƽ�����ǰ������
����������ի��׼�ҳ�����˲�䣬�ӳ�һ������Ϯ����

����˵ֻ�ǰѵ�����ֻҪ������λ�����������У�����
�����Դ�������ȫ��ؽڲ�λ���������˵�������
��Ȼ����

����һ��������ֻ��һ��ѡ��
�Ǿ��Ǳ�����׼ͷ����
�������ǲ����ܵġ����е����Ų�λװ�׺�ʵ�����й�
����ƾ������������ߵĴ�ͻҲ�ܱܿ���

�����ԣ���ͷ����
��ֻҪ������ͷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؤ�줿�����Ф��塣
	CreateSE("SE02","se���L_����_���̤���05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 2100, @0, @0, "cg/anime/Center/bloodA_5.png");
	CreateTextureSP("�}��", 2000, @0, @0, "cg/anime/Center/bloodA_5.png");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������ի��������ȷ��׼��Ϊ���Ƶ�������ؽڣ�����
��϶�䣬������Ƥ���⡢����ǡ�
�������ǳ��˰���ַ���
��ѪҺ��־�����ᣬ������̾����ͣ�͡�

����Ȼ�����������ֺ�Ϸ������Ҳ�Ǽ��ޡ�
���̴��������ֵĵ�ʧȥ�����ƣ��Ӵ�ͷ��һ�Ƕ���
���׵�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	Delete("�}ɫ�\");
	Delete("�}��*");
	CreateColorSP("�}ɫ�ല", 100, "#CC0000");
	CreateTextureEXmul("�}�ݱ���", 150, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}�ݱ���", 150, 1000, AxlDxl, false);
	DrawTransition("�}�ݱ���", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0061]
������һ�С�
����ֻ��һζǰ����

���·�Ҫ������һ�������������ƾ�ƽ����ƶ�����
ǰ����
���粿��������ի�ؿڡ�һ˲֮�佫��
�Ƶ���

����֪�����ײ�������������λ�����ĸ��ִ���˿
��ʹ�������Ӵ���˲�䣬���Լ��������嵹�£�ʹ���
�����Ч��
����������ν��

��������λ�����Ѿ����µĵ��ˣ���û�п���һ�ۡ�
��ֱ����ǰ���԰����֮�ơ�һζ��ǰ��

������ǰ·�ߣ��������ڡ�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_032.nss"