//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_006.nss_MAIN
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
	#bg005_ɽ��_01=true;
	#bg022_ɽ��a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_005.nss"

//��ɽ�С��е�
	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg005_ɽ��_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm26",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
�����֮ʱ�ѱƽ���ĺ��
�����ڴǱ�峤լۡ���ֻ�������ʱ��֮�ʰɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/ma02/0060010a01">
������״����Σ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060020a00">
������˵�ܺã���Ҳû���⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ǹ�Ա��һս����������޶����������ڵ�
<RUBY text="��·��">����</RUBY>��ͨ��Ҫ�ֲ��������ģ�
���˽�ʳ����Ϣ����������������ȡ����������ʳ�
��֤��Сʱ���ϵ�˯��ʱ�䡣

��������״�ǣ�Ѹ���ж���������ȷ�����������
���ܸ��ǹ�Աʱ�䣬�������˵Ļ��ᡣ�������ˣ�
���ҿ�����δʮ�ְ���״��������������ʤ׷����
�ͻ�ʧȥ��ʱ��

���ڴ��Ӿ�ͷһ�Ƿ��ֵ��ӻ��������������
����ʳƷ����΢������Դٽ���������й֮��
������Ϣ��
��������Сʱ��

����Ȼ���̶ֳȵĲ���ֻ�Ǳ�ʲô��������΢��
һ�㣬����Ϊ�᲻�û�����ȥ������ʳ������Ҳ
û�б�İ취��
�����̶ֳ�Ӧ��Ҳ����ס��ʱ���ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma02/0060030a00">
����ʱ��װ�ף�ֱ��ȷ�ϵ�Ӱ��
�����ǵ�ͻϮ�Ŀ����ԣ���������Σ�գ���Ŀǰ
Ҫ�������������Ľ�����͡���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060040a01">
�����ء���
��������û�з����������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������һ��δ��������޹���·�ϡ�
�������������Ӱ������Ϊ����û��ũ���Ե�ʣ�
������ǳ��¼��������ű��Ų����أ�����˵��
ֻ����Ϊ�ѽ��ƻ裿̧��һ��������Ϧ�����¡�

��Ҫ��ҹĻ����֮ǰ��ʰ�ɾ���
������ʵ�������ء�����û��ô���ס�

�������������
������֮���ֱ�������ˮ��Ͱ׹�뾮�׵��ٶ�
����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma02/0060050a00">
����˭����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060060a01">
���ף���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060070a00">
���ң�����˭������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060080a01">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060090a00">
����Ӧ�����������衣��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060100a01">
��������ô����Ը��ħ�ıӻ���Σ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060110a00">
�����Լ����к����壿��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060120a01">
���ҵ���˼�ǣ��������ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060130a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060140a01">
��������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060150a00">
���������ˡ�
����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060160a01">
������û��������
�����¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��Ϧ�����£���ҹ����Ӱ����߽����Ƚ���
���Ҽӿ��˽Ų���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ɽ�С��o��
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ƫ����ͨ������֮��ɽ����·������ɭ�֡�
��������λ��Ա����ŵ��Ѿ��ǳ���������ǵ�׹��
���µ����飬�����ų����ܽ���Զ�����ƶ��Ŀ����ԡ�
Ҫ�ҵ��������ѡ�

�����������ּ�Ĵ���ǰ�У�����Ҫע�ⲻ����ʧ��
����
������κ�ʱ���Ե�ʣ��Ѿ�������������̫����
�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma02/0060170a00">
��Ӧ����һ����Ϥɭ�ֵ�ָ·��ô��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ͻȻ������뵽��
�������޴����뷨��

������ȫ���޷��õ���֤��״���£�����û����ԣ
���Ҹ�����ͬ��
����������ļ����շ������ĵ���ų��

�����ֵ�ָ��Ƕ�����ֵ����ġ�
����ʹ֮��΢΢����ʶ�����˺ȳ⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma02/0060180a00">
������Ϣ�𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060190a01">
���ԡ���<RUBY text="ĸ��">���Ǻ�</RUBY>�ġ���ֻ��
���ζ�������Բ����д�
��ȷʵ���ڸ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060200a00">
��ȷ�е�λ�á������ǲ�֪��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060210a01">
���Ҷ��ǹ���Ϣ�Ĳ�׽�����������б����
<RUBY text="����">̽�˻���</RUBY>���ÿɿ���
�����Ӿ�ȷ��λ�þ��޷������ˡ�������������Ұ
��Χ�ڣ�����ȷ���ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060220a00">
���Ǳ�û�з�Ӧ��
��͸��<RUBY text="�״�">̽�˻���</RUBY>��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060230a01">
�������ڵر����������ֵ��εĻ������ѡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060240a00">
������ȷʵ��
���޴������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ڱ������֮��ĳ�����̽����ܲ���������������
����ӵ������<RUBY text="�������򡡣������">½ս�����������</RUBY>����ǿ�����Դ̽�⣬
Ҳ�������һ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma02/0060250a00">
������ʵʵ���������ɡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060260a01">
�����ء�
�������ȷ�Ͻ����ҡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060270a00">
��Ҳ����˵���Դ���<RUBY text="�ã������">��λ����</RUBY>��
������а�������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060280a01">
���ǰ�����Ҳ�ܸж����Լ��Ķ�Ŷ��ա���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������Ƿ�ѵĽ��д���ֱ�Ӵ����������ұ���
�����ֺ�֮�д���ǰ�С�
��Ӧ�û�δ����ɭ�����ȴ���޷���ʶ���Ժη�
��ȥ��η�������������������

