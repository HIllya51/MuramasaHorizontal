//<continuation number="450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_018.nss_MAIN
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

	#bg038_���`���åȥ��`��b_01=true;
	#bg038_���`���åȥ��`��b_03=true;
	#ev906_���٥�����_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma03_019.nss";

}

scene ma03_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_017.nss"

//����ϯ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm03",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ɳ����յ������£�Ԥѡ���ӽ�β����
���ٹ������Ӿ͵��涨ʱ���ˡ�

����ʾ���ϣ���ʾ�ŵ�ĿǰΪֹ�������������ߵ�Ȧ
�ɼ�����λ��
������ʱ��һ�㲻����ʲô�䶯�ˡ�

��Ŀǰ������λ�����辩����š�������Ȼ����λ������
���������ڳ����������оݵ㣬�ϸ�˵���ǹ�����ҵ��
���ϻ�ί���������ɳ��ģң�-һ����

����͡�������Ȯλ�е�����
����������˳����ɳ�㡢�����ɾ����ڻ��Ķ��飬֮��
��С��������˲��������Լ�����ĳɼ��������С���
��Ҳ�����С�

����Ȼװ�׾������Ŷ���Ȼ��ѹ���Ե�ǿ��

�������λ��ʮ�ġ�
����������Ҳ���Ƿܶ����ˡ���������ǻ�������ɣ�
���ǵİ����ȹ������ڻ�����ս��

����Ϊ����ľ����и������λ���ǰ������˳����
�����ģ����Ҳ���Ǻ������塣
����������������̫��ǿ�ˡ�Ҫ�Ƿ����¹ʾ͵ò���
ʧ�ˡ��Ҿ�����ʱ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����衿
<voice name="����" class="����" src="voice/ma03/0180010a04">
�������ٶȽ����ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180020a03">
����ѽ������ء�
����Ҫ�����𣿡����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_���٥󥸼���01");

	CreateColorEXadd("�ե�å����", 15000, "WHITE");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ת���������ŵ����ˡ�
��������������Ϯ��������Ҫת�����������

��ԭ����ˣ������������ٶȽ��ù����ˡ�������Ҫȥ
�����ˡ�
���������Ӧ���Ѿ��ع�һ�μ���վ�ˡ�

����������һ���̶ȵĳ�ʱ�侺�٣����ڱ�֤���ٶȵ�
�����ƽ�����ȼ�Ϻľ�������Ҫ������վ���͡�
��������ֻҪ���Ƿǳ�����·���ǲ���Ҫ�����εġ�

�������Ƿ����˴����������ĳ��ͻ���¹ʣ�

��һ����������һ�߹�ע����ɫ������ж���

������û�С���ȥ����վ��

�����ǻ�����ֱ����

�����š���

//��������������
{	Fade("�ե�å����",0,1000,null,true);
	FadeDelete("�ե�å����", 800, false);
	MusicStart("SE01",0,800,0,1000,null,false);}
��<RUBY text="������">��ը��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma03/0180030a00">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ɲ�Ǽ䣬�þ��������ҵ��ӽ硣
�������ƽ����Ĺ��ϡ��߻ӷ���ȼ������ը����ը��
���޻������л��ｫը�ɷ�ĩ����Ƭ������������

�����ǻþ���
��ֻ�����Ǵ��Ա����籬ը���������������Ҷ�����ǰ
ӳ��������

��ʵ����<k>
�������������������������⡣

