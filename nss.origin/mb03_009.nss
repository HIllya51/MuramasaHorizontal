//<continuation number="160">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_009.nss_MAIN
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
	#bg001_��c_03=true;
	#bg033_���Lլ����˽��_03b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_010.nss";

}

scene mb03_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_008.nss"

//��ҹ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg001_��c_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��һ��˵�����Լ���ȡ�˸��׵�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ݡ���
	SoundPlay("@mbgm33",0,1000,true);
	OnBG(100,"bg033_���Lլ����˽��_03b.jpg");
	FadeBG(1000,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090010a02">
�������ǡ���
�������𾴵��ˡ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090020a02">
��ͬʱҲ���ҵ�һ�������������ϻ�Ȫ·���ˡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0090030a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ߣ�һ��������¸������ҡ�
���Ҳ�֪����λ�Ӧ����

����ָ�Ů���׷�����ʲô�¡�
���Ⱦ��ú����������ĳ�̶ֳȡ����־��÷·��ңԶ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb03/0090040a00">
�����ǡ���Ϊ�Ρ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090050a02">
������������Ϊ���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����������ȥ���������ڲ����⡣
��һ������Ĳ�֪���𰸡�Ҳû��ȥѰ��𰸡����ı�
��˵����һ�С�

�����£�һ��������ֱ���Ƕι�ȥ�ɡ�
������ع����£����ʵĴ𰸾��������֪��
��һ�㡣<RUBY text="����">����</RUBY>�����޷���ͷ��

�������ͷ���ͻ����޷����ϵ��˿����������Ρ�
��
����֮���Ի����ҿ��ӵ������˺ۣ���������Ϊ���ŵ�<RUBY text="����">����</RUBY>
��΢�����ưɣ�Ҳ����������

���ں����ĵ���ʹ��׷��������ġ�
�����ң����ǸղŵĻ�Ҳ����������һЩ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090060a02">
����˵�����ն�����Ҳ��ͬ���ľ�����
����Ϊ���䡭���������á�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0090070a00">
������˵���𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ǵġ�
����λ��Ů������һ����

��ɱ���������������ˣ�
����ˡ����޷���ͷ��

����Ϊɱ������֮��Լ��������ܵ����䡣

�����������������ס�
����λ��Ů�����ϵĻ��Ρ����ڡ����塱��ִ�ţ�����
���Ժη���

����Ȼ����·��Ѫ�и���֮�󿪱ٳ����ģ��϶�������
�޷��񶨣�Ҳ�޷���ͷ��
����Ϊ�ǻὫ���޷����ܵĳ��ض�ΰ���������������
�޼�ֵ�Ĵ��ڡ�

������һ����

����������ʴ����ӱܵ�ɫ�ʣ����Բ�ϲ����
����������һ����������ȴǡǡ������Ū�ˡ�

��߱��֮Ů��ɱĸ֮�ӵ����ˡ�

����������������ʵ����������ˡ�
����������ֻ���ת�ֻ����δ��ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090080a02">
���ն�����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0090090a00">
���š���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090100a02">
���ҡ���Ҫս����
������ս�������ҲҪ��������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090110a02">
��������Ϊ�����Լ�����֮�¸е������ˡ�
�������ٿޡ�Ҳ���Ầ�¡���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090120a02">
������ֻҪ�ն������ܹ���������ߡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0090130a00">
������������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090140a02">
����а�񡭡�
������Щ���������Ļ쵰������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090150a02">
���������ǡ�
��������ս����
���������ɱ�����ǡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0090160a02">
�������������԰ɡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��һ��������Խ��Խ�ᣬ��ɳ�ơ�
�������ʧ����˯�ĺ���֮�С�

������<RUBY text="����">����</RUBY>������

�������׽�������ʧ�����⡣
�����Ժ��з����׽���ϸϸ��ζ��

������������
��
������������

������а��
�������������а��

�����ǡ����������д�ġ�
��Ӧ���ǡ�����ȷ�ġ�

�����塣
�����Ǳ��ˣ�������λ��Ů��˵�����Կ������Ρ�

���������ƶ���ж�����ȫ��˽�ġ�
�����������������Ĳþ���Ī���س������塣

����ʹ��ɱ������ͯ�����¡�
�����˵��ʲô����֮������ֻ�������ϵ����⣬������
�ǣ���Ȼһ������ȷ�ġ�

������������Ϊ�ġ�
��
�����ǡ�

��������
��<RUBY text="����������">��Ŀ�����</RUBY>��

�������벻���𰸡�
��������ô˼�����Ҷ��벻���𰸡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_010.nss"