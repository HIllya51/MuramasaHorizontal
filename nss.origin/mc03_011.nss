//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_011.nss_MAIN
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
	#bg085_��܇��܇_01=true;



	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_012.nss";

}

scene mc03_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_010.nss"

//��⟵�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 2000, "BLACK");
	OnBG(100, "bg085_��܇��܇_01.jpg");
	FadeBG(0, true);

//�������󤴤Ȥ�ע���܇�ǤϤʤ���܇

	CreateSE("�����󤴤Ȥ�", "se�\��_��܇_����01_L");
	MusicStart("�����󤴤Ȥ�", 2000, 1000, 0, 1000, null,true);

	Wait(3000);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 2000, false);

	SoundPlay("@mbgm30", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ǰ���ҳ�����·�Ļ�����١�

���������ĵط���ȫ�����£�û�г�վ����·����Ȼ��
�����ξ�ʱ������������������Ҳֻ�Ǽ��εĳ̶ȡ�
����Ա֮��ص������ְ��Ҳֻ�������Ρ�


��������������Ȩ�����û�ж�ƽ��ʹ����·������
�ƣ�������Ż�������һЩ�ɡ�
��������˾û�а�������Ϊ�ʺϳ�����ˣ���Ҳû����
��˽��ʱ�����е���Ȥ����·�Ҳ����ܳ���̫��Ρ�

�����ԣ�ͨ����·���еĴ���������һֻ�־��㹻ȥ��
�ˡ�
�����ٶȣ��ڲ�װ�ޣ����������ķ羰���Ҷ��е��ܲ�
ϰ�ߣ���������������ʵ�ӡ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�����󤴤Ȥ�", 10000, 0, null);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����衿
<voice name="����" class="����" src="voice/mc03/0110010a04">
�������ƽ���������ء���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110020a00">
��������˼��ȷʵ��Щ����


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110030a04">
��������һ�°ɡ���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110040a00">
����û�ио������ʡ����õ����ҡ�
�������̴Ӹ��µ��Ǻ�̩Ȼ�ء���



{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110050a04">
���������Ĵ��������Ƶ�����һ���ࡣ
���ر��Ǻʹ�С��������ŷ�޵�ʱ���ճ���
���ǻ�����ġ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110060a00">
���Ǳߵ綯�г�Ҳ�ռ����𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110070a04">
���ǵġ������ĵĶ̾���·���У����Ѿ�����
���ˡ�
�����м����·�ϣ�����������ռ����������



{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110080a04">
��������һ�����ƺ���ʹ���˵�����������



{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110090a00">
�������Ǻ͵綯�г���ʲô��ͬ�𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110100a04">
���ն�������˵�ģ��ǵ����ĳ��������ж���
�ķ�ʽ��
���綯�������䲻ͬ���ǲ���ǣ�������г���
��ʽ����


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110110a00">
����������ԭ����ˡ�
����Ҫ��˵��ֻ�ǰ���ǰ������������Ϊ�綯
���ѡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110120a04">
����Ȼȷʵ�����������Ǵն����ˣ���������
��ò�Ҫ����˵���ڡ�
�������һ����<RUBY text="�ͣ����">��·������</RUBY>��������


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110130a04">
�����ô����ʮ��Сʱ��ʱ�����㳹�׽�����
�ַ�ʽ����Դ����ϸ�Ĺ��죬ϸ΢�Ĳ��죬��
��ʵ�ʵ�Ӧ�ã��Լ�����δ����չ������



{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110140a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������˵ʲô�ء�

��������ӳ���Ķ����������е���԰�𽥱�Ϊ������ɽ
Ұ���龰��
���г�ż�����������Խ��������

�����淴�����չ⣬ӳ�����貵Ĺ�ԡ������С����
�����ˣ�һ�����ú��˷ܰɡ�
��������ȱ�������Ŀͳ��У��뵽�������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc03/0110150a00">
������������
�����Ǻ����׾����˳��ء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110160a04">
������ǿ������֮����г������ڿ�սǰ��
������ĸ�ԣ�ײ��Ѿ������ˡ�
�����ڷ���Ҫȥ������Ĳ���ƽ��Ӧ������
���ټ��ĺ����ߡ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110170a04">
����λ�������ѡ��
����ŷ����ȣ��۸�ߵ����ס�����ֻҪ�ܹ�
֧�����ã��Ǿ�û�б�������ˡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110180a00">
���ǡ��������⣬�һ���Щ�������������⡣
����Ȼ���ڵĻ���ͬ�����˽������



{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110190a00">
���г�Ӧ�������̻ᱻ�������á�����ʹ��ƽ
������һ����ʹ����أ����ڳ����г�ҲӦ��
������ϸ�����ɡ���


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������������£��ܹ���������������
�������ң�ֻҪһ������ҳ����޵����⡣

�����ڴ���������˵��Ҳ��һ���İɡ�
������������Ҫ���Ҹ���Σ�հɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����衿
<voice name="����" class="����" src="voice/mc03/0110200a04">
�������������˶�ע��
��ȷʵ��ʨ�Ӻ���¼�ʹ�����ȡ���ִ�ʩҲ
����Ϊ�档��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110210a04">
�������Ǹ����˵���ͼ��ʮ�а˾��Ǽ�ս��
�����ȱ����г��İ�ȫ���Լ����Ƚ䱸���˼�
�������֣���û��̫�����塣��


//�����衿
<voice name="����" class="����" src="voice/mc03/0110220a04">
������ʨ�Ӻ���²�ϲ���˷Ѿ�������
����Ȼ˵�ǶĲ�����ʤ��Ҳ�㲻С����



{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110230a00">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������������ȥ����Щ�£���������Ӧ�ô�
�ڸ���Ч��ʹ�÷����ɡ�
����ž�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mc03/0110240a00">
������ܹ��ɹ��ϳ�����������������Ч��
�Ľ�ͨ��ʽ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110250a04">
��ֻҪ����������ž��ܵ���Ŀ�ĵء�
���õ��ĵģ����ڳ��ڷ�������ʱ����������
���֡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110260a00">
��������Σ���𣿡�


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110270a04">
��Ҳ����˵��ȫû�С�
��������ĳ����У��кS����һ���ж������
���ǡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110280a00">
��������������
������������ǣ��п����ǳ��鷳����



{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110290a04">
�����ǲ����ܡ�
��������������Щ����Ԥ���۵��ټ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110300a04">
�����ǵ�����Ӧ���Ǻ���֧Ԯ��ʿ����װ��Ҳ
��ֻ�����̶ֳȡ�
����Ȼ���ǲ��ܴ��⣬��Ҳ���ù��ڵ��ġ���


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ϵ��̴ӺǺǵ�Ц�ţ���Ҳ���Ե�ͷ��
��������ǲ���˵����

����Ĭ�ķ�ΧͻȻ��ɢ������
��<RUBY text="Wheel">����</RUBY>��<RUBY text="Rail">����</RUBY>�Ϲ���ǰ�У�
���й��ɵĳ�������������С�

���ҵ����߲��ɵÿ������ϳ���һ�ζ�û�п���˵����
��Ů�ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0110310a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������ξ�������羰��
����������ȷ��˵�����ǡ�

�������Ĳ����ɵ�״̬��
����ȻĿ�����ڿ���ɫ�����ǽǶ�ȴ�̶���������ʹ
���θı䣬��Ҳ����û�з�Ӧ��


���������ڿ���������ڿ��ڲ���
�������Ļ��������������˫���У�����ӳ����ʲô��
���ء�

����Ϊ��������֦��Ů�ԣ������������顪��
��
���Һ������ɵ���Ҫ�����������顣���������˼����
�����������˰ɡ�

����ƽʱ�Ĵ�ξ��ͬ����֪Ϊʲô�������ڿ���������
ͨ�������ϵ�Ů�ԡ�
�����������������ᣬ���š�

������֮ǰ���������������������Ӻ���
����Ȼ���񡪡������ǲ�ͬ����ʱ������ȷ�е���־��
����־��������ɫ������������������ڣ�����������
��Ƿȱ��������־��

���������߶��ĺ��Ӳ�֪������λؼ�������
��
�����޴�������쾳������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0110320a03">
�������������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110330a00">
�����������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���������ҵ����֣��ҵĻش�������һЩ��
��һ����ԭ���ǳ������ҵ����ϡ����������⣬Ҳ��Ϊ
������������˵���ڽ��ң����������Լ��Ķ��ס�

������<RUBY text="����">����</RUBY>����Ҳ�������������š�
������������һ�仰�ļ������Ϊ�Ի��ļ����˵��Щ
̫���ˡ��������������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0110340a03">
��������������
��ȥ����ĵط��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������·�ĺ��ӣ�������֮������Ŀ�ĵ��߿���
������
��
�������ξ˵��������һ�仰��

����ĵط���
����һ������ζ�ţ�<RUBY text="����������������">�����Ǳ�ֱ��ǰ��</RUBY>ĳ���ɡ���


������S������������ɱ����ʨ�Ӻ�֮����£�������
���ġ����԰ɣ��͹ۿ����������Ҳ���޴�������ͼ��
���ɡ�
��ȥ����ĵط���

��û��Ŀ�ġ������Ҫ�Ҹ�Ŀ�ģ��Ǿ�������ս��
���������ڴ��С�����Ⱥ֮�С�

��û���κ��������ݣ�ֻ����Ϊһ���ˡ�
�����Լ����ڵ��£�����Լ����ݵĽ�ɫ����

���ǽ������Ǵ�������֦��Ҳ�����Ǵն�������
��û�й������֣�Ҳû�з�ɱ���Ǻŵ�����
��
����Ը��Ϊ����֮������û�ڳ����䡣

����������˵����������
�������ξ��˵�Ĵ���������˼�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mc03/0110350a00">
����ξ����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0110360a03">
�����ǿ���Ц����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110370a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����֪��ʱ��
��������ͷ���������ҡ�

�����������ĵ�ĳ�����Ѿ��ص��˷��䡣
����Ϊ��������֦��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0110380a03">
���ǿ���Ц������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���������ظ�˵�š���֪Ϊʲô������ԥ���޷����̵�
ͷ�ش�����
��
����ǻ�����ģ������������ʹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/mc03/0110390a00">
������û��Ŀ�ĵص����У���Ż��������Ȥ
�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��������ȥ������ʹ�����塣
����ֻ����Ϊ������Ϸ���ش�������

���Ҳ��ò�ȥ�������������뷨����ǿ�ȹ���һ������
�������С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mc03/0110400a00">
��������������������򶫻�������
���������ÿһ�춼������Ȥ�ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110410a04">
�������Ǻܺð���
���ر���֮��ļ��ڣ�˳·������Ȫ������
������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��ɴ���̴�Ҳһͬ˵�ţ����Ƕ�����֮ǰҪ��
��������ȫ��֪��һ����
�������ξ¶����΢Ц������ص���ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0110420a03">
��������ѽ��
���ǡ������Ǿ�ȥ�ɡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0110430a03">
���Ժ󡣡�


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110440a00">
���ǡ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110450a04">
���ţ���ʱ�򡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
������ȫԱһͬ������Լ����<k>
������ȫԱ��֪�����Ǹ�<RUBY text="����">�Ժ�</RUBY>�ǲ��ᵽ���ġ�

������ȫ�ǽ������ڴ˿̵Ŀ�ͷԼ����<k>
������������������������ֿ�ͷԼ��������ᱻ��
��������Ҳû�����ܻ���������

�������������ɵĶԻ���<k>
��
��
���������ɵĶԻ����������Ҹе��ر��ѹ���

��������ע�Ӵ����ξ������Ͼ��΢Ц��
������������һ�㣬������ת���˳�����

����ʹ��ͣ������Ҳ���޸ı�ķ羰�������ҵ���Ұ��
�����ҡ�������֮ǰ��<RUBY text="�ǣ����">����</RUBY>��ӳ����һ��Ӱ�ӡ�

�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mc03/0110460a00">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm34", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
��������վ�������������
���ڳ��������ӿڴ�����һ˲�俴�����Ǹ��ˣ�������
���Ѿ����������ˡ�

�����ǡ�
���ղš���ȷʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//�����衿
<voice name="����" class="����" src="voice/mc03/0110470a04">
���ն����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�����þ��ȵ�Ŀ�������ҡ�
����λ�����̴ӵ�ע����Ӧ�ñ���Ҫ�ߣ���Ȼ��û��ע
�⵽ʲô�����Ҹղſ������˺ܿ���ֻ���ҵĴ����


�����ǡ���
��
���Ǹ����ˣ��Ҽǵ�<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/mc03/0110480a00">
�������Һܿ��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0110490a04">
��Ҫȥ���
�������߶�����Σ�ա���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0110500a00">
������֪������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���ղ���˵���Ļ������ڻ�Χ�����Ҷ��ߡ�
������ʹ��ˣ���Ҳ����Ҫȥȷ�ϡ�


����������������ֹ�����˳�ȥ��
��<RUBY text="����">����</RUBY>�Ĵ��������ҵ����������Ҹ�����
������Ҳ����б�Ҫ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�ΤΥե�����˿����äƤ��뤳�Ȥ�BGM��ֹͣ�����ʤ�����ClearFadeʹ�� inc�Ѿ�
	ClearFadeAll(500);

}

..//������ָ��
//�Υե����롡"mc03_012.nss"