��<RUBY text="������������">������������</RUBY>��
������ֱ���Ϸɳۡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥󥸡����å��塣
//��������Ĥ���ȥ饤�ȥ˥󥰤ʤ����顣
//�룺EVָ����ev906_���٥�����_b.jpg

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureEXadd("�}EV300", 3000, Center, Middle, "cg/ef/resize/ef023_���٥�_ֱ�M_l.jpg");
	CreateColorEXadd("�}ɫ100", 1500, "White");

	Rotate("�}EV300", 0, @0, @0, @-32, null,true);
	Move("�}EV300", 0, @-200, @+60, null, true);
	SetBlur("�}EV300", true, 3, 500, 200, false);

	CreateTextureEX("�}EV10", 1000, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	CreateTextureEX("�}EV100", 10000, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	CreateTextureEX("�}EV200", 1500, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");

	SetBlur("�}EV200", true, 3, 300, 100, false);

	Request("�}EV100", Smoothing);

	CreateTextureEX("Rollbg001", 100, InLeft, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
	Fade("Rollbg001", 0, 1000, null, true);

	CreateTextureEX("Rollbg002", 100, InLeft, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
	Fade("Rollbg002", 0, 1000, null, true);

	CreateSCR1("@Rollbg001","@Rollbg002",500,-4000, @0);

	OnSE("se����_�z_���٥�_����01",1000);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Fade("�}ɫ100", 0, 500, null, false);
	Move("�}EV300", 500, @+500, @0, Dxl1, false);
	Fade("�}EV300", 500, 1000, null, false);
	DrawTransition("�}ɫ100", 250, 0, 600, 100, null, "cg/data/slide_05_00_1.png", true);
	Fade("�}EV300", 250, 0, null, false);
	DrawTransition("�}ɫ100", 250, 600, 0, 100, null, "cg/data/slide_05_00_1.png", true);

	Wait(100);

	CreateSE("SE01","se����_��x_��������03_L");
	MusicStart("SE01",300,1000,0,1000,null,true);

	Shake("�}EV100", 5000000, 2, 1, 0, 0, 1000, null, false);
	Fade("�}EV10", 300, 1000, null, false);
	Fade("�}EV200", 300, 700, null, false);
	Zoom("�}EV200", 1000, 2000, 2000, null, false);
	Move("�}EV200", 1000, @+300, @0, null, false);
	Fade("�}EV100", 500, 1000, null, true);
	Fade("�}EV200", 1000, 0, null, false);

	CreateColorEX("�}��ܞ", 30000, "#000000");

	Wait(1000);

	SetVolume("SE01", 1500, 0, null);

	Fade("�}��ܞ", 1000, 1000, null, true);

	PrintGO("�ϱ���", 30000);

	SCR1stop();
	Delete("@Circuit*");

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

//���F�eϯ
	SetFwC("cg/fw/fw�׵�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0180040a08">
��ʲ������

{	FwC("cg/fw/fw�衩���װ_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0180050a07">
��Ӵ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥåȣ�
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg037_����������`��b_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw��·_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0180060b24">
���١���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Q��ϯ
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180070a03">
����������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0180080a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}k100", 1000, -1608, -426, "cg/bg/bg038_���`���åȥ��`��_01.jpg");
	CreateTextureEX("�}k200", 2000, -1608, -426, "cg/bg/bg038_���`���åȥ��`��_01 ���`��02.png");


	Move("�}k200", 2000, @-1320, @+200, Dxl1, false);
	Move("�}k100", 2000, @-1320, @+200, Dxl1, false);
	Fade("�}k200", 500, 1000, null, false);
	Fade("�}k100", 500, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��������˵�仰��û�ա�
�����ǿ���Ͷ��վ��Ͷ�����Ͷ����һ����ʮ����Ŀ�
��ͻȻ������ӵ��Ļ���ӵ���������ǵ��˶�Ӧ�û�˵
��ʲô����

�������ţ�ֱ�߱��۵���������������
��ͨ����ɲ�����١���<k>������������ζ�����������ô
�ߵ��ٶ����޷�ת��ģ�

����ײ�ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�ʩ`���
	CreateTextureEX("�}ef100", 3000, 0, -576, "cg/ef/resize/ef023_���٥�_���`��_l.jpg");
	SetBlur("�}ef100", true, 3, 500, 50, false);

	Fade("�}ef100", 200, 1000, null, false);

	OnSE("se����_�z_���٥�_����01",1000);

	BezierMove("�}ef100", 1000, (@0,@0){-512,-576}{-756,-400}(-1024,-211){-756,-150}{-256,-100}(0,-40), Dxl1, false);

	Wait(900);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	Delete("�}ef100");

	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������ǿ�й����ˡ�
���߾�ȫ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180090a03">
����ô���ܣ�̫���ˡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0180100a04">
����С�㣬��̫��³�ˡ�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0180110a02">
������һ����˵�����ǻ���н�����
�ղ��Ǹ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����������Ĺ��䡣
��û����̾���Ҳ��������Ч�ʡ�

��Ȼ��������֮��˳�������ˡ�
�����ǳ����ٶȡ�

���ǲ����漣��
�������������ţ��������ԳƵ��ϴֱ��ļ��ҷ�����Ȼ
�����š�

�������䡣
�����¡�
���������������

�����������Ĺ��ţ���塤��Ϯ�����Ӽ�����һ��Ҫ��
�������ˣ�ȫ��ͨ���ˡ�
���Ҳ��̶á�

����˲пᡣ
����˳��
����˵��ӡ�

����˸��ٶȵ�װ�����֡���
����ȥ�������ڹ���

���ܹ��϶���
���������˴�û�й���

����ˡ���
����ħ����������ﶼ�������ڹ���

�������ڳ�ֱ���ϡ�
���쵽��˵��һ�κ�����ʱ���ˣ���գ�۵�ʱ�䶼û�С�

����������䡭��
��<RUBY text="������">ͨ����</RUBY>��

������ѱ�����������ֲ�ʹ���ǳ�������ֻ����Է���
ͷ������ͨ������������Ȩ��������λ��������ǰ��
��ͨ��
����һ�������׿����������������

������Ѳ����ʺ��ñ�����һ���ݴ��ˡ�
����������������������ǿ���������

�����ǡ���
�������ı�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥå�
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg037_����������`��b_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0180120b24">
������������
������������

//����·��
<voice name="��·" class="��·" src="voice/ma03/0180130b24">
��������ľ���������

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0180140b24">
��������ľ���<RUBY text="��">��</RUBY>��!!��

//����·��
<voice name="��·" class="��·" src="voice/ma03/0180150b24">
������һ�������ܳ�Խ�ˡ���
����Խ���硭����

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0180160b24">
�����ܹ�������Խ����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥�
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg038_���`���å�ֱ��_01.jpg");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	CreateTextureSP("�}����200", 200, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	Shake("�}����200", 5000000, 2, 1, 0, 0, 1000, null, false);
	FadeDelete("�ϱ���", 500, true);
	OnSE("se����_�z_���٥�_����01",1000);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���١�
<voice name="��" class="��" src="voice/ma03/0180170b42">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Q��ϯ
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180180a03">
������β����<RUBY text="����">�仯</RUBY>�š�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0180190a00">
����ξ���£���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180200a03">
�����ڶ���
�����ĺ�β���ڶ������ڽ������ʱ������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180210a03">
�������ᴵ���������������ɢ�ˡ�
�������ܿ��ܡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0180220a00">
����������
����ô˵������������˵������

//��������
<voice name="����" class="����" src="voice/ma03/0180230a00">
����������<RUBY text="������">�ɱ�ʽ</RUBY>β��֧����һ���롣
��û�뵽�����˰�����ʵ�û��ˡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0180240a04">
��������ǿ��������ơ�
�������͵�װ�ס�
���ͽǶȵı�������
���ɱ�ʽβ������

//�����衿
<voice name="����" class="����" src="voice/ma03/0180250a04">
�����������ֱ���ϵı�����
�������������Ĺ���������
���������ǹ��ֵ����尡����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0180260a00">
��������ȷʵ����<RUBY text="����">˼��</RUBY>����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180270a03">
���ǵġ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0180280a02">
����Ҳ�����ס�
��������̨������Ҫ���ߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����Ϯ��ոչ������������
���ص���ֱ�����������ţ�����˻�׼�ߡ�

���ɼ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0180290a02">
��<RUBY text="����������">��Ļ�����</RUBY>��
������Ψһ��׼��ֻ������һ�㡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��һ�ֶ�ʮ���멖�ˡ�
��������Ϯ�ｨ�����˽������辩�������
�ĵڶ����ĳɼ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���F�eϯ
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw�׵�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0180300a08">
������������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0180310a07">
����ô������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0180320a08">
���ߡ��ߡ�
��û��ϵ�����������������
����Ҳ������Ȥ�㡣��

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0180330a08">
������Ǻܿ�����Ϊ��Ĵ�������Ŷ��
���������ķܶ��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(400);

	SetNwC("cg/fw/nw�߼�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0180340e284">
�������ߡ�
����ɲ��С�����Ԥ��֮�⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
	ClearWaitAll(2000, 1000);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma03/0180350a00">
����������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0180360a02">
����ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����ޱ��˷ܵĹ���ϯ�С�
���Һ�Ȼ�����۾���������������Զ�ķ����䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma03/0180370a00">
�����������¹��𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0180380a04">
��ð�����ء�������ɳ���ϰ�����
��������ʲô�����¹ʡ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180390a03">
����ѽ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0180400a04">
����С�㣿��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180410a03">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0180420a00">
����ξ����ô�ˣ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180430a03">
���������ˡ�
�������Ǹ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0180440a00">
���ǡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0180450a03">
�����Ǿ���ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_019.nss"