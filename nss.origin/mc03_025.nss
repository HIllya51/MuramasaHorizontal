//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_025.nss_MAIN
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

	$GameName = "mc03_026.nss";

}

scene mc03_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_024vs.nss"


//��С�Ĥλ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 50, "BLACK");
	SoundPlay("@mbgm15", 0, 1000, true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������������ġ�

�����Լ�Ҳ��̫���ס�
������ҰС�ġ�����Ӧ�����ҵ����֣����Ҳ�֪������
ʲô���塣

��<RUBY text="����">�Լ�</RUBY>��ʲô�ء�

����ָ�����ЩǷȱ���ư���ż�������ɡ�
��
������˵�����ػ��ǣ����˸��ö��ȵ���<RUBY text="��">����</RUBY>�ء�


����ţ����߶����Լ��ɡ�

����ô���Լ������ڲ��������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤����

//�¤��\��󤤤��ޤޱ����軭 inc�Ѿ�
	CreateColorSP("�}��ܞ", 1000, "#000000");
	OnBG(100,"bg086_����_01a.jpg");
	FadeBG(1000,true);
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����Ȼ�ְ��ָɾ�����ȴ�Ǻܸ���ķ��䡣
���Լ��Ǵ����￪ʼ�ġ�

�����Ķ����ᶯ��

��ʲôҲ��������Ҳ��֪������ʲô��
��
��ʲôҲû���룬Ҳ��֪������ʲô��
��

��ʲô�������ס�
�����ǣ�ֻ���Լ���һ�ж�<RUBY text="������">������</RUBY>����������׵ġ�


�����Բ��ᶯ������Ҳֻ��һ��������


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwС�Ĥθ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���ܥ����o��
<voice name="����㣯С�ĸ�" class="����������" src="voice/mc03/0250010e125">
������������


//���ܥ����o��
{	NwC("cg/fw/nwС�Ĥ�ĸ.png");}
//������㣯С��ĸ��
<voice name="����㣯С��ĸ" class="������Ů��" src="voice/mc03/0250020e126">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������ߣ��������ˡ�
���ǽ���˫�׵����ǡ�

������������������Ц�ݣ��ظ�����˵���������Ļ���
��
��������֮�ࡣ
�������ǻ������Ѿ��ܺ��ˣ�֮�ࡣ

��������������ʲô��˼�ء�<k>
����������������ʲô��˼�ء�<k>
��
���Ҳ����ף���ֻ�ǿ������ǡ�

��������֮��������˵�˲�ͬ�Ļ���

�������۷ɾ�Ҳû�£�̫���ˡ�
��
��������

���۷ɡ�<k>
���۷ɡ�

����仰���������������ǡ�
�����ǣ���֪Ϊʲô���뵽������֣���������������
�Ķ�����

�������������޷��ж����Լ��ж������ģ�����������
�Ļ��

��
��������������ʲôҲû��ʧȥ����

��
����������������˾�����ľ���֮�У�
������������û����ô����!!��

��<RUBY text="��">��</RUBY>��һ�ο��˿ڡ�<k>
��
�������ܼ������۷���

������ʻ������Լ�Ҳ��֪��Ϊʲô��˵���ڡ�
����������������仰����þ��ȣ��ܿ�¶�����ر��
�˵ı��飬һ�δλش���˵�ܼ�����

���ܼ����۷ɡ�

�����뷨�������س�Ϊ���ҵ�Ŀ�ġ�
�����۷ɡ�������֮��һ�����иı䡣

�����������Ķ������ܹ��ٴο�ʼ��

���һ��ǲ��ᶯ��
�����ǲ�������£�������Ŀ�ģ��ͳ�Ϊ��һ��<RUBY text="����">��Ϊ</RUBY>��


����Ϊ�ȴ�����Ϊ��<k>
��
�����ң���Ϊ�����Ҳ�����<RUBY text="����">����</RUBY>��

���ȴ������۷ɵ�ʱ��<k>
��
���뵽�ڵȴ����Ͳ����ѹ������������ţ���������ʶ
���Լ�����Ϊֹ��ô��<RUBY text="����">�ѹ�</RUBY>��

����Ȼ��ǰ���ѹ�������󲻻��ˡ�
�����ڰ���֮�еȴ���

���ȴ��š�
��
��
���������������������������������������������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������<k>û������

����һ�Σ�˫�ױ�һ�����ŵ������г��˲�����


�������ʼ�Ǿ��š�<k>
�������ǿ��Ƶ�������<k>
������Ƕ϶������ĺ�������ǽ�ڴ��˹�����

������Ϊʲô��<k>
���������������������������������۷ɾ�Ҳ��<k>
�����⣬�ⲻ���ܡ�<k>
������������������������Ϊʲô����

������������������

������֮��˫��û���ٿ����ҵ���ߡ�

��ż�����ǳ��֣������һЩ̽���Ķ��������������
����
������Ѹ�ٵ�˵��Щʲô��Ȼ��Ѹ���뿪�ˡ�

�����ں����ҡ�
�������ҿ�����Щʲô��


����Ҳ���¡�
�������»���˫��Щ<RUBY text="����">ʲô</RUBY>��

��������û���������ǡ�

���Ҵӵȴ���ʲô��
����Ϊ�˺�����ʲô��

��������ʱ�����̱�����ࡣ

�����ܶ�����ֻ�Ǹе��ѹ���
��һֱһֱ�е��ѹ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ұ����������}���������΢��ʤΤǤ����ǰ�ܞ inc�Ѿ�

	FadeDelete("@OnBG*",1000,true);


