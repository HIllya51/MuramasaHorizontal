//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_028vs.nss_MAIN
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
	#bg056_���L�����Tǰ_03=true;
	#bg011_��������_01a=true;
	#bg094_�m��ͥ_01=true;
	#ev226_�����֣��\��_a=true;
	#ev005_�ؤ���줿��=true;
	#bg031_��ᦌm����_01=true;
	#bg052_�����ҵ���_01=true;
	#ev226_�����֣��\��_b=true;
	#bg058_�ҿ�a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_029vs.nss";

}

scene md03_028vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();




..//������ָ��
//ǰ�ե����롡"md03_027vs.nss"

//������

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm09", 0, 1000, true);
	CreateColorSP("�\Ļ��", 20000, "BLACK");
	OnBG(100, "bg056_���L�����Tǰ_03.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����һ�ߣ�������ƺ����������ˡ�
���ұ�ͻ��������������ѹ�ƣ�Ȼ�������û����ҵ�
����״̬�ָ�����ǰ�������������������������ƺ���
Ͷ��·�ˡ�

��������ν�ĵ��ġ�
������ԭ���Ͳ��ܲ����ҵ��ġ�

������������ͬ�ȵľ�����������������Ǻ���Ⱦ����
�ɵ�����Ӱ�졪����������������
��Ȼ��ʵ���ϣ�����������ѹ�Ƶ�ס���Ǻŵ�������û
�в����ߵĵ��¾͸�����˵�ˡ�

�����ң����Ǻŵľ�����Ⱦ���Ծ��ƻ��ԡ�
����ĳ���ƻ�����������ͽ����ƻ�����Ƭ�ָ�ԭ״��
��ȫ��ͬ�ġ��������Ժ��ߵ��Ѷȸ��ߡ�

������һ��Ҳû�ܾ��±����Ǻž�����Ⱦ���ˡ�
�������ܵġ��������ġ�

����Ȼ����֪Ϊ����������Ⱦ��ǳ���Դ����ĸ�������
����ʹ�Ҹ�ԭ��
��������<k>��Ȼ���ǲ����ܵġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣�������ڤ�

	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 1500, @0, @0, "cg/bg/bg011_��������_01a.jpg");

	EfRecoIn2(300);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����ʱ����Ҳû�ܳɹ���
���ھ��������������Ҫ���ں�֮ʱ�������ܾ��ˣ���
����Ҫƾ�辫������������ұ�ɵ��ߡ���<k>����û
��ʵ�С�

����Ϊ�Ǳ���ֹ�ġ�
�����ޱȳ��صĄ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����롣�����^ȥ���ۤȤΌ���


	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 1500, @0, @0, "cg/bg/bg094_�m��ͥ_01.jpg");

	EfRecoIn2(300);

	SetNwC("cg/fw/nw��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md03/028vs0010b47">
���������������ꡣ
������֮ʹ�ã�����֮����������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md03/028vs0020b47">
�������к����ɣ��ƴ˽�֮ʱ�����ѷ���֮��
��Ϊ����Ҳ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);
	Delete("�}����100");
	EfRecoOut2(600,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������ӵ�������ͼ�ֵ�۵�����˵�������������Ǿ��Եġ�
�����������޷�ʹ�ñ������Ͻ��ľ����������������
���ǽ����

������û��Ҫ�����ҵ��Ļ��лָ�ԭ״��Σ�ա�
������ֻ�ܳ����Żָ����޷�������һ�����¡�

������������
��
����������Ҳ�ǲ����ܵġ�

����Ϊ���������ǲ��ᱻ���򵹵ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������\��

	StC(1000, @0, @0,"cg/st/3d�\��_����_�i��.png");
	FadeStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������������
��װ���ŷ����ص����㽣�С�����Ҳ��˵��һ����

����׳��������ǿ�����ߡ�ս��֮������
���Է����������Ӯ���˵Ķ��֡�

������˵����һ�����䡣
��������ĵ��������ˡ�

��Ȼ����<k>
��
��
����Ϊ����˲�м����Ϊ�Լ��������ء�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣������֣��\��

//	Move("@StC*", 100, @-50, @0, Axl1, false);
	Fade("@StC*", 300, 0, null, true);

	CreateTextureSP("�Ϸ�", 10000, Center, Middle, "cg/bg/bg056_���L�����Tǰ_03.jpg");
	CreateTextureSP("�}�ݴ󱳾�", 100, -300, -100, "cg/bg/bg056_���L�����Tǰ_03.jpg");
	CreateTextureSP("�}�ݴ���", 400, 300, -500, "cg/ev/resize/ev226_�����֣��\��ex_a2.png");
	CreateTextureSP("�}�ݴ��\��", 600, 100, -300, "cg/ev/resize/ev226_�����֣��\��ex_a1.png");
	CreateTextureSP("�}�ݴ��\���ܤ���", 600, 100, -300, "cg/ev/resize/ev226_�����֣��\��ex_a1.png");

	Request("�}�ݴ󱳾�", Smoothing);
	Request("�}�ݴ���", Smoothing);
	Request("�}�ݴ��\��*", Smoothing);

//	Rotate("�}�ݴ��\��*", 0, @0, @10, @0, null,true);
	Zoom("�}�ݴ󱳾�", 0, 1600, 1600, null, true);
	Zoom("�}�ݴ���", 0, 400, 400, null, true);
	Zoom("�}�ݴ��\��*", 0, 1300, 1300, null, true);

	SetShade("�}�ݴ󱳾�", HEAVY);
	SetShade("�}�ݴ��\���ܤ���", HEAVY);

	CreateMovie("���ӻ�", 6000, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 3000, null, true);

//	Fade("�}�ݴ���", 1000, 1000, null, false);
//	Fade("�}�ݴ��\��", 1000, 1000, null, false);
//	Fade("�}�ݴ󱳾�", 1000, 1000, null, false);

//	Rotate("�}�ݴ��\��*", 7000, @0, @-10, @0, Axl2,false);
	Fade("�}�ݴ��\���ܤ���", 7000, 0, Axl3, false);
	Zoom("�}�ݴ���", 7000, 450, 450, AxlDxl, false);
	Zoom("�}�ݴ��\��*", 7000, 1100, 1100, AxlDxl, false);
	Move("�}�ݴ���", 7000, @450, @0, AxlDxl, false);
	Move("�}�ݴ��\��*", 7000, @-500, @0, AxlDxl, false);
	Move("�}�ݴ󱳾�", 7000, @600, @0, AxlDxl, false);
	FadeDelete("�Ϸ�", 2000, true);

	WaitKey(3000);
	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md03/028vs0030a00">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}��", 1500, Center, Middle, "cg/ev/ev226_�����֣��\��_a.jpg");

	OnSE("se����_�z_�l����01", 1000);
	Zoom("�}��", 0, 1500, 1500, null, true);
	Fade("�}��", 400, 1000, null, false);
	Zoom("�}��", 1000, 1000, 1000, Dxl2, true);

	Wait(500);
	Delete("�}�ݴ�*");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����̫���߾����϶Ρ�����������ʽ���ֿ��ڼ��ϵ��϶Ρ�
