//<continuation number="200">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_003.nss_MAIN
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
	#bg049_�������_סլ��b_02=true;
	#bg025_ɽ�}��ɭa_01=true;
	#bg023_��Դ̫�μ�_01=true;
	#bg052_�����ҵ���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_004.nss";

}

scene mb04_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_002.nss"

//�����˽~������^ȥ����������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg049_�������_סլ��b_02.jpg");
	FadeBG(0,true);

	CreateTextureSP("�}����100", 100, Center, 200, "cg/bg/bg049_�������_סլ��b_02.jpg");
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 2000, 2000, null, true);


	Delete("�ϱ���");

	SoundPlay("@mbgm26",0,1000,true);

	CreateSE("SEL01","se����_����_��������_L");
	MusicStart("SEL01",2000,800,0,700,null,true);

	Move("�}����100", 5000, @-300, @0, null, false);

	FadeDelete("�}��ܞ", 2000, true);

	Wait(1500);

	SetVolume("SE*", 10000, 0, null);

	FadeDelete("�}����100", 1500, true);

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0030010a02">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ǵڼ������ء�
�������������ڴ˰��ӡ������ȴ����ΪһƬ�����
����һ���ݺݵض��˶�š�

��ÿ�ο������⾰��һ�������ظ�ͬ���Ķ�����ͬ
һ�仰����ȫû�������������ķ�ʽ����й������
����һ�����������һ�ޡ�����ֻ�ǳ�Ĭ�ؿ��ű���
����ĺۼ���

���ض���������������
�����Ǻŵ����ԴӲ�������١�

�����еĳ��򶼻�������
�����ཫӭ����֮�֡�

��ֻ����һ��ҹ��
�����Ǻ��뿪֮����������һ������ˡ��Ҷ�����
��û��ʲô���ˣ��㿪ʼ��׷�١���׷�ٿ�ʼ������
������һ�졣

������ô��ʱ�䣬ȴ�Ѿ��㹻��ض��������ϲ�����
��������Խ��������ˡ�
��������������Ǻ������ġ���������ġ������Ե�
�ƻ�����

�����ж�ã���͹��������������ɡ�
�����ж�ã��������ｫΪ����������

����ȫû������ȥ���������£��������޴���֪��
�������û��������ֹ���Ļ��������г�һ���ջ����١�

����ӹ���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0030020a02">
���������ڸ�ʲô��
����פ��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0030030a00">
����Ż��ڿ�����ɡ�
�����Ҽ�ʹ�����˽������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0030040a00">
��˫������Ըվ���������ӡ�
�����������פ�����ѶԷ���Ϊ���ж���������
�Ȼᵣ�ĵģ����ǶԷ�����׼�����Ǻ�ս���ļ�
϶�ӱ���͵Ϯ����


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0030050a02">
����������¡�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0030060a00">
��˵����˫���������㣬�������ڻ��ҵ�״
�������Է���������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0030070a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��һ���·�Ҫ����˭һ��
������˫�֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0030080a02">
������һȺû�õļһ
������������ûָ�������ܸ�ʲô����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0030090a02">
����Ȼ���ǵÿ������Լ�����
���ն���������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0030100a00">
��������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0030110b40">
���ߣ����ǵ�Ȼ��
����������Ϊ�е���ħ�������ڲ�ն��
�������ˡ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0030120b40">
����������Ϊ�⵽��Ԥ�����ͻϮ��ʧ���ˡ���
�����´ξ������ٳ����ˡ��԰ɣ���������


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0030130a02">
���ǻ���˵��
���´ξ���Ҫɱ������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0030140a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��һ��������û��˿��˥�������ơ�
������а�����������Ҫ�᳹����������Ȼ��

��Э�������Ů������������ս��һͬ�ַ����Ǻš�������
��
�����һ����Ҳ�����败�������������ˡ�

��ֻ��ɱ�������Լ����õ����Ǻ�һ�˼��ɡ�
��
�����������Լ����֣�����Ū��һ�����֡�

������ȥɱ�Լ���ͬ�顣
�����ö���������������

����������
��
��
�������

��������ȷ���𡪡���������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);

