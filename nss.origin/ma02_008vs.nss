//<continuation number="740">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_008vs.nss_MAIN
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
	#bg022_ɽ��a_02=true;
	#bg004_�ɤӤ���a_01=true;
	#bg014_�`�}���A��_02=true;
	#ev951_С̫��װ��_a=true;
	#ev951_С̫��װ��_c=true;



	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_��ɽ����λ=true;

	$PreGameName = $GameName;

	$GameName = "ma02_009vs.nss";

}

scene ma02_008vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_007.nss"


//��ɭ
	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg022_ɽ��a_02.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm32",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
������������ڽ���Ů�͵���ɭ�ֵĳ��ڣ��ٴν���
ɭ���ʱ�ѽ�������ʱ�֣�����һƬ��ơ�
����˵�������ڿ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0,@0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0010a00">
����㡣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/008vs0020a01">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����Ȼ����֮�۲��ǻ���ҹ�����Ч�������ǲ������
�������ڡ�
�����ɷ��ϵ���̽���������Ժ���Ϯ��Σ���������ˡ�
���ܵĻ�������������˶ϡ�

�����������ط���ս��֮ʱ�����������Сʱ��
ʱ��Ӧ����ȫ������������ĵġ�
������������ǿ����ҲӦ����ǿ����֮������ж���

���䲻���ڴ�������ԣ����ҲΪʱ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/ma02/008vs0030a01">
���Ǹ�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0040a00">
��ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/008vs0050a01">
�����и��뷨��
���ղ��ǹ���Ȼ����ְ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0060a00">
���������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������ǵ�ĩ�ᣬ����������ء�
����������Ȼ����ˣ���δ��û�вд������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/ma02/008vs0070a01">
������˵�����������˵��Ҳ�ǡ�
��������ô�󣬾������ٶ��ʳ��Ҳ�����ԡ�
�����ǹ���ȫ���������ļ���ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0080a00">
����ȷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Ȼ˵�����֡�
��ȴҲ����l��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/ma02/008vs0090a01">
�����ң����������Ϊʲô��Ϯ�����ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0100a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������Ұ�������ǣ����Ŷ����ײк�ǿ��
�ܻ�Ϊ��������ִ�ɡ�
����������������������Ȯ�Ʋ�ͬ����Ӧ�������ж�
Ϊ����ԭ��

��������Ϊ�Σ��ڲ���֮ʱ����Ϯ���������
�鷳�������ء�
������������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/ma02/008vs0110a01">
������˵��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0120a00">
��Ŷ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/008vs0130a01">
���ǻ�����˭����<?>
{	Wait(300);
	SetVolume("@mbgm*", 100, 0, null);}
����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�᤺����01",1000);

	Move("@StR*", 150, @+150, @+30, Axl1, false);
	DeleteStR(150,false);

//������
//���������ܤ�
	CreateColorEXadd("�}ɫ100", 1000, "White");
	OnSE("se���L_����_���02",1000);
	Fade("�}ɫ100", 0, 1000, null, false);
	DrawTransition("�}ɫ100", 50, 0, 600, 100, Dxl1, "cg/data/crow_01_00_0.png", true);
	DrawTransition("�}ɫ100", 300, 600, 0, 100, Axl1, "cg/data/crow_01_00_0.png", true);
	Delete("�}ɫ100");

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0099]
��������צ��
����ʲô�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ݳ�
//���ܤ���
	OnSE("se���L_����_���02",1000);
	CreateColorEXadd("�}ɫ100", 100, "White");
	Fade("�}ɫ100", 0, 1000, null, false);
	DrawTransition("�}ɫ100", 100, 0, 600, 100, Dxl1, "cg/data/crow_02_00_0.png", true);
	DrawTransition("�}ɫ100", 300, 600, 0, 100, Axl1, "cg/data/crow_02_00_0.png", true);
	Delete("�}ɫ100");

	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);


	Shake_Delete(2000,300,true,"cg/bg/bg022_ɽ��a_02.jpg");
	OnSE("se����_����_�᤺����01",1000);
	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0140a00">