����Ҫ���Ʋ���Ĵ��϶Ρ�
��ֻ׷��������ġ�������̫�����ơ�

��������Ϊ���֣���ζ��ʲô�ء�

�����ܻӳ����Ľ������޷�׷�ϵ����ٵ����ߡ�
�����ܻӳ���ǿ�Ľ������޷����Ʊ�ս��������
��ǿ������װ�ס�

����������һЦ��֮�Ļ��롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�����AȾ_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md03/028vs0040a00">
���ǺǺǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������˵���
�����ֶ�һ��<RUBY text="����">����</RUBY>����

����������
����������
����������

��������������
��������������
��������������������

��������!!
��������!!
������֮��!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�����AȾ_��Ц.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md03/028vs0050a00">
����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ե�å���
//����줿�������򡢹�
//���ţֲ�֣��\����ͻ�M
//��������һ�W������ѩ`��

	SetVolume("@mbgm*", 300, 0, null);

	EfRecoIn1(18000,100);
	CreateTextureSP("�}����100", 1500, @0, @0, "cg/ev/ev005_�ؤ���줿��.jpg");
	Delete("���ӻ�");
	EfRecoIn2(300);
	Wait(500);

	EfRecoIn1(18000,100);
	CreateTextureSP("�}����100", 1500, @0, @0, "cg/bg/bg031_��ᦌm����_01.jpg");
	CreateTextureSP("���������}", 1501, Center, InBottom, "cg/st/st���L_ͨ��_�Ʒ�.png");
	EfRecoIn2(300);
	Wait(500);

	EfRecoIn1(18000,100);
	CreateTextureSP("�}����100", 1500, @0, @0, "cg/bg/bg052_�����ҵ���_01.jpg");
	CreateTextureSP("���������}", 1501, Center, InBottom, "cg/st/st�����ǰ_ͨ��_˽��.png");
	EfRecoIn2(300);
	Wait(500);

	EfRecoOut1(100);
	Delete("���������}");
	Delete("�}����100");



//�����ߣ�����饳�ޥ��
	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");

	CreateTextureEX("����飱/�}�ݴ󱳾�", 100, 100, -100, "cg/bg/bg056_���L�����Tǰ_03.jpg");
	CreateTextureEX("����飱/�}�ݴ���", 400, 1100, -500, "cg/ev/resize/ev226_�����֣��\��ex_a2.png");
	CreateTextureEX("����飱/�}�ݴ��\��", 600, -800, -500, "cg/ev/resize/ev226_�����֣��\��ex_b1.png");
	CreateTextureEX("����飱/�}�ݴ��\����", 600, -400, -500, "cg/ev/resize/ev226_�����֣��\��ex_a1.png");
	CreateTextureEX("�}��", 1500, Center, Middle, "cg/ev/ev226_�����֣��\��_b.jpg");

	Request("����飱/�}�ݴ󱳾�", Smoothing);
	Request("����飱/�}�ݴ���", Smoothing);
	Request("����飱/�}�ݴ��\��", Smoothing);

	Zoom("����飱/�}�ݴ󱳾�", 0, 2700, 2700, null, true);
	Zoom("����飱/�}�ݴ���", 0, 500, 500, null, true);

	SetShade("����飱/�}�ݴ󱳾�", HEAVY);
	SetBlur("����飱/�}�ݴ��\��", true, 2, 500, 50, false);


	Zoom("�}��", 0, 2000, 2000, null, true);
	SetBlur("�}��", true, 2, 500, 100, false);

	CreateColorSPadd("�}ɫ100", 1500, "WHITE");

	Fade("����飱/�}�ݴ���", 0, 1000, null, true);
	Fade("����飱/�}�ݴ��\����", 0, 1000, null, true);
	Fade("����飱/�}�ݴ󱳾�", 0, 1000, null, true);
	MoveCamera("@����飱", 0, 0, -200, @-150, null, true);


