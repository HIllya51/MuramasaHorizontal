//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005z.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma04_006.nss";

}

scene ma04_005z.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_005a.nss"
//ǰ�ե����롡"ma04_005b.nss"
//ǰ�ե����롡"ma04_005c.nss"

//������
	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}�ţ�100", 5100, Center, -576, "cg/ev/ev119_һ��������֦��ˮԡ_a.jpg");
	Move("�}�ţ�100", 0, @0, -110, Dxl1, true);
	FadeDelete("�ϱ���",0, true);

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0010a02">
���ܡ�����֮��
���ص����⡣��

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005z0020a00">
���š���

{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0030a02">
�����ǵ�Ŀ�ĵز��ǽ�֮����
���ǾͿ�㶯��ɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100,"bg041_Ƭ������_01.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("�}�ţ�*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������
���˴����ǽ�֮����

�����ǽ�֮���Ķ԰���Ƭ����
����������Ҳ�޼����¡�һ����Ҫ���նɺ�ǰ��
���ϵ�������Ҳ�ܹ���⡣

��Ȼ����
��������˻�Ҫ���£���������ԭ��

���Ҵ�����ѡ����Ϊ���Եļ���ϸϸ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma04/005z0040a00">
������ȥ����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0050a02">
�������ף�
��Ϊʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005z0060a00">
����֮ǰ���Ѿ��������
�����ڣ���֮��ȫ���ѱ���Ϊ�������򡣡�

//��������
<voice name="����" class="����" src="voice/ma04/005z0070a00">
����Ȼ�����������Ļ����
�����ɲ�������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005z0080a03">
����������鱨��˵�ڽ��б����о��Ļ���
����ô��Ҳ������֮�С�
����Ȼ����һ�Ŷ��ԡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005z0090a04">
����ʵ�ǣ�������˷�����ˡ�
���򲻿ɴ��Ĵ��⡣��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0100a02">
���ǡ�������ô�죿��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005z0110a00">
����Ȼ���ܹ�Ȼ�ɺ�����ֻ��˽�¹�ȥ��
������ô�򵥡�
��Ѱ�Ҷɺ��������������������ĵ�
�������ɡ���

//��������
<voice name="����" class="����" src="voice/ma04/005z0120a00">
���������ռ��鱨��
��ԭ����Ŀ�ĵؽ�����ǰ����Ҳ��ϲ�������Ĵ�
��̽�����ػصķ�ʽ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005z0130a04">
����Ϊ���Ǵ��е�Ŀ�ĵ��Ѿ�����ȷ���ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005z0140a00">
�����ǡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0150a02">
��������ȷ����������
��ǰ����֮��֮ǰ�����ٵ��Ȱ�<RUBY text="��������">��ǰ����</RUBY>
�˽����š�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005z0160a03">
������֪���ǰ����֮��ʵ����������û�ס�
�������������������졣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005z0170a00">
�����졣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005z0180a04">
�������졣��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0190a02">
���������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����ֵ�ļ���
��ũ����ʮһ�·ݡ����꼴�����١�

�������������졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma04/005z0200a00">
�������쳣Ҳ���и��޶ȡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005z0210a04">
�����һ�ֻ�н�֮���ܱߡ���������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0220a02">
��Ϊʲô������ԵĹ����¼�ȴû������
���������Ҳ��ǵ����ڱ�ֽ�Ͽ�����������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005z0230a03">
������Ǵ��������޵�<RUBY text="����">ĳЩ</RUBY>ԭ����
���Ż��ط��������Ҳ�����練�ưɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005z0240a04">
��������������������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ȷ����Ȼ�ڰ�ᦹ��������鱨֮ʱ
��������֮�����һ������˵���߷��������鱨
֮ʱ�������������ڽ���Σ���о�һ�£�
�Լ�һֱ���Ű��ɣ���������˵�������ڳֻ���̬�ȡ�

��Ȼ��������ȴǡǡ�෴��
�����¡���Ļ�����ڵ��Ͻ�����ʲô���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma04/005z0250a00">
����ô���ж���ʼ��
����ͷ�ռ��鱨���ص�����Ǳ�뵺�ڵķ�����
�Լ�����쳣������������

//��������
<voice name="����" class="����" src="voice/ma04/005z0260a00">
����û��ʲô���ʻ��飿��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0270a02">
��û�У���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��˵�ţ�һ���Ѿ���ʼ���ж���
���������ܣ������ϵĲ��ǿ����ڶ࣬��������
�ĺ�֮�ң������Ա���С������Χ��һ�ţ�����������
����Ѹ������ȷ���ж���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005z0280a03">
���м�������һ�ʡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005z0290a00">
���뽲����ξ����

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005z0300a03">
���ѵ��������Һ�һ��С���м�����ѡ��
����һ���ж��Ļ�����������
����ѽ������һ��С���Ѿ������ˡ�����

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0310a02">
�����䲻��˵Щʲô�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm25",0,1000,true);

	SetFwC("cg/fw/fw����_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����衿
<voice name="����" class="����" src="voice/ma04/005z0320a04">
�����ϵ�ʱ�̵��ˣ��ն����ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005z0330a00">
���Ҿܾ���
��ֻ��Ӱ������ж���Ч�ʶ��ѡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005z0340a03">
��������ʱ��ǣǿ������й���������
�Լ�����Ϊ��������������˵ı��£���

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0350a02">
�����ǵ����԰��ɣ���

{	FwC("cg/fw/fw����_�@��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005z0360a04">
�����С�㣬��˵��̫���ˣ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005z0370a03">
�����ǡ��ù��֡���

{	FwC("cg/fw/fw����_ŭ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005z0380a04">
����ȻС������ӵ�ȷ���ò��ᣬȻ����
���ⷬ����ʵ����һ���еģ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005z0390a03">
��ιι�����һ�£��̴ӡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005z0400a02">
����ô���ܡ���
���ǵ�����ʲô�������˰�����

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005z0410a04">
�����������С�㡣
�����������ʹ���Ĺ������������˽���
�����һ����������˵���Ը������

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005z0420a03">
���������ˣ���ͻȻ�õ���������У�
���������Ӿװ������ǹ����

{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005z0430a03">
����Ȼ�е����Լ�������֮��ǭ¿�������
���˽ʾ���֭�������ǰ��Ϸ�磬���������ھ�
�����￪ʼ����ô������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005z0440a00">
�����벻Ҫ����ǣ����ȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��ũ��ʮһ�·ݡ���ֵ�ļ���
��ͷ���еļ��ڸ�Ҳ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//��������

}

..//������ָ��
//�Υե����롡"ma04_006.nss"