//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_003.nss_MAIN
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
	#bg097_ܥԽ�����ھ����β���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_004.nss";

}

scene md02_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_002.nss"

//����ʳ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg097_ܥԽ�����ھ����β���_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm27", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);

//���Ȥꤢ������ʳ�äݤ��� inc�Ѿ�
	CreateSE("SE01","se�ճ�_ʳ��_����ʂ�_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������ܥԽ������

��������ͥԺ��һ�䷿�ڣ������Ű����緹�����ӡ�

��������˵�������뵺��ɽ½�ʹ󺣵Ķ��ݣ�
���ۿ���ô��Ʒ�֣���ȷ�����Ǻ������ʵ���ʵ��
���׺Ϳ��˵���Ȼ��ʳ��������ɫȷʵƯ����

�����Ӻܿգ����Ҳ������ڱ�ι����Σ�ա���
�ڱ�¶���Լ���˯��֮����˽䱸Ҳ�Ե�
��������������ԥ�Ÿ�����δ���
��������ḻ��ʳ�������ۻ����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 3000, 0, null);

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030010a07">
�����԰����Ҳ���˵��
�������Щ����ͻȻ����˵��Ҫ������Ҫ������
��ʵ�þ�����������Ĳ���������������𡣡�

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030020a07">
����Ͳ�����û���ƻ���̬��
��û�д�������Ĵ�ֻ��Ҳû�з���ļ�����
���ϲ���һͷ�ɹ�������Ч���ð��ꡣ��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030030a07">
������������С�ĵ��������Ҳ���ࡣ
����Щ������ġ������������������
��ô����Ҳ������ġ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030040a07">
����������Ƶľ���������������ģ�
��������Щ�˰ɣ�
�����Ŵ����ǰ��˵��Ҳ���
�þ�����Ŀ�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�Ф�
	OnSE("se����_����_ߵ��01", 1000);

	Wait(150);
	OnSE("se����_����_ߵ��01", 1000);

	Wait(150);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md02/0030050a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������ͬ��򷴲��Ļ��⡣

��ǰ�����Ҳ�����Ծ���ȡ�����ڵ����ũҩ��
�����൱�����ľ��㡣��������ʱ����Ҳ��
��������ϱ����Ҳ��������
�������Ҳ�ʷȷʵû��ŷ�޳�����

����֮��������������ĺ�ζ����
��ʮ����ζ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030060a07">
����ʲô����
��һ������Ҫ�Դ�ȡ�⣬�Ϳ�ʼ��ʡ��̬���⡣��

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030070a07">
����Ϊ�������Σ�����Ա�����
�������ʱ�����Լ������β���ʡ̬�ȵĻ���
Ҳ��������ȥ����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030080a07">
����Щ�һ�һ�����Ҳû���ڷ�ʡ��
�����Լ���ȥ������֮�߸�������ָ��
���ǲ��������⡣��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030090a07">
���𡤿�����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�Ф�Ф�Ф�

	OnSE("se����_����_ߵ��01", 1000);
	Wait(150);
	OnSE("se����_����_ߵ��01", 1000);
	Wait(150);
	OnSE("se����_����_ߵ��01", 1000);
	Wait(150);
	OnSE("se����_����_ߵ��01", 1000);
	Wait(500);


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]

//��������
<voice name="����" class="����" src="voice/md02/0030100a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ǲ����Ǹ��ԵĲ��֡�
����Ҫ���ǽ�ȼ�������ľ��㡣���Ƿ�ʵ�в��ɵġ���

������һ����˵��һ�߳�������������ӡ�
������ζ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030110a07">
��������ˣ�˵����ʮ�ִ����Ķ��
����ɱ����Ұ������Ϊ������ֵĻ���
����������ȥ��������������
�����ǽ�������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030120a07">
��������˵�������ǵĻ�鰡��
��Ҫ���Ҳ�У����뾨���Ҳ�����̲�ס
Ҫ�²۵ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0030130a00">
������ȷʵ����ֵĹ۵㡣
�������߾�˵��Ҫɱ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030140a07">
��ţ����ܱ������Կ��Գԣ�
�����ܴ����Ͳ���������
����ʲô�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0030150a00">
��������Ļ��ϵĲ������˼���ϵĲ�ͬ�ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030160a07">
��������ף�˼�벻ͬ���������ֲ��
����Щ<RUBY text="�һ�">����</RUBY>��Ϊ
��������������������ϵȡ������뷨��
����������֧����������ʷ����Ϥ������С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0030170a00">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��һ�����ȥ�о���ը�һ��΢΢��ͷ��
����Ȼ���ò�������ˣ���Ҳ����ʵ��һ���֡�
ը�����ζ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030180a07">
���ߣ�����Ⱥ������
���ҿɲ�����Դ���ţ�������㶼�ԡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030190a07">
������Ҳ�ԡ�
����������һ���ִ����Ҳ��������
�����޳ɲ�����
��������˵�Ժ���;���ء��ס���������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030200a07">
���Ժ�����ʲô���԰�ι��
����˵������˵������Զ����಻�еĻ���
�Ǿ͸�����������һ�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030210a07">
�����ҿ�������Щ���Ƿ�����ǲ�������ع�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0030220a00">
�������Ӹ�����˵�����Խ��ܳԺ���
�����ܹ���⡣��

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030230a07">
�����Բ���Ҳ�Ǹ������⡣ 
��˵���ף������ų���Լ���ͬ���Ļ�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030240a07">
����Ϊ��ϲ�����������
���Ȳ�˵���Լ��ĵط�ȥ����˼�룬
�ܵ����˵ĵط����޼ɵ���
���˸��е�̬���𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0030250a00">
�����������Ļ���
�������ȫͬ�⡣��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030260a07">
���԰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ŵ���ͷ��ܥԽ������

��������ô����Ϊ�����׵���̸����Ҳ����ˡ�

���ҽ����ӷźá�
�����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//���£ǣͣ�����äȾo�Ȥäݤ���

	SoundPlay("@mbgm16", 0, 1000, true);


	SetFwC("cg/fw/fw�衩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030270a07">
����ѽ�������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0030280a00">
���ǵġ��ǳ������ˡ�
�������ǽ�������ɣ������𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030290a07">
������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������������װ��Ϳ����������衣
��Ȼ����������������

�������������ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md02/0030300a00">
�����Ǻţ����ڡ���������İɣ���

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0030310a07">
�����ڣ�������Ӵ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��������ʱ����������⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md02_004.nss"