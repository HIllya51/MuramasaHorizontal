//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_005.nss_MAIN
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
	#bg098_ܥԽ����������_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_006.nss";

}

scene md02_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_004.nss"

//���ե��`�ɥ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg098_ܥԽ����������_01.jpg");
	FadeBG(0, true);
	StR(1000, @0, @0, "cg/st/st��_ͨ��_˽��.png");
	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStR(0, false);
	FadeStL(0, true);

	SoundPlay("@mbgm27", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SetFwC("cg/fw/fw��_��˼�h.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md02/0050010a14">
����������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050020a00">
��ûʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����ȥ��ͻȻ��Ϯ���Ե���΢ѣ�Ρ�
��ʹ��������Ż�¸С�

��������Ҫ����㯡�
����������顣����ġ�

���Ҷ������ˣ��������ȴ����ҵĹ⣬
�������Ŵ�����Ϊ������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md02/0050030a00">
���㡭��һֱ���������
����ܥԽ���������𣿡�

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050040a14">
���ǵġ�
���뿪����֮��͵������
�������������š���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050050a00">
��Ϊʲô����

{	FwC("cg/fw/fw��_��˼�h.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050060a14">
��Ϊʲô��
��������ޡ��������ʵĻ���
Ҳû���ر�����ɡ���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050070a14">
���뿪����֮��<RUBY text="����">��ֱ</RUBY>ǰ���͵��������ˡ�
�����㵽��ĵط�ȥҲû��ϵ������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050080a07">
���������¡�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	DeleteStL(200,true);
	OnSE("se����_����_����01", 1000);
	Shake("@StR*", 200, 15, 0, 0, 0, 300, null, true);


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md02/0050090a00">
��������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050100a14">
��������ȻҲ����ν�����˼��ֲ�Ը�⡣
��Ҫ˵�������Ҳ���ǰɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050110a00">
������Ϊ�������ˡ�����
����ֻ�������𣿡�

{	FwC("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050120a14">
������������˼ҵĺ��⡣
������������ܾ��ֲ�����˼��
�����Ҫ������Ļ��������ۣ�
�����ǵĻ�˳��������˼Ҳû��ϵ����

//���⡿
<voice name="��" class="��" src="voice/md02/0050130a14">
���������������ˮ����ʳ��������ܲ���
��ס��������������ġ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050140a07">
������������ô˵���л�㰡������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050150a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����Ļ�����ܲ���һ˿��١�
�������Ͳ��ǰ�˵�ѵ��ˡ�

����û���ر�����ɶ�����ܥԽ����������

�����ǡ�����������أ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md02/0050160a00">
�����¡���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050170a07">
���ţ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050180a00">
��������Ϊʲô��ϣ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������ʶ˼��������ֹ���鷳�¡�
��˭Ҳ���Ỷӭ������û��ͽ�
��ƽ�ĳ�����ս���Ŀ��˰ɣ�

��Ҫôս��Ҫô���ܣ��ٲ�Ȼ������������뿪��
��һ��ѡ������ȷ��Ӧ�Է�ʽ��
������ͬ��������ʱ�õ��д�����ˣ�ȴ��������
���˿��������¡�����ȫ˵��ͨ��

���������ԣ�������Ϊ������Ǳ�˭��ص�ͬʱ��
�ֶԴ����Ʋ������ʵ�С���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");;
	FadeStL(300, false);

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050190a07">
����Ϊ�Ƕ��ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050200a00">
�����ˡ�������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050210a14">
�����𡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050220a00">
��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050230a07">
�������������ˡ���
����һ�������㱻ɱ�����ҵ���ǰ������
Ӣ���ˬ���ֵ����ˣ���ȫò���Ѿ�����
�����Ҽ������ˡ���!!��

{	FwC("cg/fw/fw��_��˼�h.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050240a14">
����ô˵��ȷʵ�Ǳ�����ʱ�򡣡�

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050250a14">
���ţ��������ˣ�
����ô��Ҳ����Ҫս�������ӣ���û�ܵ�
��Ⱦ����Ӱ�죬�����Ǻ���ֵ���������
��û����ɱ���ˡ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050260a07">
�������������ɣ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050270a07">
�����ˣ���һ��ʼ��֪����������û��
Ҫ���ҵ���˼��
������ϱ���������ѡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050280a07">
�����Ƕ���������������Ҳ��ܵþȣ�
��Ҳ����ʵ�����Դ�л�����ǵ�Ȼ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���������������Ļ���Ҳ��������١�
����ⲻͬ�����Թ��������Ȩ���߹����ֶΣ�
���ܵ������ӡ���ä���仰����

�������ܵ���������ʵ��
�����Ҳ���Ϊ������Ϊ������

��Ӧ���б��ԭ��Ҫ�������¡�
����ô��ž��׵���

��˲�����뵽���������ɡ�

��һ���ǣ��˽����֧��Ϳ��ƹ⣬
���Լ�����־��ʹ����
���������ⲻ�������֪���϶����ԡ�

���Ⲣ�ǰ��Լ�������ί�����˵��ˡ�
�����Ǻš�������ˡ�����ʵ�����ǿڲš�
����Ҫ����������ȫ�����ܵġ�

��ԭ������ǰ�����˵Ĺ�ϵ����ȥ�Ͳ�����ˡ�
����������費��Թ��й��ȸ��棬Ҫ�Ǹ����ˣ�
��ס������Ҳ����������ɡ�

����ô��

����������һ��������

��<RUBY text="������������������">��������ȥ֧�����</RUBY>��
��Ĵ��ڱ���ͷ���ܥԽ���������档

����������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md02/0050290a00">
����������ѯ�ʡ�
�����½���������ߣ�����ʲôĿ���𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050300a07">
���š�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050310a00">
��������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050320a07">
���аɡ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050330a14">
������˵���еġ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050340a00">
��������Ŀ����ʲô����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050350a07">
�����ܡ���

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050360a14">
����Ҳ��˵�����ܡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050370a00">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050380a00">
��������û�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ʹ⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���⡿
<voice name="��" class="��" src="voice/md02/0050390a14">
��û��ϵ��
����Ҳ�ǻ���Ұ�Ķ����ţ�������
��ʲôԸ��Ҳ�ǵ�Ȼ�ġ���

//���⡿
<voice name="��" class="��" src="voice/md02/0050400a14">
��Ϊ��Ը���������ù�Ҳ�С�
���ں����޹صĵط��˽ᣬ��ôҲû��ϵ��
����������ң��ǿ϶�������ս���ֳ�ʤ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ֻ��Ŀ�ɿڴ�����ô�򵥵Ľ��ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050410a07">
�����������죬��������ЩС��һһ���յ�
�Լ�ʵ�����޴���
����������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050420a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���Ȳ����ѣ��ҵ�ͷ��

���ɡ������Ǻ����⡣
��ܥԽ������Ŀ�ľ�����ʲô��
���޷����Ƶ�ɱ¾�߶��便��
�������������ֵ��

���޷����󡭡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050430a07">
���������£��緹������������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050440a14">
��Ҫ�ԡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050450a07">
��������˵һ�¾ͻ����ġ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050460a14">
������ֵ�����˭����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050470a07">
����ǧ�����塣��

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0050480a14">
���Ǹ��˰����Ǿ�ֵ���ڴ�һ�¡�
�����ȹ�ȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡢ȥ��
	DeleteStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����Ȼ�Եã��ⲽ�����ȡ�
��Ŀ���������ı�Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050490a07">
����ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���������ߵ�����������衣
����Ů��ͫ�����̺���Щ��׽Ū����ɫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0050500a07">
�������֮�����������
��Ҫ�������𡭡�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0050510a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md02_006.nss"