//��ɽ���h����bg025���ã�
//��ɽ�¡���Դ̫�μ����ã�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg025_ɽ�}��ɭa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	WaitKey(1000);
	SoundPlay("@mbgm32",0,1000,true);

	OnBG(100,"bg023_��Դ̫�μ�_01.jpg");
	FadeBG(3000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����������ĸо������е�׷�ٲ���̫���ס�
������׷��Ŀ���ڻ������ϱ��ҷ�����Խ��

����Ȼ�����ظ��ŷ��е����������Ĵ�����������Ϣ��
�ּ���׷����һ���̣�����δ��׽��Ŀ�ꡣ
��������ˣ�������Ȼ�о�����Ŀ��Խ��Խ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/mb04/0030150a01">
�������Ҿ��ò���ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0030160a00">
�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ݶ������Ľ��д��������˽�֮�⡣�ͳ�������
�ص��š�
��һ����һ�԰�Ȼ��˯��û�п������ڵ���Ӱ�����
���ڸ����ɡ�

��������һ���������̵�ɽ�¡�����żȻ�䷢���˴˴���
��Ϊ������������С�ݸպ��ʺ���Ϣ�����ݽ�һ�¡�
���ƺ��ܾ�û����ס��������Ļ�����Ż���©�ꡣ
������¶��Ұ��Ҫ�õö��ˡ�

�����������ҪѰ�Ҹ��ʺ���Ϣ�ĵط����⸽��������
�ü��������Ĵ��ӡ�
����˭��û��Ҫȥ������Ϣ��һ������Ũ�ҵ�Ǻ�˵�Ѫ
��ζһ����Ϣ����������ʵ�������������ܡ�

���Խ��ڵĴ�ׯ������ˣ�����ҵ�״�����Ͽո��ӱ�
��һĿ��Ȼ������½�������ܡ�
������û�����ɽ�µĻ�������������컨��ú���Ϣ
�Ļ��ᶼû�С�

����֮���׵Ļ��ᣬ�ұ�����һ���ǰ�С�һ�¡�
���ң����������˵Ҳ��������Ϣ�ˡ�
��
�����һ�����������Ҫ����

���ұ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������һ�߰�ɱ�˿�����һ��������
��ȴ�ֽ��������������Ϊ����Ƶ��Ǹ�Ů�����ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ���
	FadeDelete("�}ɫ�\", 500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb04/0030170a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���Ѿ��޷���ˡ�Լ��ˡ�

����ԭ���㲻��߱ɱ����ͯ�ġ����ʼ������Ǽ�����ʲô
���Һ�ڵĻ��������Ҵ����������һ����
������˵������С��ʮ�ܵ��ַ�������������һ�һ����
����һ���������£���һ��ȥ���ˡ�

����������һ��ȥ�ַ����Ǻ�������ϣ������޴ӱ粵��
�������ӹ���ɸ��ɴն���������������Σ���ȴ���ڲ�
��������ͼ��������֮�֡�

����֪����Ȼû����ʶ�������Լ�ȴ��ȷ������������ġ�
�Լ����޷����Լ�˵�ѵġ�
������Ӧ�ô������е���������Ϊ��Ψ������һ���ϣ�
���Ǻŵ���������ȫ��ȷ�ġ�

�����Ǳ������Լ�֮���������¡�
��ɱ�����Ǻ�֮�

�����ý��ɱ���ȥ�е���
��
���������ǣ�����ζ������Ҫɱһ���ˡ�

�������Ŵ���������ң�ÿɱ��һ�����ˣ��ͻ����һ��
ͬ���ʬ����
���ͻ���һ���޹�������ȥ��

�������������Ѿ�������Ρ�
����֮ǰ��������Ϊ������Ϊ����֮�����������������
��ͬ�����ڻ���һ�������ڡ�

������ɱ��֮�½���һ��ȥ���Ļ���
��ɱ���ı�ֻ��һ���ˡ�

�������������֮��ɱ�˵����ֺ��޵���ı���֮�¿���
Ϊ�������ܵĻ���

��������˼���š�

��Ҳ����˵����Ӧ���������Ƿݳ�����
��������˼�⡣

�����־��ò�����ˡ�
����Ϊ��Ȼ��Ϊ���Ǳ��ӵġ�����ģ��Ǳ���Ӧ���������

����Ҫ�����������
��
����Ҫ�ƶ���֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mb04/0030180a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 300, 1000, null, true);

	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	StL(8050, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	CreateTextureSP("�}���뱳��", 8000, Center, Middle, "cg/bg/bg052_�����ҵ���_01.jpg");
	FadeStL(0,true);
	Fade("�}����Ļ", 0, 400, null, true);
	Fade("�}��ܞ", 300, 250, null, true);

	WaitKey(500);

	Fade("�}��ܞ", 400, 1000, null, true);
	DeleteStA(0,true);
	Delete("�}����*");
	FadeDelete("�}��ܞ", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����ͻȻ���������ĸ�Ľ̻塣
����������ɱ¾��

���ԡ�������仰��
���ҵ�˼����������̶Ҳ��������Ȼ���ˡ�

���ڽ�����ɱ����������ԵĴ����ǰ���£�����������
��·��������ô�ߣ������޷�ͨ����ȷ���ڵġ�
����ɱΪ�ơ������ĸ֮�ԡ�

����������������Ļ�����������ˡ�
���������������ħ������һ������Ǻţ��ò���������
���ֶν���ѹ�ơ���Ҫ�������£�����Ҫ�Ժ��̶ֳȵ�
ս����Ϊ�������ܳɹ��ء�

�����ߡ������Ż��Ų������ӵ����飬ȥ˵��һ�����Ǻ�
��
��
��׷������Ϊ��λ���м���ɱ¾�����Ǻź��档

�������ĸ��뷨��
�����ܻ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb04/0030190a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��û����ã�˼���㿪ʼ��һ����б��
���ƶ���֡�����ر��������ķ���

�����Ҷ��ԣ��Ǳ��κ��¶�Ҫ���ء�
��ֻҪ�ܰ�����һ��Ļ����������˼�⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�������������䡣
�������ƶ���֣������������ʵ���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ���
	FadeDelete("�}ɫ�\", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�������������ǺŵĻ���
���Ҳ��������е����⡣

����Ȼ�����⡣
��ȴ�������京�塭��

����֪�������ҵ���ͷ����ؿ����Լ�����ָ��
����ȫ��һ�������ط����ŵ��˸��е�ģ����

����ҡ��ҡͷ���������ڴ������������������
���˹�����
�����Ǵ�;�о����ķ�����ׯ�м����ġ�

{	CreateSE("SE01","se�ճ�_�Cе_���ԩ`���`�����å�ON");
	MusicStart("SE01",0,1000,0,1000,null,false);}
����Ȼ��Ϊ�˶����˽�һЩĿǰ��״�����������ȣ�
����Ҫ����ת��һ�����顣
�����¿��أ�������һ��Ƶ�ʡ�

������������ƫƧ�ĵط�������������Ȼ�ܶࡣ
����������ˣ�Ҳ��������������Ƶ����

���ǣȣѹ㲥̨��
�����������������Ŀǰ�Ľ�����̬���������ӻָ�
�ض�һ��������ΰ��Ĳ��档

�������޾����㲥��
����������ͨ��ƣǣȣѵĲ���Ϊ�ַ�����Ȩ������
����ȡ��������ǣȣѾ����ڵ�һϵ�д�ʩ��Ӧ����״��

�����㲥��
�������������⵽Ļ�����ӵ�Ϯ����Ŀǰ�����ڻ���
֮�С������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb04/0030200a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����ȫû�����κ��������������á�
����ã�����Ӿ����������У��ֽ���ˮ�Ĺ���һ�㣬
ֻ��һζ�������š�

���ض���һ�ڻ����������
��<RUBY text="�ӣ������">ɱ¾֮����</RUBY>����һζ������

�������ǰ�����������޷��ӱܵĶԾ�����ֻ�ǲ�֪��
��ؿ����š�
������ֻ����Ϊ�ضȹ���������Ͼ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
//���ե��`�ɥ�����
	WaitKey(1000);

	ClearWaitAll(2000, 0);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 100, "#000000");
	Delete("�ϱ���");

	Wait(3000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��������֪�����У�����׹�����硣
��
���ڰ��ΰ��ѵ�������ʶ�о��쵽��һ�㡣

������˯��û��á���ȴ��֪����˯�˶�á�
��һ��С����˯��ȥ������ʱ�ѹ�ȥ���ա�������Ӧ��
���ᷢ���ɡ�

��һ�󲻰�����Ϯ�����ҳſ���Ƥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(0, 0);

}

..//������ָ��
//�Υե����롡"mb04_004.nss"