//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_003.nss_MAIN
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
	#bg066_���ӘS���ڤΤɤ�_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//	#��̽���K�� = true;

	if(#��̽���K��){
			$SelectGameName="@->"+$GameName+"_SELECT";
			call_scene $SelectGameName;
	}else{
		$GameName = "md05_004start01.nss";
	}


}

scene md05_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_002.nss"


//���£ǣ�
//������
//���yɫ�k��
//����֩�����


	PrintBG("�ϱ���", 30000);

	OnBG(100, "bg066_���ӘS���ڤΤɤ�_02.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");


	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);


	OnSE("se����_�z_�l����02", 1000);

	Move("@StR*", 600, @0, @30, Dxl1, true);
	WaitKey(200);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	OnSE("se����_�z_װ��03",1000);

	StR(1000, @0, @250, "cg/st/3d����֩��_���.png");
	FadeStR(0, true);


	Fade("�ե�å����",1000,0,null,true);


	SoundPlay("@mbgm04", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������Ƿ������쳣��
���������Ƶ����������ĵػع�ͷʱ�������������壬
�ָ�Ϊ֩����̬����

����������Ͷ��·���·�<RUBY text="��������">�����ر�</RUBY>��״̬��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/0030010a00">
������ʲô���ˣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0030020a01">
���⡪�����������

//��������
<voice name="����" class="��������" src="voice/md05/0030030a01">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���yɫ�k��
	OnSE("se����_냇��_�k��03", 1000);

	Fade("�ե�å����",0,1000,null,true);
	CreateTextureEXadd("�}����100", 100, Center, Middle, "cg/ef/ef038_�������.jpg");
	Rotate("�}����100", 0, @0, @180, @180, null,true);
	Zoom("�}����100", 0, 1500, 1500, null, true);
	Fade("�}����100", 0, 1000, null, true);

	Move("�}����100", 1000, @150, @0, Dxl1, false);
	Rotate("�}����100", 1000, @0, @0, @30, Dxl1,false);
	Zoom("�}����100", 1000, 2000, 2000, Dxl2, false);

	FadeDelete("�}����100", 1000, false);
	Fade("�ե�å����",1000,0,null,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������ڲ෢����ӿ��Ĺ�â��
��������������Ĺ�ԣ���ô���������Ա��˵�
��־�����ġ�

�������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md05/0030040a01">
���⡢���ǡ���
��<RUBY text="ĸ��">���Ǻ�</RUBY>����������

//��������
<voice name="����" class="��������" src="voice/md05/0030050a01">
������̫��ǿ���ˡ�������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0030060a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ÿ�δ򵹼�����ȡ��Ұ̫������Ƭ������Ҳһ����
��ø�������Ƭ�ϵ����Ǻŵ�������
������Ƭȫ���ռ�ȫ�󡪡�ȴ�ᵼ��ĳ����䣿

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md05/0030070a01">
�������⣬���¡�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���yɫ�k��
	OnSE("se����_냇��_�Ѱk��01", 1000);

	Fade("�ե�å����",0,1000,null,true);
	DeleteStR(0,true);

	Fade("�ե�å����",1000,0,null,true);

	CreateProcess("�ץ�����", 12000, 0, 0, "Lastfire");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����",Start);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������ĺ�ɫװ�ס���
����ɫ�ˡ�

��һ��һ�㣬��Ϊ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md05/0030080a00">
���ѵ�˵������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0081]�����ֲ�롰�ѡ���ͬ��״̬����!?

������������������Ǻŵĸ����塭����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md05/0030090a01">
����̫�����ˡ�����
����û�뵽���������塭����

//��������
<voice name="����" class="��������" src="voice/md05/0030100a01">
���Ҳ�û�б����ѡ���ʴ����
������<RUBY text="����������">���������</RUBY>�Ķ�������������Ϊ����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0030110a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����ˡ�����������ȡ�����Ǻŵ�������ͬʱҲ�ǡ��ѡ�
����Ƭ��
������Щ��Ƭ�������ɣ���Ҫ��������

���䲻֪���ǹ������µ����廹��żȻ��Ϊ��
����������û����ѵ���ͣ���Ӧ����������ģ�

���ⲻ�Ǵ���һ�˵������
�����Լ�Ҳ��ȫû�п��ǹ����ֿ����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md05/0030120a00">
���޷��ų���!?��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0030130a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���yɫ�k��
	OnSE("se����_냇��_�Ѱk��01", 1000);

	Fade("�ե�å����",0,1000,null,true);

	Fade("�ե�å����",1000,0,null,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md05/0030140a01">
������Ŭ������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���޷���Ԥ�Ƶ�һ��˳���ɡ�
��<RUBY text="������">���Լ�</RUBY>�����༲���Ĳ����г���������֮�����졣

�����������˵������ǰ첻���ġ�
�����ǣ�������Ψһ�ı��ˣ������Լ����������ܰ���
æ��ר�ż�����

��������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md05/0030150a01">
�����У�
����ӽ��ң���������

//��������
<voice name="����" class="��������" src="voice/md05/0030160a01">
��������Ҳ����Ⱦ�ģ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0030170a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��ֻ���Ϊ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���yɫ�k��
	OnSE("se����_냇��_�Ѱk��01", 1000);

	Fade("�ե�å����",0,1000,null,true);

	Fade("�ե�å����",1000,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�������߾�ȫ���������ֿ�����ͼ��ʴ�Լ��Ķ�����
�����Թ��߿������ⳡ���Զ����ܲ�����

��Ȼ������ʲô�������ˡ�
��ֻ�������Թ��ⳡ����֮��Ŀභ��

��������û�õ����������˶��ܴ��档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="��������" src="voice/md05/0030180a01">
����������������������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/0030190a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0030200a01">
���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����ش������Ҳ����ʧ����
����Ȼ�������������ұ��ģ������ĺ���ȴֻ���ʹ
���������

��������ȥ�����ɲ��
������Щ�������ܼ����²��У�

�����ǣ�����ʲô��
��������ʲô��
��
���������������ܰ���������

�����ǲٿ��ߣ��������ǽ��С�
���ٿ�������ʱ�ܿ����е������������������е���
��ȴ�޷��òٿ��ߵļ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md05/0030210a00">
�����޵���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���ҵ�������ŭ����һֱ�����붼û��������顣
�����޷�ԭ��������ܡ���ݲ���ɴ��Ͻ��е����߾�
ʲôҲ�������ģ������ߵ����ܡ�����

������������������������������
��
��
�����ˣ��м����������¡�

�����ǲ����ߡ�
����Ϊ�����ߡ�

������ȷʵ�������������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md05/0030220a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0030230a01">
����������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0030240a00">
��׼��װ�ס���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0030250a01">
������!?
���������У���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0030260a01">
�����������ô���Ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����Ҳ�ᱩ¶�ڱ���Ⱦ��Σ���С�
�������£��Һ������

�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/md05/0030270a00">
���ұ�������Ⱦʱ��������ʲô��
����Ϊ���У��������˲����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0030280a00">
����ֻ������ͬ���¶��ѡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0030290a01">
�����������ǡ�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0030300a00">
������ֵ��ҽ����������
���������������ˡ���

//��������
<voice name="����" class="����" src="voice/md05/0030310a00">
���Ҹ��������ߡ�
������һ������ߣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0030320a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��������������һ�����ս����
�������ڸ���ս��ʱ���ٿ����뽣�ж���С������������
���ߺ�һ�����ܳ�Ϊ��ǿ�ж���һս�����ߡ�

������Ⱦ�ġ��ѡ�Ϊ���ֶ�ս��������ġ�
�������ṩ��Ϊ����Դ���������������Բ�ֻ��һ�˶�
�����˵���־�����Կ����ѡ�����ʴ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="��������" src="voice/md05/0030330a01">
������Щ���¡�������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0030340a00">
�������ʸ�˵���𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0030350a01">
�����������ҿɲ��ܣ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0030360a00">
���˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`�󡣥ѩ`�ķ��x
//��װ�ס�����
//���yɫ�k��
//��������ðס��ӣţ����L

	OnSE("se����_�z_װ��03",1000);
	Fade("�ե�å����",0,1000,null,true);

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	DeleteStA(0,true);
	StC(1000, @0, @0,"cg/st/3d�����|��_����_ͨ��.png");
	FadeStC(0,true);

	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");

	WaitKey(1500);

	OnSE("se����_냇��_�k��04", 1000);


	CreateColorSP("�ե�å����", 3000, "WHITE");
	DrawTransition("�ե�å����", 300, 0, 1000, 100, AxlAuto, "cg/data/circle_03_00_0.png", true);

	CreateSE("SE03","se��Ȼ_�L_���L");
	MusicStart("SE03",0,800,0,1000,null,true);



	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/md05/0030370a00">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����ǿ��

������������ǿ��

  ����һֱ�ڶ������͵ģ��������ֶ�����
  ����������һ����Ԯ������Ӯ�ù����ֶ����𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/md05/0030380a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�������Ե��ӡ�
  ��Ϊ����Ӯ������ֻ��Ӯ��

  �����ô���������Ȼ���Լ�Ҳ���ܣ���Ϊ���Ǻŵ�
�����塣
  ���⾫��ս���Ͼ��Բ��ܺ��ˡ������䡣

�����ǡ���
��
��������š�

���Լ�����־����ɢ��

���·����ڱ������е�����

��Ϩ��

��������

����������Ȼ����

���ĵ�ȷȷ�����ܸо�����

���Ⱪ�磬��ǿ�����ѹ������Դͷ�ġ�

���Ǿ��ǡ��ѡ���

����֮�ų������ܱ���ס��������ľ���

�������̽���֡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􏊤ޤ��L

	SetVolume("SE03", 1000, 1000, null);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="��������" src="voice/md05/0030390a01">
������������!!��

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md05/0030400a00">
���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����ѹϮ����Ҫ����С��������־ѹ�顣

�������䡣
�����ǣ���ǿ��

����ǿ��
�����ǣ������䣡

������֡�

���������Ķ���

����סԴͷ���������飬�ͽ����ˡ�

��Դͷ��
���Ⱪ��ĺˣ�

��ֻҪ���ڱ�˺��ǰ��
���ҳ������ƻ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	OnSE("se����_냇��_�k��01",1000);

	Wait(2000);

//���ե��`�ɥ�����

	SetVolume("SE*", 1000, 0, null);
	SetVolume("OnSE*", 1000, 0, null);

	ClearWaitAll(4000, 3000);

}

..//������ָ��
//�Υե����롡"md05_004start01.nss"

//�����å���
scene md05_003.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	CreateColorSP("�\", 100, "BLACK");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("��������̽��","����������̽��");
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
//���A�ӷ�ꇤ򥹥��åפ���
			$GameName = "md05_004end.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���A�ӷ�ꇤ򥹥��åפ��ʤ�
			$GameName = "md05_004start01.nss";
		}
	}
}