����������!?��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/008vs0150a01">
�����ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ݳ�
//������֩����
//�����󤫤󤬤��`��
	OnSE("se���L_����_���02",1000);
	CreateColorEXadd("�}ɫ100", 1500, "White");
	Fade("�}ɫ100", 0, 1000, null, false);
	DrawTransition("�}ɫ100", 100, 0, 600, 100, Dxl1, "cg/data/crow_02_00_0.png", true);

//�룺SE���礯�¤�
	OnSE("se����_����_֩������¤�01",1000);
	CreateTextureEX("�}ef100", 2000, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	CreateTextureEXadd("�}ef200", 2100, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	SetBlur("�}ef200", true, 3, 500, 100, false);

	Fade("�}ef100", 100, 1000, null, false);
	Fade("�}ef200", 0, 1000, null, true);

	Zoom("�}ef200", 500, 2000, 2000, Dxl1, false);
	Fade("�}ef200", 500, 0, null, true);
	Delete("�}ɫ100");

	CreateColorEX("�ե�å����", 15000, "WHITE");

	OnSE("se���L_����_��ꪏ���01",1000);

	Fade("�ե�å����",0,1000,null,true);

	Delete("�}ef100");
	Delete("�}ef200");

	Shake_Delete(2000,700,false,"cg/bg/bg022_ɽ��a_02.jpg");

	Fade("�ե�å����",1000,0,Dxl1,true);
	Delete("�ե�å����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0109]
�����ӡ������ԡ�
�����ǰ����Ĺ�ԣ����и����ķ��㣡

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ɽ����λ��Գ��
//�룺���ǈ��ݳ����ã����ɣ��
/*
	StL(1000, @100,@0,"cg/st/3d��ɽԳ_���.png");

	Move("@StL*", 300, @-100, @0, Dxl1, false);
	FadeStL(300,true);
*/

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0160a00">
���������У���

{	NwC("cg/fw/nw������.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0170b35">
�����ǡ�
����Գ����Ϊ��ɽ����λ����������
�ഫ֮���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С̫��
	StC(1000, @0,@0,"cg/st/stС̫��_ͨ��_˽��.png");
	FadeStC(500,true);

	Wait(500);

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0121]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0180a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������Ů��������Ϣ�ش���Ӱ�����֡�
��Ȼ�����������������������������˵ġ�

����һ�����ġ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fwС̫��_�Գ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0190b35">
���Ǻǡ���������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0200a00">
������!?��


{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0210b35">
�����к������Щ��³�ɡ�
���벻Ҫ���֡��Ϸ�ͽ��ж����ڴ�ɽ��
��������������Ұ���ж��ǳ������ԡ�����


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0220a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���Ƶ������޵���Ů�Ӵ�����¶��˻�Ƶ�������
�������γ�������֮���޴ʿɱ�ʵ��Ƿȱ��ʵ�С�

�������Ǻ��꣬���������ء�
���������˸��ֳ��������޴��뷨��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0230a00">
���������Գ���Ϊ���˼��𡣡�

{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0240b35">
���Ǻǡ������������Ѿ��ϵ�һ����Ϳ�ˡ�
��������ǡ������������������������˵
����Ҳ���˲���������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����Ǻǡ�������Ů���ñ�����ɣ�Ĳ�������Ц����
�����ⲻ�����ʶ��ӵĻþ�������ʲô��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0250a00">
�����������ˣ����ŵ�<RUBY text="����">Ϸˣ</RUBY>���к���
����ô����Ŀ��Ҳ��Ȼ���ˣ���ô���
û������ɣ���


{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0260b35">
���޷����޷���
�����⸱�Ϲ�ͷ��ɽ����Ϊ�˱�����Ϊ������
�ط��ٳ��ࡣ���ź����޷������Ϊ����
��̸�Ĺ�ϵ�������ٵ��¡���


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0270a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���ǵط��ٵ����¡�����������ˡ�������Ҳ��
����֮�С���˵���Ž��������ǳ������ϡ�
��Ȼ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0280a00">
���Ҳ��ǵ��Լ����ڵط�����ǰ�Գƾ��졣
��˵�����Ҹ�����û¶�������ɡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0290a00">
���������˼ң���������ԥ�ع������ҡ���

{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0300b35">
��ֻ�������˸����Ϸ���ѡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0310a00">
�����ǡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤���ѩ܇�
//�����롤�`�}��ͨ���ѩ܇���һԒ��
//��ɭ

	SetVolume("@mbgm*", 300, 300, null);


	CreateColorEX("�ե�å����", 15000, "WHITE");
	OnSE("se�M��_�ե�å���Хå�01",1000);

	Fade("�ե�å����",0,1000,null,true);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg004_�ɤӤ���a_01.jpg");

	CreateTextureSP("�}����200", 2100, 618, InBottom, "cg/st/stѩ܇�_ͨ��_˽��.png");
	CreateTextureSP("�}����300", 2100, 106, InBottom, "cg/st/st����_ͨ��_˽��.png");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");

	Fade("�ե�å����",300,0,null,true);

	WaitKey(1000);

	Fade("�ե�å����",0,1000,null,true);
	OnSE("se�M��_�ե�å���Хå�01",1000);

	Delete("�}����*");

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg014_�`�}���A��_02.jpg");
	CreateTextureSP("�}����200", 2100, 618, InBottom, "cg/st/stѩ܇�_ͨ��_˽��.png");

	Fade("�ե�å����",300,0,null,true);

	WaitKey(1000);

	Fade("�ե�å����",0,1000,null,true);

	Delete("�}����*");
	Delete("Memory_cover");

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	SetVolume("@mbgm*", 500, 1000, null);

	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0320a00">
���Ǹ������ȵĻ쵰��
���ǵá����ǽ�ѩ���һ�ء���

{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0330b35">
���ƺ�������֪����
��������ʲô��Ե�����𣿡�

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0340a00">
����������·�ϴ��˸����档
�����ǣ����ܲ���˼��������ֵط��ٻᣬ
�Һ����⡭����Ҳ�ǵط��ٵ�Э�����𡣡�

{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0350b35">
��������С�вŸɡ������ɱ������
��������ǣȣ���<RUBY text="�����">�ӵ�</RUBY>�ͺ����˷��ġ�
������˵�Լ������ȵģ�����ν��
�������Ѿ����ã�˵�ľ��������ˡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0360a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��ԭ����ˡ�
���������ǵط�����ǣȣѵ��м��ˡ���ô���ղ����
�峤լۡ��Ϊ���������ξ��������

��Ȼ������ʧ���ˣ����ǻص��ط�����ߡ�
����������������ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0370a00">
�������������������

{	FwR("cg/fw/fwС̫��_�侲.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0380b35">
��˭֪�������������ء�
������æ�ġ�����

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0390a00">
��������

{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0400b35">
���Ǻǡ�
����Ȼ��ɢע������������Ҳ��������Ϸ�
�е��į����

{	FwR("cg/fw/fwС̫��_�Գ�.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0410b35">
���ѵ��Ϸ���ô�ڴ�����

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0420a00">
���������Ǻ��⣿��

{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0430b35">
���۸������Ĵ���Ҳ����е����ˡ��������
�������������ġ�
��������ν������֮̾���ǡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0440a00">
����������
���������ʸ����⣬�������ط��ٵ������ǣ�
�ѵ�Ҫ˵Ŀ����Ϊ�����𣿡�

{	FwR("cg/fw/fwС̫��_�Գ�.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0450b35">
����ô�ᡣ�Ϸ�û��ô�С�
���������е��á���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0460a00">
��������

{	FwR("cg/fw/fwС̫��_�侲.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0470b35">
����Ǯ����Ȼ�����ʣ�������ҪǮ��
�������������̷�ĳ������֮�ң�����һ��
����֮ǰʧ���ˡ�
�����˾��õĲҾ�����

{	FwR("cg/fw/fwС̫��_����.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0480b35">
���ܵ�Ӱ������ǣ�����ݵ����붼��ʧ��ʣ�µ�
ֻ�����ȵ����ء��������ܲ���
��ʵֻ�н᲻����ʳ����խɽ�ء�
�ǣ�ֻ�ܿݵ���������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0490a00">
�������������ʿ��������
���ǽ����ǡ�����

{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0500b35">
����Ȼ��û�չ���
����·��ٸ��󷢴ȱ����ŵ��ԷŹ������ǡ���
֮�󲻾þ���ǣȣѵĽ������Ի�Ϊ�����ˡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0510a00">
����������

{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0520b35">
����ʱ���ֵľ��������ˣ�ѩ���һ�ء�
���������Ϸ��и����˴����ڿ�ɽ����ƣ�
����֤���Э���Ļ��ʹ��ǣȣ�ȡ�ؽ��С���

{	FwR("cg/fw/fwС̫��_�侲.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0530b35">
���Ϸ���ô���ܲ��Ϲ��أ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0540a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�ե�å����", 2500, "WHITE");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");

	Fade("�ե�å����",0,1000,null,true);
//	OnSE("se�M��_�ե�å���Хå�01",1000);
//	Delete("�}����*");

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg014_�`�}���A��_02.jpg");
	CreateTextureSP("�}����200", 2100, 618, InBottom, "cg/st/stѩ܇�_ͨ��_˽��.png");

	Fade("�ե�å����",300,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����������֡�
��
�������ԷŹ�һ˿�ɻ�

����Ϊѩ������ˣ�<RUBY text="����������������">�ж���̫��������</RUBY>��
��һ�ߵ�Ļ�������鰲��һ�ߵ���פ��ȥ��ͷ¶��
�����ߵ��м��ˣ�������������Ҳ����֡�
������������Ĵ�����֮һ��

�����������ھֲ�����Ϸǳ������ӵ��ˣ����ܱ���
���󣬱�����<RUBY text="����">��ʹ</RUBY>֮�ˡ�
�Լ�����ȥ�������⡣��ʹ����ô�������ɵĹ���������
�߶�ı���Ҳ����������

��ǰ����������Щ�����Ļ���ѩ���Ծ���ж���Щ
�������ɡ�
��<RUBY text="������">��������</RUBY>��<RUBY text="�ǣȣ�">��������</RUBY>�н�������ɳƲ������ɡ�

������˵Ҫ�黹���еĻ�Ҳ���ɵ㡣
���ǣȣ����ڵĴ�ʩ�ǽ�ֹ��������������
Ŀǰ�������ޡ���������˳��н��У�
�����ȡû�մ�ʩ��

��Ȼ��û�յĽ��д󲿷ֶ�������ˡ��������Ի�
�������⣬�ãǣȣ�ʿ���кܶ಻��֮�������Ǿͱ�
��Ϊû�����ü�ֵ����������ˣ����л��ǽ��С�

����Ϊһ��������Ա��Ҫ������׵ش���������ʵ
�������š�ֻ��������ʲô<RUBY text="����">��Ļ</RUBY>��
�����������ҵ����ʣ���ǰ�Ĺ��˿�ʼ�ܽ�˵����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�ե�å����",0,1000,null,true);

	Delete("�}����*");
	Delete("Memory_cover");

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	SetFwR("cg/fw/fwС̫��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0550b35">
��Ȼ�������㡣
��Ϊ������һ��ͱ�����ɵط��ٵļƻ���
��Ȼ��ˣ��ط��ٵĵ��˾����Ϸ��
���ˣ������������ɾ������ĩ�ա���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0560a00">
�������������������ˡ�
��������Ϊ�����������Ҳ�ǲ������𣿡�

{	FwR("cg/fw/fwС̫��_�Գ�.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0570b35">
���ţ�����ô�������Ϸ�˵���Ļ���
ʲô����ǿʳ������Ǹ���
����ǳ�ϣ���Ļ�Ҳ���ǲ���˵������˵���˺�
�����˶��������߳��𣿡�

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0580a00">
����ȫû������

{	FwR("cg/fw/fwС̫��_�Գ�.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0590b35">
���Ǻǡ�
������������ȥ����

{	FwR("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0600b35">
���ն��������¡���û��ɣ�
�������������Ϸ򳢳��Ǳߵ�֩��
������������ζ�˰ɣ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0610a00">
������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/008vs0620a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���������ˡ�
�������������κ���˵���Ĵ���֮�¶�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0630a00">
�����˼ҡ���
����֪����δ��̫���˰ɣ���

{	FwR("cg/fw/fwС̫��_�Գ�.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0640b35">
���ߡ���

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0650a00">
��������

{	FwR("cg/fw/fwС̫��_Ц��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0660b35">
����������������̫�������ɣ�
����ɽ!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ɽ��Գ
//���Х�`����ɽԳ���z�ѩ`�Ĥ˷��x
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se����_�z_װ��03",1000);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	DeleteStC(0,true);

	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");



	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0670a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С̫�ɡ��ؤ�ǰ�ǁI�֤��ؤͤ롣����ʤ��褦��
//��϶�g��դ��ơ����֤��ϡ����֤��¡��͇��ģ��

//�룺���������顢װ���ݳ�


	CreateTextureEX("�}�ţ�", 4110, Center, Middle, "cg/ev/ev951_С̫��װ��_a.jpg");
	Zoom("�}�ţ�", 0, 1500, 1500, null, true);
	SetBlur("�}�ţ�", true, 2, 300, 100, false);

	OnSE("se����_�z_װ��01",1000);
	OnSE("se����_�z_װ��04",1000);
	Zoom("�}�ţ�", 1600, 1000, 1000, Dxl2, false);
	Fade("�}�ţ�", 1600, 1000, null, true);

	Wait(500);

	SoundPlay("@mbgm08",0,1000,true);

	SetFwL("cg/fw/fwС̫��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0680b35">
����ã���磬���������������������ޡ�
�ˡ��죬��ս������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
//��I�֤����Ҥˎڤ��롣ָ���Ϥ����ƤĤ�
	StC(1000, @0,@0,"cg/st/stС̫��_װ��_˽��b.png");
	FadeStC(300,true);
*/
	OnSE("se���L_����_ͻ�M01",1000);
	EffectZoomadd(10000, 500, 100, "cg/ev/ev951_С̫��װ��_a.jpg", true);

	SetFwL("cg/fw/fwС̫��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0690b35">
�������Ľ磬���š�Ե�����������𣬸�ս����
��������������������������������������
����ʮ������ʮ�磡��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//�����ߡ���ɽ����λ
	#av_��ɽ����λ=true;

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	CreateTextureEX("�}�ţ֣�", 4110, Center, Middle, "cg/ev/ev951_С̫��װ��_c.jpg");
	CreateTextureEX("�}��ţ֣�", 4110, -700, -575, "cg/ev/resize/ev951_С̫��װ��_c_l.jpg");
	SetBlur("�}�ţ֣�", true, 1, 500, 200, false);

	OnSE("se����_�z_װ��02",1000);

	Fade("�ե�å����",1000,1000,null,false);

	Zoom("�}�ţ�*", 1000, 1500, 1500, Axl2, true);

	Fade("�}�ţ֣�", 0, 1000, null, true);
	Fade("�}��ţ֣�", 0, 1000, null, true);

	Fade("�ե�å����",500,0,null,false);
	Move("�}��ţ֣�", 2500, @0, @575, Axl3, false);
	Wait(2200);
	Fade("�ե�å����",200,1000,null,true);

	Wait(50);
	Delete("�}��ţ֣�");

	OnSE("se����_�z_װ��03",1000);
	Zoom("�}�ţ�*", 2000, 1000, 1000, Dxl2, false);
	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");

	Wait(1500);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}�ţ�*");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg022_ɽ��a_02.jpg");
	Rotate("�}����100", 0, @0, @180, @0, null,true);

//�룺���˥ᒷ���趨
//	DeleteStC(0,true);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


//������
//���������z�ѩ`�Ĥ˷��x
//�����֤�򸲤���ƬĿ��Җ��

	OnSE("se���L_����_�z_���01",1000);

	StC(1000, @0,@0,"cg/st/st����_װ��_˽��a.png");
	FadeStC(500,true);

	SetFwL("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0695a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֤�ǰ����Ф�
	CreateColorEXadd("�}ɫ100", 1500, "WHITE");

	OnSE("se����_�z_װ��05",1000);

	Fade("�}ɫ100", 100, 1000, null, true);
	StC(1000, @0,@0,"cg/st/st����_װ��_˽��b.png");
	FadeStC(0,true);

	FadeDelete("�}ɫ100", 500, true);


	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma02/008vs0700a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//�����ߡ��������l�Tξ����

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	OnSE("se����_�z_װ��04",1000);
	OnSE("se����_�z_װ��02",1000);
	StC(1000, @0,@0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStC(0,true);

	Wait(500);

	Fade("�ե�å����",2000,0,null,true);
	Delete("�ե�å����");

	Wait(1500);

//����������ɽ

	CreateWindow("������ɥ���", 15000, 0, 0, 1024, 288, false);
	CreateWindow("������ɥ���", 15000, 0, 288, 1024, 576, false);
	SetAlias("������ɥ���","������ɥ���");
	SetAlias("������ɥ���","������ɥ���");

	CreateTextureEX("������ɥ���/�}����01", 3600, 0, 0, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	CreateTextureEX("������ɥ���/�}ga01", 3600, Center, -250, "cg/st/3d��ɽ_����_ͨ��.png");

	Move("������ɥ���/�}����01", 0, @-200, @0, null, true);

	CreateTextureEX("������ɥ���/�}����01", 3600, -1024, 0, "cg/bg/resize/bg003_�Ĥ�Ұ_02.jpg");
	CreateTextureEX("������ɥ���/�}mura01", 3600, -1, 134, "cg/st/3d�����˜�_����_ͨ��.png");

	Move("������ɥ���/�}����01", 0, @+200, @0, null, true);
	Move("������ɥ���/�}mura01", 0, @-200, @0, null, true);
	Move("������ɥ���/�}ga01", 0, @20, @0, null, true);

	Move("������ɥ���/�}����01", 2900, @+200, @0, null, false);
	Move("������ɥ���/�}����01", 2900, @-200, @0, null, false);

	Fade("������ɥ���/�}����01", 300, 1000, null, false);
	Fade("������ɥ���/�}����01", 300, 1000, null, true);

	Move("������ɥ���/�}ga01", 2500, @-300, @0, Dxl1, false);
	Move("������ɥ���/�}mura01", 2500, @+300, @0, Dxl1, false);

	Fade("������ɥ���/�}mura01", 1000, 1000, Dxl1, false);
	Fade("������ɥ���/�}ga01", 1000, 1000, Dxl1, false);

	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0710b35">
����ģ�����������С̫�ɡ�
������ɽ����λ����

//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0720b35">
���ռ����ߴ������Ϸ�ǰ����̣���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/008vs0730a00">
��!?
����ħ����С̫����!!��

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/008vs0740b35">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���w��

	OnSE("se���L_����_���ϕN01",1000);


	CreateColorEX("�ե�å����", 20000, "WHITE");
	Fade("�ե�å����",300,1000,null,true);

	Delete("������ɥ���/*");
	Delete("������ɥ���/*");
	Delete("������ɥ���");
	Delete("������ɥ���");

	Wait(2000);


}

..//������ָ��
//�Υե����롡"ma02_009vs.nss"



