//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_028.nss_MAIN
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
	#ev953_�o��װ��_a=true;
	#ev953_�o��װ��_b=true;
	#bg096_��ᦌm�����ҿ�_01a=true;
	#bg032_��ᦌm�������a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_����=true;

	$PreGameName = $GameName;

	$GameName = "md01_029vs.nss";

}

scene md01_028.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_027.nss"

//���P�С��R
	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg096_��ᦌm�����ҿ�_01a.jpg");
	CreateSE("SE01","se���L_����_�z_�ŵ�02");
	StC(1000, @0, @0,"cg/st/st�o��_ͨ��_˽��.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 1000, true);

	SetNwL("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md01/0280010a01">
��!!��

{	FwL("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0280020a05">
��Դ��֮���������ӱ�֮Ѫ�������ѹ���
�����������ȡ���׼���������Ʒ������֮��
������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�ϣ��P�С�װ�ץ��������
	CreateSE("SE00","se����_����_���S03");
	CreateSE("SE00a","se����_�z_װ��04");
	MusicStart("SE00",0,1000,0,1000,null,false);
	MusicStart("SE00a",0,1000,0,1000,null,false);
	CreateTextureEXadd("�}�ţ���", 4110, Center, InBottom, "cg/ev/resize/ev953_�o��װ��_al.jpg");
	CreateTextureEX("�}�ţ�", 4100, Center, InBottom, "cg/ev/resize/ev953_�o��װ��_al.jpg");
	SetVertex("�}�ţ�*", center, bottom);
	Request("�}�ţ�*", Smoothing);
	SetBlur("�}�ţ���", true, 2, 500, 180, false);

	Zoom("�}�ţ�*", 600, 510, 510, Dxl3, false);
	Fade("�}�ţ�*", 300, 1000, null, true);
	FadeDelete("�}�ţ���", 300, true);

	SetFwL("cg/fw/fw�o��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0280030a05">
�����������ᦴ�������
���ཫ����֮��!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ��
//�����ߡ��P��
	#av_����=true;

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);

	CreateTextureSP("�}�ţ�", 4100, Center, Middle, "cg/ev/ev953_�o��װ��_b.jpg");

	FadeDelete("�}�ե�", 1000, true);

	SetNwL("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md01/0280040a01">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������·���ˡ�
�������Ǵ��Ҹ�����˵�����Ƕ�����˵��

���ҵ������Ȼ��¶��
������ô�������뿪���ͻ�������֮�������Ϊ
֮����

���������ˡ�
��ֻ����������

�����������ϡ���նɱ!!

��Ȼ�󡪡�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("SE*", 100, 0, null);
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}����", 8000, Center, Middle, "cg/bg/bg032_��ᦌm�������a_01.jpg");
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 300, 100, null, true);

	SetFwC("cg/fw/fw���L_�䅗.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����L��
<voice name="���L" class="���L" src="voice/md01/0280050a11">
����ʱ��ɱ�Ұɡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0280060a11">
�����԰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("�}��ܞ", 400, 1000, null, true);
	Delete("�}����*");
	FadeDelete("�}��ܞ", 600, true);

	SetNwL("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md01/0280070a00">
��������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Фá�װ���Ѥ�����
//�������ȴ������Խ������ʹ��
	CreateSE("SE01","se����_����_�����p��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}�ţ�*");
	DeleteStA(0,true);
	DrawDelete("�\Ļ��", 150, 100, "slide_01_03_1", true);

	StR(1000, @30, @0,"cg/st/st����_ͨ��_˽��.png");
	StL(1000, @30, @0,"cg/st/st����_ͨ��_˽��.png");
	Move("@StR*", 300, @-30, @0, null, false);
	FadeStR(300,false);

	WaitKey(200);

	Move("@StL*", 300, @-30, @0, null, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0280080a05">
����ΪϺ��֮Ů����
���Է��β�֮�����

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0280090a05">
�����˿�����������Σ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0280100a01">
���⻹�����𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0280110a01">
�����Ǹ������Ľ��С���
������֮���У�̫����������

{	FwC("cg/fw/fw����_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0280120a05">
��������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0280130a00">
��������

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0280140a01">
������ι��������
���Ȳ�˵�Ǳߣ�Ϊʲô����Ҳ¶�����ֱ��飬
������˵�����Ů����˵ʲô����������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0280150a00">
��������Ǹ��
��������������ӣ������ڻ��޷�˳�����ܡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0280160a01">
������˵��Щ�㲻���Ļ��ˡ�
�����ɣ�װ��֮�ƣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������r�ġ�֩����ֽ⣿
	SoundPlay("@mbgm04",0,1000,true);
	CreateSE("SE02","se����_�z_װ��04");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StL(1000, @0, @160,"cg/st/3d����֩��_����.png");
	FadeStL(0,true);
	FadeDelete("�}�ե�", 300, true);

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0280170a05">
��ʲ����ʲô?!��

{	CreateSE("SE02b","se����_�z_װ��03");
	MusicStart("SE02b",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 100, 1000, null, true);
	DeleteStL(0,true);
	FadeDelete("�}�ե�", 300, false);}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0280180a05">
���ǽ���?!
���ꡪ������Ϊ����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ��������
	CreatePlainSP("�}�ݰ�", 3000);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��a.png");
	FadeStR(0,true);
	FadeDelete("�}�ݰ�", 300, true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md01/0280190a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ��������
	CreatePlainSP("�}�ݰ�", 3000);
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStR(0,true);
	FadeDelete("�}�ݰ�", 300, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md01/0280200a00">
������֮�������ڴˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ����`��
	CreateSE("SE01","se����_�z_װ��02");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStA(0,true);
	Wait(300);
	FadeDelete("�}�ե�", 600, true);

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md01/0280210a00">
����������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0280220a01">
����ô����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0280230a00">
��û�¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���Ҳ���������İ��ĸУ�����¶���˿�Ц��

��װ��֮���������ˡ�

������������û���κα仯��

�������ҵĽ��С�

����û��Ҫ���������е�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md01/0280240a00">
�������ϰɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0280250a01">
�����ף���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��һ�ȥ��`���Ф�
	ClearWaitAll(2000, 1000);

}

..//������ָ��
//�Υե����롡"md01_029vs.nss"