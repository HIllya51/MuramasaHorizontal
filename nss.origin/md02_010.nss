//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_010.nss_MAIN
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
	#bg053_ܥԽ������ͥ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_011.nss";

}

scene md02_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_009.nss"

//��ͥ��bg053b
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg053_ܥԽ������ͥ_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���緹������ͥԺ��

����΢������塣
����֫�о��ٶ۳���Ҳ��Ԥ��֮�ڵ��¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md02/0100010a00">
����ٶ��ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0100020a01">
���Ÿջָ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ͥԺʯͷ�ϵĴ������������˵�š�
�������Ҳ�Ҫ�����ɡ�

�����Ǻž��ڴ˵ء����뵽��֪��ʱ�ͱ���ս����
���ľ��궯������
����ʹ���佹����ǿ�˶���Ҳֻ����ú�������
���˵�<RUBY text="����">�³�</RUBY>��

��������ס�Լ�������������Ȼ�����������١�
������������Ҳ��ð���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);
	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md02/0100030a00">
�����Ǻţ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm32", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���뾡�������侲����
��ͬʱ�����޷����Ժ��и���һֱ
�ڿ��ǵģ�Ψһ�����ж��ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`����ef019
	CreateTextureEX("�y��GO", 1000, @0, @0, "cg/ef/ef019_�y�Ǻ�ͻ؞04.jpg");
	Fade("�y��GO", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������������������

���Ǹ�״������˵��ǰ��Ӧ�������º�Ҳ�������
��ս���ٶȡ���
�����У����̾�һ�еĺڰ����С�

��ƾ�Һʹ������������п�����֮�Կ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md02/0100040a00">
�����ܣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������ܵġ�
���ӿ͹۵ĽǶ����ж�����ֻ���ж���

�����Ѿ���Խ�����ߵĽ��ޡ�
���޷�ͬ����Խ����޵Ļ�����û�жԿ�֮��

���������Ϊ��

�����ǿ���һ�У�ֻ�ǳ����޷���ҡ����ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	FadeDelete("�y��GO",1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md02/0100050a00">
������<RUBY text="����">�Կ�</RUBY>�İ취����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0100060a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����Ծ�˵���ڵĻ����ԱߵĴ������޷��ʣ���Ĭ�š�
��������⵽����������㡣

�����ǺŵĹ������ǲ����ܶԿ��ġ�<k>
 
������������ô���ȷ����˾ͺ��ˡ�

��<RUBY text="��">��</RUBY>������</RUBY>��

����Ȼ������ָ���˺��������ȥ��ððʧʧ��
һζ��������
�������ı�����ߣ����侲����ʦ��׼ȫ��һ������
���ױ����С�

��ѡ����ȷ��<RUBY text="����">ʱ��</RUBY>�ȷ����ˡ�

�����ֹ��ͥԺ�������ϡ�
�����ǰ�ͷ�̡�ֻ��һֻ����������������ë��

�����泯�Ƿ��򣬰ںü��ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md02/0100070a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������Ұ����֮���������С�

��һ�㣬��ʿ�������Դ�����Ϊ����ռ�Ȼ�����
������ʤ��ʤ����˵���У���֮�ȵ�˵����Ϊ������
��������Ӧ��֮����

����֮�������õ��ֽ�����Ȼ��ʹ˷�������ʤ�����
����ν�ȣ������ڵ�����ͼ�ȹ���˲���Ʒ�����ʤ��

�����ֹ�����˲�䣬�Ǻ��޷����ġ�
��������˭���ڹ���ʱ�������Ȳ���������<RUBY text="����">��ʶ</RUBY>��
����֮��������ɢ��

��׼ȷ������֮����Ҳ�͵�����ȷ��ʤ����

�����ǣ��ǵ�Ȼ�������¡�

����֮ʤ����ã������������۱��
���վ����Ǻ͵з��������Լ����еı䶯�йء�

�����ң�ʱ���ϼ�����ݡ�
���ھ���������ʵ��նɱ����������Ҫ�������롣
ǿ��ֻ��һ�롣���Ǿ��������ߣ�
����˲��֮����������Ȼ��

���Ӿ��޷���ʶ�ı仯��Ҫ�ڼ���ʱ��������
��Ҫ�ȵз������ж���
������Щ����Ѷ��Ŀ���֮����

����Ұ������������Ҫ��Ĵ˵�����Ϊ������
��
�����������ذ�ҹ֮����

��֮���ھ����˵��Ļ����ϣ������������߼�����
��
���������

�������Ѿ���Խ����������׼��֮����
����ȡ�ú�֮�ȴ˵���������硣
������������������壬���Ȳ���˼����

�������뷨���ж������������ػصĹ��̡�

���з����ҷ�������������ʵ������<k>
������ʵ��������ʶ����׽���������ȷ����ˡ�<k>
����ѭ�뷨���������̫����<k>
�������������ˡ�

�����з���������ʵ�Ѿ���������������������Ӧ��á�
���ڼ��ޱ�Ҫ������ʶ��

��Ҳ��ʡ�����õ���ʶʱ��

������֮��

���������ܹ���֮Ϊ������<RUBY text="����">����</RUBY>�Ĵ��ڡ�
������������ʶ�����Ƕ��������
������������Щ���ж���

����ֲ�ﲻͬ��

������Ұ��������������͵����������ɣ�
�����ڷܶ������ﵽ���־���Ϊ���롣
����Ҫ�㣬�ڼ�Ұ������ս�񷨽�ѧ��ʱ��
���·�Ϊ���㡣

����һ������ν��֮������ν��֮����
��ν��֮��һһ����������֮�ڡ�
��������Ѫ���⡢�Ǿ��ܼ���ĳ̶ȡ�

����������һ��ս��״��������һһ���ǣ�
������������ʺϵķ�Ӧ����˸�����

��������ʮ�����ѣ���ȡ����Ŭ��Ҳ�ܳɹ���

����������������һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md02/0100080a00">
�����������𣿣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����������Ľ̻塣
���Լ������������ߡ�

�����������������
����������֮���������֮�����ǣ��֮�ˡ�

��һ�ж�������
�����޼�ֵ��

�����䱾�м�ֵ��������ޣ���û������ҡ����Ҫ��
��һ��˼��������Ϊ���ȫ����ȥ��

���������磬ͨ�����

���������ܵõ���Խ�о�֮�о���
������ʶ�������������ľ��룬���н�ϣ�
����ƾ�۾��������ǡ���<k>�������佫������
���޵������ϸ��ǵ�Ƥ�����о����ս����

����ˣ���������˼��������������Ӧ��֮����

��˵�����ס�
���������ѡ�

����ȥ���м��������ܵ��˾��磬��ʥ֮����
�������������뷨���ң��Ƿ�̫�����Դ�

������
��Ҫ���ԡ�

�������޷�սʤ���Ǻš�
���Կ������ܵķ���Ψ���ȷ����˽���򵹣�
Ҫѹ�����Ǻžͱ����������

�����Ǻŷ���������˲�䣬�ҵ������Ҫ��Ӧ��
�����Ļ����ܴﵽƽ����ɫ��״̬��
���������ʶ�������У����Ի����

�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md02/0100090a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����Կ��ɡ�

���ǰ�ͷ�̡���
�������ҷ���ģ��Ǹ�˲�䡣

��������ʶ����

���Լ������ܣ�
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 2000, 1000, null, true);
//����������
	WaitKey(3000);
//���Ф��������B���w������
	OnSE("se����_����_�B���w������", 1000);
//���ե��`�ɥ���
	Wait(300);
	FadeDelete("�\Ļ��",500,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md02/0100100a00">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0100110a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md02_011.nss"