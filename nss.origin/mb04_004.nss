continuation number="670">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004.nss_MAIN
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
	#bg048_�������_���ե���_01=true;
	#bg047_�������_�a_01=true;
	#bg050_�������Tǰ_02=true;
	#bg002_��a_02=true;
	#ev128_�����ι�_c=true;
	#ev133_����������_a=true;
	#ev136_���L���h�֣����I����_e=true;
	#ev128_�����ι�_f=true;
	#ev138_���I������_c=true;
	#bg054_�����Ҽ���b_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mb04_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_003.nss"

//�����ե���������Ԓ��
//����������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}�ݱ���", 1000, Center, Middle, "cg/bg/bg048_�������_���ե���_01.jpg");
	SetShade("�}�ݱ���", EXTRAHEAVY);
	OnBG(100,"bg048_�������_���ե���_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawTransition("�}��ܞ", 600, 1000, 0, 100, Axl2, "cg/data/slide_05_00_0.png", true);
	Delete("�}��ܞ");
	FadeDelete("�}ɫ��", 2000, false);
	FadeDelete("�}�ݱ���", 4000, true);
	SoundPlay("@mbgm29",0,1,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������������������������������������

�������ǡ���

����������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/mb04/0040010e238">
�������ţ�
���ն�������ô�ˣ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040020a00">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ǰ���㡪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw��T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯ͬ��Ů��
<voice name="����㣯ͬ��Ů" class="������Ů��" src="voice/mb04/0040030e226">
������ǰ����ù��ְ���
������������ж�ô����״������ô¶�ǵ�
�������ֳ����ȣ���Ҳ̫�����ˡ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040040a00">
��������


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/mb04/0040050e238">
���������ֵ����㡣
����ֻ�ǻ�û˯�Ѱɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��û˯�ѣ�
�������ҸղŻ���������

�����������ԡ�
��Ҫ˵�εĻ��������Ӧ�����Ρ�

���������Σ�
����ʵ����������һ�ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb04/0040060a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����һ�ߣ�
����һ�ߡ���<k>��һ�ߡ�������

����һ�ߣ�
����������������������������ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/mb04/0040070e238">
������
�����������ƺ���ƣ��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040080a00">
������������
���ǳ���Ǹ����


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040090a00">
�����ֻ��˯��Ϳ�˶��ѡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 5000, 1000, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ʶ���ڽ�������ʵ��
�������ǹ�˾�����ҹ����ŵ�һ��С��˾��

�����⻹���������������������˾��Ĺ���ʱ�䡣
�������ƺ���˯���ˡ����һ�˯�úܳ���

���ܾ�����󿴵������������Ҳ������������
˯������¡����·��Ѿ��Ǻܶ�����ǰ�����ˡ�
ͻȻ����������΢�����߼��ĸо���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/mb04/0040100e238">
����������Ҳ��û�취�İ���
����﷢������ô���£���Ǻ�ɣ�
������Ҳûʲô������������Ȼ�ȥ�ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040110a00">
���������ǡ�����


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/mb04/0040120e238">
�����е�ʱ����ǿ�Լ���
��æ��ʱ�򻹻赹�˵Ļ���
�Թ�˾��˵�ɾ��������ˡ���


{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040130a00">
��������


{	NwC("cg/fw/nw��T.png");}
//������㣯ͬ��Ů��
<voice name="����㣯ͬ��Ů" class="������Ů��" src="voice/mb04/0040140e226">
��ǰ������˾ְԱ��������Ǳ�Ǯ��
��������Լ�������״��Ҳ�Ƿ��ڵĹ�������


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040150a00">
��������ȷ������


{	NwC("cg/fw/nw��T.png");}
//������㣯ͬ��Ů��
<voice name="����㣯ͬ��Ů" class="������Ů��" src="voice/mb04/0040160e226">
�������ҵ���˯Ҳ�ǹ�����һ����Ŷ��
���ǺǺǡ����г���Ե���ʵ���ڱ��ҿ��ˡ���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/mb04/0040170e238">
��������ʹ��������ְԱ�����ǵĹ�˾Ҳ��
��תŶ��
�������㲻�������ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040180a00">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����
//�����_���
	SetVolume("@mbgm*", 1500, 0, null);
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm22",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���ؼҵ�·�ϡ�
�����ʱ���ƽʱ��Ҫ�硣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mb04/0040190a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���߹��˵�·��
��ס���˵ĳ���

��ƽ������Ĺ��硣

�����ǡ���û��
��������һЩС���⡣

�������������ɵ�ɽ���ų����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mb04/0040200a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg050_�������Tǰ_02.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�������լۡ��
��������ļҡ�

�����ﲢ�����ҳ����ļҡ�
�����ǣ��������ҵļ��ˡ�

���������Դ���������á�
���Լ���ĸ��

�����������޿�����ļ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y
	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���y��
<voice name="�y" class="�y" src="voice/mb04/0040210b46">
��Ŷ��
��������簡����


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040220a00">
��������


{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/mb04/0040230b46">
����ӭ��������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040240a00">
�������š�
���һ����ˡ���


//��������
<voice name="����" class="����" src="voice/mb04/0040250a00">
��ͳ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ϧ��
	OnBG(5000,"bg002_��a_02.jpg");
	FadeBG(2000,true);
	DeleteStA(0,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����ڵ�������ƽ�������ȵġ�
���Ժ���ݰ���Ҳ��һֱ������ȥ��

��һ���������ȥ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mb04/0040260a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
������������������ġ�
�����ֲ�֪Ϊ�Σ���ȴ�Ѿ�֪����

�����޷�ʵ�֡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����٥�ȣãǵȤ������Ƶ���Ԓ��չ�_�򥳥�ѥ��Ȥ˱�F
//���ǡ�ɽ�\�o�T�����y��ؤ��Ȥ���Ȥ�
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	WaitKey(200);
	CreateTextureSP("�}���룱", 8000, Center, Middle, "cg/ev/ev128_�����ι�_c03.jpg");
	CreateTextureSP("�}���룲", 8000, Center, Middle, "cg/ev/ev133_����������_a.jpg");
	CreateTextureSP("�}���룳", 8000, Center, Middle, "cg/ev/ev136_���L���h�֣����I����_e.jpg");
	CreateTextureSP("�}���룴", 8000, Center, Middle, "cg/ev/ev128_�����ι�_f03.jpg");
	CreateTextureSP("�}���룵", 8000, Center, Middle, "cg/ev/ev138_���I������_c.jpg");
	Fade("�}��ܞ", 300, 150, null, true);

	Delete("�}���룵");
	Wait(50);
	Delete("�}���룴");
	Wait(50);
	Delete("�}���룳");
	Wait(50);
	Delete("�}���룲");
	Wait(50);

	Fade("�}��ܞ", 400, 1000, null, true);

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg054_�����Ҽ���b_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm34",0,1,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
    ��������������������������������������������
������������������������������������������������
������������������������������������������������
������������������������������������������������

��ɲ�Ǽ䣬�Ҹ��ܵ�����ʶ����Ծ��

��ʱ��������ˡ�
�����﾿�������ڣ����ǹ�ȥ�������δ���أ�

���������侲������
��������ʵ��

�������Լ���ǰ����ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T��
//���y
//��������ݳ����ʤ�٤��^ȥ��ͬ���褦�ˡ�BGM��ͬ���ˡ����ɴ���ϵ�����ϱܤ��롹
	SetVolume("@mbgm*", 5000, 1000, null);
//	StR(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
//	FadeStR(300,true);
//	WaitKey(300);
//	DeleteStR(300,true);

	StL(1000, @0, @0,"cg/st/3d�ũ�ʽָ�]��_����_�l��.png");
	FadeStL(300,true);

	WaitKey(300);

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����ĸһ�����͵ؾ������ڵ��ϡ�
���������ԡ���һ�����������̫���ӹ�ͷ����

����ɽ����
��ɽ����������Ҫɱ����ĸ!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mb04/0040270a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����������������ȥ������
������Ҫ��ô��!?

��ֻ�����ߵ�����������ֹ���ߡ�
���ҡ���ֻ��һ����ͨ�����ࡣ

���޷���ֹ����
���޷���ֹ����!?

���ѵ���ֻ���������ؿ�����ĸ��ɱ����!?

������������
������������

��һ���еģ�
����һ���Һ������

����ʱ�˵��ܹ��ȳ���ĸ���������Ǵ��ڵġ�
�������Ҵ��ֿɼ��ĵط�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣹��Q��
//�������SE�����礤�ȥ���`�����`���ΤǄe�椬��������
	CreateSE("SE01","se����_냇��_���Q01");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("�}�ե�å����", 2000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���������ˣ�
��û�����������

��һ���Ӵ������Ĳ�����
�������̥��ͨ��ָ�����������Ľ������ݶ�����

�����У�
�����������Ǹ���������⣬������������ϵ�������

��ֻҪʹ����������Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mb04/0040280a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���������ǡ�
��Ϊʲô�һ�֪����

��Ϊʲô�һ�֪���������ǿ�����˿־�Ķ�����
��û�������һ�Ӧ���еĺ�����һ����

���ն��������������㿪ʼ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣹��Q��
//�������SE�����礤�ȥ���`�����`���ΤǄe�椬��������
	CreateSE("SE01","se����_냇��_���Q01");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("�}�ե�å����", 2000, false);

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040290b40">
���㻹����ԥʲô��
����֮��������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040300a00">
������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ţ��
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureEX("�}����", 1000, Center, Middle, "cg/st/3d������ţ��_����.png");
	Move("�}����", 0, @0, @180, null, true);
	Fade("�}����", 300, 1000, null, true);

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040310b40">
����˵�����ԣ��������ڽ�����Լ��
������������Σ��֮�аɣ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040320a00">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���������ڣ�
������ǡ��������ȴ��Ľ��е�������

�������ǡ�����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040330b40">
����㣬������
��˵�����ԣ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040340a00">
�����ԡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��û��
����֮��������Ҫ��Щ��

������Ҫ����ĸ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ݳ������`�󡢥��㥰�������ʤ���
	SoundPlay("@mbgm04",0,1000,true);

	SetFwR("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/mb04/0040350a00">
��������ն������


//��������
<voice name="����" class="����" src="voice/mb04/0040360a00">
����𡭡�߱�𡭡���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���������ǣ�
���ƶ���ɱ�����䡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/mb04/0040370a00">
��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
�����У�
�������ܽ��������Լ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 300, 0, null);

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040380b40">
��ι���������
����˿��ԣ���˭����ģ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040390a00">
������ʲô����


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040400b40">
���������ǹ᳹�����������
��ն���ǹ��ϵ��Ƕ񣡡�


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040410b40">
���û����ֻ��а��
�������ģ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��ֻ�С���а����

�����������Ϳ�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040420b40">
���죡��


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040430a00">
�����������������𾡶��
�������������Ͼ�а�񡣡�


{	FwR("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040440a00">
������֮�������ڴˡ�������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040450b40">
�������Ƕ���ģ����һ����½����ˣ�
���Դ˿��������ڱ��Ǵն������ĵ�����


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040460b40">
����ô��һͬ�ַ��Ƕ��ɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��װ��
//������
//��������ݳ����������^ȥ���`��Ȥޤä���ͬ���ˤ��롹
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d����_����_ͨ��.png");
	FadeStC(0,true);
	Delete("�}��*");
	WaitKey(1000);
	FadeDelete("�}�ե�", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
����װ�����˽��С�
����ô�Ӵ����������

������Ż����������е�Ұ�޶�����Ī���ɣ�
��Խ�ԵĿ������ʹ����ڴ˵ء�
�����ҡ����������ǳ�ˬ���泩��

�����������а��֮����
�������Ϊ������ǿ�����Ŀ���֮ͽ��׼����������
��ӵ�и�Ϊǿ����������

{	SoundPlay("@mbgm10",0,1000,true);}
�����������壡
�������仯��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);


	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040470b40">
��������ˣ�
���ϰɣ�����!!��


{	FwR("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0040480a00">
���ã���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1250,null,false);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_�����Ƅ�.jpg", false);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	StC(1000, @0, @0,"cg/st/3d�ũ�ʽָ�]��_����_�l��.png");
	FadeStC(0,true);
	DrawDelete("�\Ļ��", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
����񣬶������ǰ��
����ͼɱ����ĸ��ɽ�����ߣ�

������������ʧ��ؿ������
�����������������Ϊֻ���Լ���ӵ��ǿ��������ɣ�

�����������ֻ���Լ�����ƾ�豩�����⺦�˰ɣ�
��������Ҫ����ݰ���ʩ�Գͷ���

��а��������ؽ���������������飡

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//���ܥ����������������`�`�`����
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0040490b40">
���ģ������ɣɣ����������������ȣȣȣ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�M
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("�}�ݱ���", 3000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	DrawDelete("�\Ļ��", 150, 100, "circle_01_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
�����˻���̫������ĸ������ȥ��
������������֮ǰ��

���ҾͻὫ��ն���ڵء���<k>
��
{	SetVolume("@mbgm*", 100, 0, null);}
�����ǡ���һ˲�䡣

���ҷ�����ĸ��ע�����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//���y��
<voice name="�y" class="�y" src="voice/mb04/0040500b46">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



}

//���x�k������ôն�£������ȵ�

..//������ָ��
//�����Τޤޔؤ롡"mb04_004a.nss"
//���������ơ�"mb04_004b.nss"

//���x�k֫���`��
scene mb04_004.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	CreateTextureSP("�}�ݱ���", 3000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("����ôն��","�����ȵ�");
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
//�����Τޤޔؤ롡"mb04_004a.nss"
				$GameName = "mb04_004a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���������ơ�"mb04_004b.nss"
				$GameName = "mb04_004b.nss";
		}
	}
}