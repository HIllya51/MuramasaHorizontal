//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_016.nss_MAIN
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
	#bg056_���L�����Tǰ_02=true;
	#bg077_�����µ���¥ǰ_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_017.nss";

}

scene md03_016.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md03_015.nss"


//��bg056_Ϧ
//��bg077_Ϧ


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg056_���L�����Tǰ_02.jpg");
	FadeBG(0, true);


	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

	WaitKey(1000);

	OnBG(101, "bg077_�����µ���¥ǰ_02.jpg");
	FadeBG(2000, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160010a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ס�����Ҷ���һ�£�ת��������
����Ȼװ����˼�������ӣ���ʵ��ʲô��û�ڿ��ǡ�

����ֻ���ڷ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SoundPlay("@mbgm17", 0, 1000, true);

	StR(1000, @0, @0, "cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md03/0160020a01">
������ʲô�£���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160030a02">
�����л������㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���Է�����Ϊһ���Ĺ��
����û�е����ߵ������ϣ���������Ȼ�س���������

��������ʵ��Ҳ����û�ϵ����������Ӵ��ҡ�
����Ϊ������Ƥ��û�к񵽿�����ȫ�ڸ����ġ�

�������ܿ��������ҵĲ��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160040a02">
����֪��ѩ���һ���𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160050a01">
�������š���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160060a02">
���Ǽһ֮��������Ҳ�������ˡ�
��������Ϊ�����Ľ��б������ˣ�
һ��ɱ��һ������
�ͱ�����ɱ��һ��ͬ�顣��

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160070a02">
�����Դն��������񲻹�ɱ�˶��ˣ���ɱ�˺�
���޹����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160080a01">
������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160090a02">
���ش��ҡ�
����������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160100a01">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160110a01">
���š���

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160120a02">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160130a01">
������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڡ���ţ��
	StCR(990, 230, -91, "cg/st/3d������ţ��_����.png");
	Move("@StMR*", 300, 150, @0, DxlAuto, false);
	FadeStCR(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���Ǹ�����Ԥ�׵س����ˡ�
��������Ԥ�ס������˵����Ů�����ܵķ�ŭ
���������׵Ļ���

���޴�ĸ�����ţ�档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md03/0160140a01">
���㡭���н��У���

{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160150a02">
������������

//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160160a02">
��ƭ�˵ġ���
������������ô������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160170a01">
��������

{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160180a02">
���������
���ն�������ʻ���㡭��
��������Ӷ�ɱ��!!��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160190a01">
����������ʵ��
�����ǣ��벻Ҫ��ᡣ��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160200a01">
���������������ն�������ɱ�ġ�
������ɱ�ġ���

//��������
<voice name="����" class="��������" src="voice/md03/0160210a01">
����ֻ�Ǳ��������ˣ����ԡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160220a01">
������������

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160230a02">
��������
����ô�ˡ�����˵ʲô����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160240a01">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ԡ�

������������
�����ǡ��������ġ�

�����յ����ԡ�

��������ͬ�˱˴ˡ�
����ͬ�˱˴˵���־��

�����ԣ����ܷ񶨡�
�����ܷ�������־����ʹ������ͬ��Ҳ�������������С�

��������ɱ¾������������
��
��
����Ȼ��Ҳ���ҵ�������

����<RUBY text="������">���ǵ�</RUBY>������

����������ԸΪ֮�������Լ����

�����ܱ�����֮����Լ���������������������
���С�
������ϣ��������

����ͬ�ɡ�

����ͬ������־�����Ρ�
��������ͬ�Լ�����־������������

����������λһ������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160250a02">
��ι����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160260a01">
�����Ը����𣿡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160270a02">
����������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160280a01">
��������ɱ�ġ�
�����Һ��������ˣ������Լ�����־����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160290a02">
������������

{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160300a02">
������ʲô���������������𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160310a01">
������
������������ʴ������������εĻ���
����������Ӧ���׼������

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160320a02">
�������￪��Ҳ����ν�ǰɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160330a01">
�����뿪����������ɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160340a02">
��ʲô����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160350a01">
���һ����ܡ���

{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160360a02">
������ҪӦ���𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160370a01">
�������Ӧ��
���Ҳ�������Ϊ�С���

//��������
<voice name="����" class="��������" src="voice/md03/0160380a01">
�����ǡ��������ڻ���������
������Ҫ�ӡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160390a02">
����˵�Ի���
�����������˶Է��ĸ���
ɱ����ô���ˡ�����

{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160400a02">
��������̫��˽���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160410a01">
���������á�
�����������ɱ���ҡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160420a01">
��ʧȥ�ٿ��ߵĽ��ж���ȫ�����ߣ�ʤ��
���Զ�����
�����ǡ����һ������ġ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160430a01">
��������޳ɹ���ϣ������Ҳ��������������
���ţ�û������������ɱ����������֮ǰ
��������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160440a02">
������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160450a02">
��Ϊʲô���ڲ���������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160460a01">
����Ϊ������Ҫ������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160470a02">
��ʲô�£���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160480a01">
����شն���������־����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160490a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ǵġ�

��һ����ͬ��������־����
�����޷��������ڵ�״̬��

������������־�����ر������ˡ�

���ı�Ť���ˡ�
���������������־�����������������ĸ�����ɡ�

���������
�����������־�����ɡ�

������������ĳ�Ϊ���Ľ��С����İ����������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160500a02">
��������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160510a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����̽Ѱ���˵��󷽵�ʱ����
�����Ҫ�����߶�����ӭս�Ļ���֩����̬����
�Ƚ�������

�����Ǳ�����Ҫһ����ʱ�䡣
�����ڱ��εĻ����������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ȥ
	OnSE("se����_����_���S01", 1000);

	Zoom("@StMR*", 150, 0, 3000, null, false);
	DeleteStCR(150,true);


	SetFwC("cg/fw/fw����_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/md03/0160520a01">
����������

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160530a02">
�������������˵������������

{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160540a02">
��������ʹն�������ͬ���µ����У�
ֻ�Ʋ�һ��Ҳû�á���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��ȥ��

	OnSE("se����_����_�i��08", 1000);

	DeleteStR(300,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md03/0160550a01">
���������һ��������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160560a02">
��ȥ�һ�<RUBY text="����">�ٿ���</RUBY>�ɡ���

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0160570a02">
������֮�󡪡������˶ϡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0160580a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);


}

..//������ָ��
//�Υե����롡"md03_017.nss"