//��ѩ܇�


	StR(2100, @0, @0, "cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStR(300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������Ǵ�ʲôʱ��ʼ���ء�
���Ǹ��ˣ���ʼ�������ҵĲ����С�

���ʼ�������Ȼ����˫�ף���Ӧ����һ��ҽ���ɡ�
��
���������Ǹ��˺�ҽ����ȫ��ͬ��

�������������������

���Ǹ��ˣ���ʼ��ʱ������ǿ����ҡ�
��
�������ҡ�����ע�⵽��ʱ�����Ѿ���ʧ�ˡ�

��֮�󡪡����ǵڼ��ε������ء�
���Ǹ���������һ�������ҡ�ͻȻ˵��һ�仰��


����֪����
���۷������ˡ���

��������

������<RUBY text="������">������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStR(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����仰���Ҳ�̫���ס�
��������ʲôҲû�лش��Ǹ��˻�ȥ�ˡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�
	StL(2100, @0, @0, "cg/st/stѩ܇�_ͨ��_˽��.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 1100, 1100, null, true);
	FadeStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ǣ�֮���������ˡ�
������˵����

���۷��Ѿ����ˡ���

��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���Ҳ�֪����˵����ʲô����֪����֪����
����û�лش��Ǹ��˻�ȥ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�
	StR(2100, @0, @0, "cg/st/stѩ܇�_ͨ��_˽��.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 1200, 1200, null, true);
	FadeStR(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ܿ��������ˡ�

���۷��Ѿ������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStR(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������ײ����ײ����ײ����ס�
���Ǹ��˻�ȥ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�
	StL(2100, @-50, @500, "cg/st/resize/stѩ܇�_ͨ��_˽��_m.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 800, 800, null, true);
	FadeStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ˡ�

���۷ɲ������ġ���

�����۵ȶ�ã�Ҳ�������ġ���

��ƭ��!!

���������ش�
���ҷ��ţ������������¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���Ǹ����뿪�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�

	StR(2100, @0, @450, "cg/st/resize/stѩ܇�_ͨ��_˽��_m.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 1000, 1000, null, true);
	FadeStR(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���۷ɱ�ɱ���ˡ���

�����ǻѻ���
����֪����֪����

��������˵�����Ǹ��˵���һ��ֽ��

��
������������������������֤���须

�����������ſ������ķ��š�

��
���������������������������۷ɡ�

�����������ſ������ķ��š�

������Ŷ������

����֪����
����֪����

�����ǻѻ���
����Ϊ�ְ�����˵�ˡ�

��˵�����ܼ����۷ɡ�
���۷�ƽ�����£�

���۷�û�б��崨��ʦɱ����

���ԡ��������ġ�
�������崨ɱ�ġ�����

��ɱ�˷����崨��ʦ��
����Ȼû�б��崨��ʦɱ������Ҳ���ᱻ����ɱ����


�������˺ܶ��¡�
�������崨���и�Ҫ���Ӷ��ӵļһ��

��û�������¡�
���������Ҳ�֪����

�����۷�û�й�ϵ��

���������������

���Ǹ��ˣ����ҿ�����һ��ֽ��
�����Ƿ��š��������ķ��š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��
�����ض�����������δ�������İ˺š�����״һ����

��
�������������۷ɡ���ɱ�����ɡ��������Թ���


����Ҫ���ҿ���
���������Ҳ����ס���֪����


������δ�������İ˺š����������ն�������

��
������������������ɱ�������۷ɡ�


���Ҳ����ף�
����˵�˲����ף�



����������δ�������İ˺š����ն�������
������������״���������۷ɡ���ɱ����


����Ҫ��
���������Ҳ�֪�����ǻѻ���

���۷ɣ���

�����ն�����ɱ�ˡ���

��ƭ�ˣ�
��ƭ��!!
��ƭ�ˡ���!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStR(300,true);
	WaitKey(300);

//��ѩ܇�
	StL(2100, @-50, @550, "cg/st/resize/stѩ܇�_ͨ��_˽��_m.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 1200, 1200, null, true);
	FadeStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��
����������δ�������İ˺š����ն�������
������������״���������۷ɡ���ɱ����

�����ᡣ
���������ˡ�

������ҿ�����ֽ��

���Ҷ�˵�˲����ף�
����Ȼ�����׵��������ף��������������ᣡ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStL(300,true);
	WaitKey(300);

//��ѩ܇�

	StR(2100, @0, @600, "cg/st/resize/stѩ܇�_ͨ��_˽��_m.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 1400, 1400, null, true);
	FadeStR(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��
����������δ�������İ˺š����ն�������
������������״���������۷ɡ���ɱ����

�����ᣡ
������ҿ�����

�����֡����޷����ɵı���������ᣡ

������ֽ���Ǹ�һ�����ְ���ʱ���������ģ����ֺ�
�����йص��ļ���
����������������С˵��������Ц��

������ֻд����ʵ�ģ������ֽ��
������Ϊ�����ļ�֮��Ķ�������
��
���Ҳ��뿴�����ֶ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStR(300,true);
	WaitKey(300);

//��ѩ܇�
	StL(2100, @-50, @750, "cg/st/resize/stѩ܇�_ͨ��_˽��_m.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 1600, 1600, null, true);
	FadeStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��
����������δ�������İ˺š����ն�������
������������״���������۷ɡ���ɱ����

��ƭ�ˣ�
��������ƭ�ˣ�Ϊʲô���д�˰���

��������ƭ�ˣ�Ϊʲô�����!?

�����ֶ�������ҿ���!!

���á���
���ţ����ֶ���ȷʵ�޹ؽ�Ҫ����

������ֽƬ��һ����һ������ν���԰ɣ�
����ʵ��������ʵ�����԰ɡ���

��ƭ�ˡ�

����Ӧ�����ס�����

���������ˣ�ֻ˵ʵ���Ļ��ᣬ
����Ĳ��డ����
���٣��٣��١���

������Ϊʲô����<RUBY text="����������">��Ӧ�ö���</RUBY>����

��ƭ�ˡ�

�����á���

�������۷ɱ�ɱ���ˡ���

�����ն�����ɱ���ˡ�����

��ƭ�ˣ�

��ƭ�ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStL(300,true);
	WaitKey(300);

//��ѩ܇�
	StR(2100, @0, @800, "cg/st/resize/stѩ܇�_ͨ��_˽��_m.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 1800, 1800, null, true);
	FadeStR(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�������۷ɱ�ɱ���ˡ���

�����ն�����ɱ���ˡ���

����������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStR(300,true);
	WaitKey(300);

//��ѩ܇�

//һ�������� inc�Ѿ�

	StC(2100, @0, @900, "cg/st/resize/stѩ܇�_ͨ��_˽��_l.png");
	Request("@StC*", Smoothing);
	FadeStC(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����ն�����ɱ���ˡ���

������������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStC(300,true);
	WaitKey(300);

//��ѩ܇�

//�Ӑ��г��뤯�餤������Ф� inc�Ѿ�

	StC(2100, @0, -50, "cg/st/resize/stѩ܇�_ͨ��_˽��_lm.png");
	Request("@StC*", Smoothing);
	FadeStC(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�������۷ɱ��ն�����ɱ���ˡ�����

���ǡ�����

�������ô���ء�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�����
	DeleteStC(300,true);

//����������
	WaitKey(1500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��û������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤���w

	EfRecoIn1(18000,600);


	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg006_���w�β���_01.jpg");
	CreateTextureSP("�}����200", 2100, 400, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");

	EfRecoIn2(300);

	WaitKey(1000);

//������
	EfRecoOut1(300);

	Delete("�}����*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���۷�û������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤���w

	EfRecoIn1(18000,600);
	
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");
	CreateTextureSP("�}����200", 2100, 400, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");

	EfRecoIn2(300);

	WaitKey(1000);

//������
	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���۷ɲ�����

��Ϊʲô��

������һֱ����һ��ġ�
��һֱ��һֱ������һ��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�䥯�������w


	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg014_�`�}���A��_02.jpg");

	CreateTextureSP("�}����200", 2100, 100, InBottom, "cg/st/stҰľɽ�M_ͨ��_˽��.png");
	CreateTextureSP("�}����300", 2101, 618, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");

	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoIn1(18000,600);


	Delete("�}����*");


//�����롤��Ĥ����w

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg019_��У����_01.jpg");
	CreateTextureSP("�}����200", 2100, -100, InBottom, "cg/st/3d���_����_�i��.png");
	CreateTextureSP("�}����300", 2101, 618, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");

	Fade("�ե�å����",300,0,null,true);

	EfRecoIn2(300);


	WaitKey(1000);

//������

	
	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����ѹ���ʱ����һ������������ߡ�
�����һ���������ҡ�

��Ϊʲô�����ڲ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤���w
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg008_����_01.jpg");
	CreateTextureSP("�}����200", 2100, 400, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");


	EfRecoIn2(300);

	WaitKey(1000);
	EfRecoOut1(300);

	Delete("�}����*");



//������
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��������һ��ɡ�
��������㡣

��������۷���Զ��һ��

������ĴӺܾ���ǰ������������ġ�

�����ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤���w
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg006_���w�β���_01.jpg");
	CreateTextureSP("�}����200", 2100, 400, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");


	EfRecoIn2(300);
	WaitKey(1000);

//������

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
��Ϊʲô��

��Ϊʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_��_��Ġ����02", 1000);

	CreateColorEXadd("С��ҙ��", 15000, "RED");
	Fade("С��ҙ��", 0, 1000, null, true);
	Fade("С��ҙ��", 1000, 0, null, true);


//��ѩ܇�


	StR(2100, @200, @1250, "cg/st/resize/stѩ܇�_ͨ��_˽��_l.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 2000, 2000, null, true);
	FadeStR(300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����ɱ���ˡ���

�������۷ɱ�ɱ���ˡ���

�������۷ɱ��ն�����ɱ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����

	DeleteStR(1000,true);

	OnSE("se����_��_��Ġ����02", 1000);
	Fade("С��ҙ��", 0, 1000, null, true);
	Fade("С��ҙ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�������ն�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������륨�å�
	CreateColorSP("�}ɫ�\", 2000, "#000000");
	CreateStencil("�ޥ�����",1200,center,InBottom,128,"cg/st/st����_ͨ��_˽��.png",false);
	SetAlias("�ޥ�����","�ޥ�����");
	CreateColorSP("�ޥ�����/ɫ��", 1200, "White");
	Fade("�ޥ�����/ɫ��", 0, 500, null, false);
	SetShade("�ޥ�����", HEAVY);
	Fade("�}ɫ�\", 100, 0, null, true);

	WaitKey(1500);

//������
	Fade("�}ɫ�\", 2000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�������ն���������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������륨�å�
	CreateTextureEX("kage", 1050, Center, InBottom, "cg/st/st����_ͨ��_˽��.png");
	CreateStencil("�ޥ�����",1200,center,InBottom,128,"cg/st/st����_ͨ��_˽��.png",false);
	SetAlias("�ޥ�����","�ޥ�����");
	CreateColorSP("�ޥ�����/ɫ��", 1200, "White");
	Fade("�ޥ�����/ɫ��", 0, 500, null, true);
	SetShade("�ޥ�����", HEAVY);
	Fade("�}ɫ�\", 100, 0, null, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���ն�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������륨�åȡ�����ͨ�������}
	PrintGO("�ϱ���", 20000);
	CreateColorSP("�}ɫ�\��", 100, "#000000");
	CreateTextureSP("kage", 1050, Center, InBottom, "cg/st/st����_ͨ��_˽��.png");
	Delete("�ޥ���*");
	FadeDelete("�ϱ���", 2000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���ն�����!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������󡸱O�ޣ�ӛ���ߥ�������ޤ�������
//	FadeDelete("kage"1000,true);
	FadeDelete("kage", 1000, true);

//���������ǹĄӤǤ�������inc�Ѿ�
	CreateSE("�Ą�1", "se����_��_��Ġ����02");
	CreateSE("�Ą�2", "se����_��_��Ġ����02");
	MusicStart("�Ą�1", 0, 1000, 0, 1000, null,false);
	MusicStart("�Ą�2", 0, 1000, 0, 1000, null,false);
	WaitKey(1000);

	Fade("С��ҙ��", 0, 1000, null, true);
	Fade("С��ҙ��", 1000, 0, null, false);

	SetVolume("�Ą�", 1000, 0, null);

//������
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 1002, "#000000");
	OnBG(1001,"bg086_����_01a.jpg");
	FadeBG(1000,false);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ",1500,true);




//���ʤ��ۤ��������Ф�������ΤǱ�ʾ���Ƥ��ޤ��� inc�Ѿ�
//��ѩ܇�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���٣��٣��١�����

���ǡ����߰ɡ���

��<RUBY text="������">ͬ����</RUBY>�ڵ��š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ۥ磻�ȥ�����

	CreateColorEX("�ۥ磻�ȥ����ȣ�", 5000, "WHITE");
	Fade("�ۥ磻�ȥ����ȣ�",3000, 3000, null, true);





}

..//������ָ��
//�Υե����롡"mc03_026.nss"