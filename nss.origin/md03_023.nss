//<continuation number="650">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_023.nss_MAIN
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
	#ev224_���L�¤���줹��܊��=true;
	#ev952_�׵�װ��_a=true;
	#ev952_�׵�װ��_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_ϥ��=true;

	$PreGameName = $GameName;

	$GameName = "md03_024vs.nss";

}

scene md03_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md03_022.nss"

	PrintBG("�ϱ���", 30000);


	OnBG(100, "bg056_���L�����Tǰ_03.jpg");
	FadeBG(0, true);


	StR(1000, @0, @0, "cg/st/st���L_ͨ��_�Ʒ�.png");
	StCL(1000, @80, @0, "cg/st/stһ��_ͨ��_�Ʒ�.png");
	StL(900, @-100, @0, "cg/st/st�\��_ͨ��_˽��.png");
	FadeStR(0, false);
	FadeStL(0, false);
	FadeStCL(0, true);

	Delete("�ϱ���");

	SetNwC("cg/fw/nw������.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230010a07">
������Ҫȥ�Ķ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12", 0, 1000, true);


//�������`��
//���ţ֣����첿ꠡ��衩�衢�������׵�
	CreateTextureEX("܊��", 15000, @0, @0, "cg/ev/ev224_���L�¤���줹��܊��.jpg");
	CreateTextureEX("܊���", 15000, 0, -512, "cg/ev/resize/ev224_���L�¤���줹��܊��l.jpg");

	CreateSE("SE01","se����_����_�z_�}���l��ȥ��01");

	OnSE("se����_����_�z�i��03",1000);
	MusicStart("SE01",0,1000,0,200,null,false);

	Wait(50);

	SetVolume("SE01", 4000, 0, Axl3);

	Fade("܊���", 1000, 1000, null, false);

	Move("܊���", 2000, -512, -512, Dxl1, true);
	Move("܊���", 1000, -512, -100, AxlDxl, true);

	Fade("܊��", 0, 1000, null, true);

	WaitKey(700);

	Fade("܊���", 1000, 0, null, true);
	DeleteStA(0,true);

	SetFwR("cg/fw/fw�\��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0230020b26">
��ʲ!?��

{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0230030a02">
��������������

{	FwR("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0230040a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������Χ�ˡ�
����Χȫ�������޵ľ��ӡ�

����ͷ����ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("܊���", 0, -412, -100, null, true);
	Fade("܊���", 500, 1000, null, false);
	Move("܊���", 2000, -402, -100, Dxl1, 1000);

	SetFwR("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md03/0230050a00">
������������

{	FwR("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0230060a01">
��������������

{	FadeDelete("܊���", 1000, false);
	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230070a07">
�������Ǻ��ʺ����£�
����Ҳ�����������������ְɣ���

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230080a07">
����������Ͱɡ���

{	FwR("cg/fw/fw�\��_ŭ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0230090b26">
��ܥԽ��������

{	FwR("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230100a07">
���������������أ�
�������𣿡�

{	FwR("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0230110a11">
�������н��������Ǻ��⣡
����֪�������������µľ���������
��Χ����ֱר����費����ˡ����

{	FwR("cg/fw/fw���L_ŭ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0230120a11">
�����������˱�����

{	FwR("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230130a07">
������ʲô�ʸ�˵�Ұ��������𳤡�
�����ǲ��ǣ�Ϊʲô�����ﰡ����

{	FwR("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0230140a11">
������������

{	FwR("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230150a07">
���Ѿ�¶�ھͱ���Ӳ���ˡ�
���׵�˵ʵ���ˣ���������ͼ��������
��ռĻ���ļƻ�����

{	FwR("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0230160a08">
��ʲ������

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230170a07">
�������������𣿡�

{	FwR("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0230180a00">
�����������������ֻ�Ǳ��棬ʵ�����Ǵӵ�
Ļ�����б����������������Ŷ԰ɣ���

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230190a07">
������û��û��
����Ǹ���׵���һ��С��Ū���ˡ���

{	FwR("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0230200a08">
������������

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230210a07">
�������������𳤡�
����ȫ�ò��ŵ��Ĺ�����Ŷ����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230220a07">
�����������������˵ġ�
�������ǵ�Ļ�ɵ������

{	FwR("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0230230a11">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������������ð���ҧ�ÿ����졣
����ζ����̵�ʧ�ܸС���ƴ�������ŷ�ӵ������
�����С�

������ͯ��Ҳ��������
�����һ�����������ս������ÿ�κ��������ǡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230240a07">
��������Ժ�ܱߡ�
��һֻ��Ӭ����ų�ȥ����

{	NwR("cg/fw/nw�����_��ʿ.png");}
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/md03/0230250e249">
���ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�}����ʿɢ�_", 1000);

//�����ä��á���ʿ��ɢ��

	FadeDelete("܊��",1000,true);


	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230260a07">
�����ˣ�������ʰ��Щ�һ�ɡ�
������æ�ɣ��׵�����

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0230270a08">
��������֪������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230280a07">
��Ŷ��Ŷ��Ŷ��
����ҧ�촽����ɫ�԰ף�ָ��΢΢������
�����൱���ȶ�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230290a07">
������״̬���Ѱ�����

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0230300a08">
���㷳��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���ñ�ʿ��ɢ�����ܣ�������ߵ���ǰ��
��Ȼ��������Ǹ������쳣�Ӵ�����ˡ������У�������

��Ҫ��ս�ˡ�
���ҷ�״��������������

������
��������˵�����������á�

����Ȼ�ͼƻ���ȫ��ͬ���ܹ��Ǽ��������ˡ�
�����������Ǿ��õĻ��ᡣ

����������þ����ָ�����������״��Ҳ��ı䣡

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������Ӥ�
//���������衩��
	OnSE("se����_����_һ�i", 1000);

	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	Move("@StL*", 200, @20, @0, null, false);
	StR(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�x.png");
	FadeStL(200, true);

	FadeStR(200, true);
	Move("@StR*", 300, @-20, @0, DxlAuto, false);


	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230310a07">
��������ô��
������Ϊ�һ�����ó��𣿡�

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230320a07">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0230330a01">
������衭������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230340a07">
����ô��������ӽ�����أ�
����������Ķ��֡���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0230350a01">
���ò��ţ�
���ÿ�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230360a07">
���Ų�Ҫ��
���������ǵģ�����Ϊ����ܻ������ó��ŷ�
��һ����·��˭�뷴�����Լ����鷳�ˡ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230370a07">
�������Ҿ��Ի������ģ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0230380a01">
����������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230390a07">
���׵����Ǳߴ��Ž��еĹ�������ˡ�
���������������������������Ͱ���˳��
Ҳ��ʰ�ˡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0230400a07">
���鷳���Ը��Ǹ��ڵġ���

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0230410a00">
���ðɡ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0230420a08">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(150,true);

//���׵���һ��

	StR(1000, @0, @0, "cg/st/stһ��_ͨ��_�Ʒ�b.png");
	StL(1000, @0, @0, "cg/st/st�׵�_ͨ��_�Ʒ�.png");
	FadeStL(300, false);
	FadeStR(300, true);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw�\��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0230430b26">
��һ�����ˣ�����С�ģ�
���Ǽһ���С�����������׵�������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0230440a02">
�����Ǹ����ͷ�ķϲ��аɡ�
���ǡ�����ͺð��ˡ���

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0230450a02">
��Ҫ���Ĺ����е�һ�˱����ˣ�
�Ͱ첻�ɾۻ��˰ɣ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0230460a08">
����������˵���������𣿡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0230470a02">
���ҹ�����ô�����ء�
��Ҫ��Ϊ����������Ҳ���ԣ�Ҫ���������ڱ�
�žų˷���Ҳ�У�������ô�롣��

{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0230480a02">
����Ҫ�����¶�����䡣
�����ˣ����ڣ���

{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/md03/0230490b40">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`���z�ѩ`�ķ��x
//��װ�ץ��������

//	OnSE("se����_�z_װ��03",1000);
	CreateSE("SE01","se����_�z_װ��03");
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");


	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}�ե�", 300, 1000, null, true);
	DeleteStA(0,true);
	StC(1000, @0, @0,"cg/st/stһ��_װ��_�Ʒ�a.png");
	FadeStC(0,true);
	Fade("�}�ե�", 500, 0, null, true);

//�����ߣ�װ�ץ��������
	FadeDelete("�}��ܞ", 200, true);

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 0, -344, "cg/bg/bg056_���L�����Tǰ_03.jpg");
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);

	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);


	CreateTextureEX("�}�ݷ���/�}���}", 16200, 320, -220, "cg/st/resize/stһ��_װ��_�Ʒ�aex.png");
	SetBlur("�}�ݷ���/�}���}", true, 3, 500, 70, false);

	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	FadeDelete("�}ɫ��", 500, true);

	Wait(300);

	Move("�}�ݷ���/�}�ݱ���", 600, @-100, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 600, @-200, @0, Dxl2, false);
	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);



	SetFwR("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0230500a02">
�������������𾡶��
  �����������Ͼ�а�񣡡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
	CreatePlainSP("�}��д", 2000);
	StC(1000, @0, @0,"cg/st/stһ��_װ��_�Ʒ�b.png");
	FadeStC(0,true);
	FadeDelete("�}��д", 300, true);
*/

	CreateTextureEX("�}�ݷ���/�}���}2", 16200, -217, -50, "cg/st/resize/stһ��_װ��_�Ʒ�bex.png");
	SetBlur("�}�ݷ���/�}���}2", true, 3, 500, 70, false);


	OnSE("se���L_����_�����01",1000);
	EffectZoomadd(17000, 800, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);

	Fade("�}�ݷ���/�}���}", 400, 0, Axl3, false);

	FadeF4("�}�ݷ���/�}���}2", 200, 1000, 400, 0, 0, Dxl2, true);


	PrintBG("�ϱ���", 30000);
	SetBlur("�ϱ���", true, 6, 500, 50, false);
	OnSE("se����_����_���S03",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	OnBG(100,"bg056_���L�����Tǰ_03.jpg");
	StC(1000, @0,@0,"cg/st/stһ��_װ��_�Ʒ�b.png");
	FadeStC(0,true);
	FadeBG(0,true);
	Zoom("�ϱ���", 400, 4000, 4000, Axl2, false);
	FadeDelete("�ϱ���", 400, true);

	WaitKey(500);

	SetFwR("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0111]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0230510a02">
������֮�������ڴˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ډ���

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);

	StC(1000, @0, @0,"cg/st/3d����_����_ͨ��.png");
	FadeStC(0,true);
	FadeDelete("�}�ե�", 1000,true);

	Wait(500);

	SetFwR("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0230520a02">
����Ҳ��ʥ��Ҳ�ù�����Ҳ��ѡһ��ȥ��
�ɣ����⻨�ڹ���!!��

{	FwR("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0230530a08">
������������

//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0230540a08">
�����ڵ��ᰡ����
�����������κ��˺��£��������ŵ�С����
������������ò����ˡ���

{	FwR("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0230550a08">
�������Լ��Ĳ����˰ɡ�
������ϥ�衣��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`���z�ѩ`�ķ��x
//��װ�ץ��������

	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	DeleteStA(0,true);
	CreateTextureSP("װ��", 1000, @0, @0, "cg/ev/ev952_�׵�װ��_a.jpg");
	Zoom("װ��", 0, 2000, 2000, null, true);
	SetBlur("װ��", true, 2, 500, 100, false);

//	StC(1000, @0, @0,"cg/st/st�׵�_װ��_�Ʒ�.png");
//	FadeStC(0,true);
	Fade("�}�ե�", 1000, 0, null, false);
	Zoom("װ��", 1500, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw�׵�_܊��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0230560a08">
������Ĥ�ݰ�ᦴ�������
��������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ϥ�����
	#av_ϥ��=true;

//�����ڤ�ϥ��

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	DeleteStA(0,true);
	Delete("װ��");

//�����ߣ�װ���ݳ�EV������Ҋֱ��
	CreateTextureSP("װ��b", 1500, @0, @0, "cg/ev/ev952_�׵�װ��_b.jpg");

//	FadeDelete("�}�ե�", 1000,true);

	Fade("�}�ե�", 1000, 0, null, true);

	WaitKey(1000);

	StC(1100, @0, @0,"cg/st/3dϥ��_����_ͨ��.png");
	FadeStC(0,true);

	FadeDelete("װ��b",500,true);

	WaitKey(1000);

	Fade("�}�ե�", 100, 1000, null, true);

	CreateWindow("�}�ݷ���", 4000, 512, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");

	CreateTextureSP("�}�ݷ���/�}����", 4100, -417, -160, "cg/bg/bg056_���L�����Tǰ_03.jpg");
	Zoom("�}�ݷ���/�}����", 0, 2000, 2000, null, true);

	CreateTextureSP("�}�ݷ���/�}����100", 4200, Center, Middle, "cg/st/resize/3d����_����_ͨ����.png");
	Move("�}�ݷ���/�}����100", 0, -1012, -661, null, true);

	CreateTextureSP("�}���������}", 3100, Center, Middle, "cg/st/resize/3dϥ��_����_ͨ��ex.png");
	Move("�}���������}", 0, -1114, -30, null, true);
	CreateTextureSP("�}����", 3000, -300, -200, "cg/bg/bg056_���L�����Tǰ_03.jpg");
	Zoom("�}����", 0, 2000, 2000, null, true);

	Move("�}���������}", 2000, -1114, -130, Dxl2, false);
	Move("�}�ݷ���/�}����100", 2000, -1012, -561, Dxl2, false);
	Move("�}�ݷ���/�}����", 2000, @0, @60, Dxl2, false);
	Move("�}����", 2000, @0, @-60, Dxl2, false);



	OnSE("se�M��_냇��_�i��01", 1000);
	FadeDelete("�}�ե�", 500, true);

	Wait(1000);



/*
	StL(1100, @0, @0,"cg/st/3dϥ��_����_�i��.png");
	StR(1000, @100, @0,"cg/st/3d����_����_�i��.png");
	FadeStR(300,false);
	FadeStL(300,true);

	WaitKey(900);

	DrawDelete("@StL*", 150, 100, "slide_02_01_0", false);
	DrawDelete("@StR*", 150, 100, "slide_02_01_0", true);
*/

	CreatePlainSP("�}��д", 20000);
	DeleteStA(0,true);

	Wait(32);

	Delete("�}��*");
	OnSE("se���L_����_��ͻ�M01", 1000);
	DrawDelete("�}��д", 150, 100, "slide_02_01_0", true);

//	CreateSE("�ґ�", "se���L_����_�ґ�02");
//	MusicStart("�ґ�", 600, 1000, 0, 1000, null,true);


//���\��

	CreateTextureEX("�}�ӣԣ�100", 1500, 0, InBottom, "cg/st/st�\��_ͨ��_˽��.png");
	Fade("�}�ӣԣ�100", 300, 1000, null, false);
	SetFwC("cg/fw/fw�\��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0230570b26">
��һ�����ˣ���

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0230580a00">
���㻹�пյ��ı��ˣ���

{	FwC("cg/fw/fw�\��_ŭ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0230590b26">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�ґ�", 1000, 0, null);



//���������\��



	OnSE("se����_����_һ�i", 1000);
	StR(1000, @0, @0, "cg/st/st�����AȾ_���L_�Ʒ�.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md03/0230600a00">
������������
�����ǽС���������û�뵽��������������
�ټ��氡����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0230610a00">
���ܲ��ɣ�����Ҳ��������ӵ��κεط��ġ���

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0230620b26">
�������ն�������
����Ȼ�᲻����ж�֮�˰ν�������

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0230630b26">
����������֮����ȡ�����Ǿ�û�취�ˡ�
��������֮���������������ɡ���

//��Ц��
{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0230640a00">
�������ߣ���

{	FwC("cg/fw/fw�\��_ŭ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0230650b26">
�����ϣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����A���褦�ʤΤ����¤Τ褦��ӛ�����Ƥ��ޤ� inc�Ѿ�
	SetVolume("@mbgm*", 2000, 0, null);


}

..//������ָ��
//�Υե����롡"md03_024vs.nss"