//�����ߣ������Ӥ�

	EfRecoOut2(100,true);

	Fade("�}ɫ100", 100, 0, null, false);
	Wait(1000);

	OnSE("se���L_����_��ͻ�M01",1000);

	Zoom("�}��", 800, 1000, 1000, Dxl2, false);
	Fade("�}��", 500, 1000, Axl2, false);

	Fade("����飱/�}�ݴ��\����", 200, 0., null, false);
	Fade("����飱/�}�ݴ��\��", 150, 1000, null, false);
	Move("����飱/�}�ݴ��\��", 500, @650, @150, Dxl1, false);
	Zoom("����飱/�}�ݴ��\��", 500, 650, 650, Dxl1, false);
	MoveCamera("@����飱", 500, 500, -50, @100, Axl2, true);


	Delete("�����*");

//�����ߣ������Ӥ��K��

	CreateSE("SE01a","se�M��_����_�ե�å���Хå�01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ݸ�", 20010, Center, Middle, "cg/ev/ev006_�����ο���.jpg");
	CreateTextureSP("�}��", 20000, Center, Middle, "cg/ev/ev006_�����ο���.jpg");

	CreateColorSP("�}ɫ�\", 150, "#000000");

	Zoom("�}��*", 0, 1100, 1100, null, true);
	Zoom("�}�ݸ�", 2000, 2000, 2000, null, false);
	FadeFR3("�}�ݸ�",0,500,200,@0,@0,30,null, false);
	Wait(50);
	FadeDelete("�}�ݸ�", 150, false);
	FadeDelete("�}��", 300, true);

	Wait(1000);

	OnSE("se���L_����_�z_���01",1000);
	OnSE("se���L_����_�����01",1000);
	Fade("�}ɫ100", 0, 1000, null, true);
	DrawTransition("�}ɫ100", 150, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", true);

	Delete("�}ɫ�\");

	Delete("�}��");
	Wait(500);

//	SL_down(@0, @0,1000);
//	SL_downfade2(10);

	SetFwC("cg/fw/fw�\������_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���\����
<voice name="�\��" class="�\��" src="voice/md03/028vs0060b26">
������������

//���\����
<voice name="�\��" class="�\��" src="voice/md03/028vs0070b26">
����������������

//���\����
<voice name="�\��" class="�\��" src="voice/md03/028vs0080b26">
��ʲ������ô����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ѫ���֤���`��

	SL_centerdam(@0,@0,1600);
	OnSE("se����_Ѫ_Ѫ���֤�01",1000);
	CreateColorEX("��Ļ��", 15000, "RED");
	Fade("��Ļ��", 1500, 1000, null, false);
	SL_centerdamfade2(100);

	SetFwC("cg/fw/fw�\������_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���\����
<voice name="�\��" class="�\��" src="voice/md03/028vs0090b26">
��������������

//���\����
<voice name="�\��" class="�\��" src="voice/md03/028vs0100b26">
�������ܡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���
//��bg056
	OnSE("se���L_�n��_�zܞ��02",1000);

	WaitKey(1500);
	OnBG(100, "bg058_�ҿ�a_01.jpg");
	FadeBG(0, true);
	FadeDelete("�}��",0,false);
	FadeDelete("��Ļ��", 1000, true);

	SetFwC("cg/fw/fw�����AȾ_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md03/028vs0110a00">
���ǡ���
���Ǻǣ��ǹ�����������������!!��

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/028vs0120a00">
��������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����������ϱ��жϡ���
����񷴵����Լ�ʧȥ������Ҫ���ߵĶ��������ߺ���
������Ѫ���С�

����Ц��
�����Ǻ����������Լ���Ц��

����ȥΪ���������Ҷ����Ʋ��ѵ�<RUBY text="��">����</RUBY>ʵ�ںܻ�����
��
����������ԭ����ô�򵥡�

����ȥ�������꾡���и���һ��������������
������������׵Ĺ��������<RUBY text="����">ħ��</RUBY>��

�����������͹��ˡ�
������û��ֻ��<RUBY text="����">����</RUBY>���㹻�ˡ�

��ֻ�����Թ�İ�������һ��ȫ������!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 1000);

}

..//������ָ��
//�Υե����롡"md03_029vs.nss"