�������ڳ���֮�£���������������ɢ����
��������ɫ������ʱ�̣������˿������϶�ֻ��
���Ϊĥ������������ͼ��ɱһ�����Ϊ��

������Ҫ����ѡ���Ǿ��Ǻ��߰ɡ�
�������Ŀ�����֦������ȥ�����ʺ����Ҷ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/ma02/0060290a01">
�������ƺ������������ﴫ���ı�����Թ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������˵����
���ƺ�����˼����ͬ�������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma02/0060300a00">
����˵һ��˵���ھͻ��ٻ����ġ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060310a01">
�����̸����Щ���ͻ���棿��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060320a00">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������������`���ǡ�
	CreateSE("SE01","se����_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0179]
//��������
<voice name="����" class="��������" src="voice/ma02/0060330a01">
�����������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060340a00">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���ű�ײ����ʲô������
������������������ˮ��ˢ��¶���ġ�

��ȷ��Ь��û�����ٴ������Ų���
���ⷽ�滹��ע��Щ�ȽϺá���Ȼ���������ˣ�
��Ь�ӻ��˵Ļ����޷�������·�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/ma02/0060350a01">
��û�°ɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060360a00">
��û���⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�ǆ���01");
	MusicStart("SE01",0,500,0,800,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/ma02/0060370a01">
����˵����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060380a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��ͣ�½Ų���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="��������" src="voice/ma02/0060390a01">
���ոգ������û��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060400a00">
����Ҳ����ô��ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��������Χ��
��û��һ������������עĿ��һ�ɲ���Ĺ⾰��

{	CreateSE("SEL01","se��Ȼ_�L_Ұԭ01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);}
��������䡣
�������ž���ʲôҲ����������ȴ��������Ҷɳɳ��
��Ȼ������û���κ�ֵ�������������

����������ݼž�ȴ�����ò����ڼ���Ļ�������
������ʵ�С�
����˻������޷���Ϊ����������Ĵ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma02/0060410a00">
��������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060420a01">
����Ҳ��ô�롣Ұ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060430a00">
���о��Ǹ���һЩ��Ұ�ޡ�
��֪����λ���𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060440a01">
��֪����֪������Ҫȥ�𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060450a00">
��Ұ�޲���û�����ɵغ��С�
���������ǹ����Ե���������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060460a01">
�����������˼�ǣ��������˱�Ϯ���ˣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060470a00">
�������Ұ�޼����ִ��Ӧ��Ҳ������
��һֻ�������������𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0060480a01">
��ȷʵ��
�������ˣ������߰ɡ��Ҵ�·������ϡ�
Ӧ�����ⲻԶ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
	SetVolume("SE*", 1500, 0, null);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitPlay("SE*", null);
	WaitKey(1000);

	SoundPlay("@mbgm13",0,1000,true);

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0256]
���������õ�Ԥ��Ӧ���ˡ�
������֮��������ˡ�

�����ˡ�
�����˱����ң��еȳ����ѧ���������Ǵ����
�������𣿡���˫�ֱ����Լ����ȣ���
<RUBY text="��������">ʲô����</RUBY>ǰ������һ�š�

����ʲô��
�������Ѱ��������������ȥӦ�ûᱻ��Ӱ
��ס���ѿ��塣��<RUBY text="��">��</RUBY>ȴһĿ��Ȼ��
Ҳ����˵�����Ǳ�Ѱ����

{	OnSE("se����_����_�ǆ���01",1000);}
������Ӧ����ɽȮ���ʹ��ﳣ���Ĺ���������֮��
��¶�׹⣬ë�����ҡ�
����������ֹ�������Ϊ�������ǡ����Դ�������
��������������������ɽҰ��Σ�յ�Ѳ���ߡ�

��������������ȴ�ܹ��졣
�������൱��С�͵��ܡ������Ժ���ֱ����Ӧ����
�ﵽ�˵ĸ߶ȡ����ع���Ҳ������ͨ�Ĺ���


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="��������" src="voice/ma02/0060490a01">
�����ǹ��¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����������ĵ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/ma02/0060500a01">
������һֱ�������Ǻ�������Ұ�޹����𣿡�
�Ǹ����壬Ӧ�ò����ܽ������ɭ�ֵĶ���
��������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�����������ʱ�ʾ��ͬ��ȷʵ��֡�
���Ǹմӱ����ܹ������𣿡��������£��ƺ�
�����Ȱ�����ո���һ�ߡ�

������֮������շǳ����š�
����Ե���������Ұ�ޣ�ѧ��װ�������˿������
�������Ƿ��ڿ��������ء��������ı�Ӱ���ƺ�
ֻ����ժ����Ļ��ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="��������" src="voice/ma02/0060510a01">
��������Ҫװ��ô������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0060520a00">
�����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�����̶ֳȵ�Ұ�ޣ���װ��Ҳ������
��������ˣ��ش�ȴ���ǻ��������˼��

�����������ٶȡ���ɱ�Ų���������������
�����ӵ������ʹ��Ӱ���ţ��������ܸ���
Ұ��һ���û��ᡣ

��������Ƚ���<RUBY text="����������">������Ҫ��</RUBY>
����ȴ�����ǰ���صĻ����Ǿ�̫�����ź��ˡ�
���ӽ���һ���̶ȵľ����ͣ�½Ų������Լ�����
�����Ե���Ӱ�С�

��������ɽȮ�����Ѳ����İ���˵���á�
����������״���б�������ж��������
ͨ뺰�س���ɤ�ӿ����������<k><?>
{	OnSE("se����_����_���ͤ�01",1000);}
�ڷ������һص�֮�ʣ��������Ǹ���ȻĮ������һ���������ˣ�������צ�ؾ�Ҫҧ��ȥ��

�������ݡ�
����è�ƵĶ��ﲻͬ����Ȯ�����е�ֱ�߼���ǵ�
�ͳ塣������������Զ�Ļ����Ҳ��ᣬ���½���
��ߣ����ǲ�����˳����ܵġ�

����Ӱ����վ��������

���ǻ��������Դ��Ķ���������ͻϮ������ɽȮ��
�ޣ����˷�������ֻ�ܡ�
������ٶ��һ�����

��ɽȮ����񱼡�
����Ӱվ��������
��
�������Ӵ���

����һɲ�ǡ�
���ó���Ը�ģ�������ֻ�Բ���ΪĿ�꼲�۶�����
Ȯ�֡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm13", 500, 0, null);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	OnSE("se����_����_���S01",1000);
	CreateTextureSP("�}����100", 5000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	SetBlur("�}����100", true, 3, 500, 50, false);

	DrawTransition("�}����100", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);
	Zoom("�}����100", 200, 2000, 2000, null, true);

	OnSE("se���L_����_Ź��01",1000);
	OnSE("se����_����_��Ź��01",1000);
	CreateTextureSP("�}����110", 5010, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Zoom("�}����110", 0, 1500, 1500, null, true);
	SetBlur("�}����110", true, 3, 600, 100, false);
	Shake("�}����110", 300, -30, 10, 0, 0, 600, null, false);
	WaitKey(200);

	CreateColorEX("�}�ե�", 5100, "#FFFFFF");
	Fade("�}�ե�", 200, 1000, null, true);

	Wait(800);

	PrintGO("�ϱ���", 10000);

	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 800, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
����ʱ�����ϣ����������ص��Ĳ�λ������Ӱ��
��ȭ��ɽȮ���ʺ�
��ȭͷ�Ķ��ˣ��̴��˴����Ĺ����������̴�����
<RUBY text="������������">ɽȮ����֮��</RUBY>�����������֡�

����������ɽ���ӽ��۽ۡ�
����Ӱֻ��<RUBY text="��������������">��ȭͷ��������</RUBY>���ѡ�

�����ꡭ���ƺ��������ݶ�������������
�����Ǵ����

{	OnSE("se����_����_�Ǳ��Q01",1000);}
�������Ž��Ӷ�����һ���ҽУ��޴�ɽȮ��������ͬ
�ܹ��Ӽ�ѵ������赽��գ�����һ�����߷��䵽ԭ
����λ�á���һ˲֮������˸�������������ĥ���
ӡ�󣬼����������ҡ�

{	CreateSE("SE01","se����_�n��_ܞ��04");
	MusicStart("SE01",0,1000,0,1000,null,false);}
�������ɽȮ�����š������ң�ȴ�̴١�
��ѧ����������ȫվ���������ߵ�ɽȮһ�ࡣ��ʱ��
����֫�ľ����Ѿ�������ֻ�����©�������Ĵ�Ϣ��
�������ӡ�

����һ�������Ǻ����������Ƕ������˰ɡ�
��ɽȮ��Ѱ����������������������������ʹ��ܾ�
�������һ�룬���Ǽȷ����������

��ҪΪ������ʹ��ô���Ǹ�����ԥ�˰ɡ����Ͽ�����
˫�ţ�ͣ���˲�����
�������ڼ䣬һ�ж������ˡ����ĺ���ֹͣ��ɭ�ֻع�
�ž�������Ӱ�ĺ󱳣���͸�����ڵĻ��⡣

�������Ǳ�Ӱ���ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}


//���x�k����ֱ������˼����δ�������˼��


..//������ָ��

//����ֱ������˼����"ma02_006a.nss"
//��δ�������˼����"ma02_006b.nss"

//���x�k֫���`��
scene ma02_006.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice02("���˾��ø���̹��","���˾��ò�������");
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
//��ֱ������˼����"ma02_006a.nss"
				$GameName = "ma02_006a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//δ�������˼����"ma02_006b.nss"
				$GameName = "ma02_006b.nss";
		}
	}
}

