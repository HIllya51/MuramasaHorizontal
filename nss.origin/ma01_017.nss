//<continuation number="1370">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_017.nss_MAIN
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
	#bg007_��m��·a_01=true;
	#bg017_����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_018.nss";

}

scene ma01_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_016.nss"



	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");

	OnSE("se�ճ�_ѧУ_���㥤��01",1000);
	WaitKey(2000);

	SoundPlay("@mbgm22",1000,1000,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�����㥤�����
//����ͨ��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ѧ��
������һ����·ǰ�У�һ�����崨˵��֮ǰ��
������

�����崨����ѯ�������ǵġ����ƺ�����ֻ��
�䵱�໤�ˣ�������������ǰ�����
����������̬�ȣ�û���˲���Ȼ��ӭ��

��������ҹ��֪��˭������˵����Ҳ��Ҫ��
�������������ֹ�ִ�����Ļ���
����֪���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);

	StL(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");

	StR(1010, @-60, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StCR(1000, @60,@0,"cg/st/stС��_ͨ��_�Ʒ�.png");


	FadeStL(300,false);
	WaitKey(200);
	FadeStR(300,false);
	FadeStCR(300,true);


	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170010b57">
��ū����������
����Ȼ�ǲ������ŵĴ��ţ�
ȴ����һЦ��֮�ɡ���
���ǵ����µ����顣��

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170020b43">
��ʵ������һЦ��֮�ء�
������һ����������˵ʵ�����е��鷳������

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170030b57">
�����˵�����ȥ����û���Ǹ��鷳����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ұ��ر�Ҫ��ķ��ԣ��崨������ס�

����ֹ���鷳��
�����˴�Ŷ���֪������ֻ��������ô˵�Ŷ��Ѱɡ�

��������е���һ��񺮡�
�����Ÿò��ᡭ��

���ò��ᣬ�����ǻ���ĥĥ����ʱ���Ѿ�����һ���ɡ�
���������������鲻�Խ����뷢���������ֲ��������뷨��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170040b57">
�����ǡ���
��˵�������������Ҳ��������ô���۵��������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170050b56">
��������

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170060b57">
����ʹĻ��������������޷�����Ĺ���
������Ȼ�����ﲻ��ˡ��
�������������¹ʻ��߷���Ŀ����ԣ��������
��������ڴ������ƽ�����¡���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170070b43">
�����ţ���Ҳ������

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170080b56">
���š�����š����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0048]
����ȷ��ū���Ļ��Ͳ��ᱻɱ�˰ɡ�
�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0049]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170090b33">
������˵ʲô����ʦ!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������Һ��ұ�һ�Բ������������ķ�Ӧ��
С�Ļ�ͷ��������
�����ƽ��崨�����Զ�ײ��

�����ѵá�
������˵����⾰ͷһ�μ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170100b33">
��ʲô��ƽ�����£������Ų���ƽ�����£�
���������һ�����Դ�������������
���������͸�����һ���𣿡�

{	FwC("cg/fw/fwС��_�Ӥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170110b33">
�����Ǳ����˻����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
  ֱ������֮ǰ���ڶԸ�Ϊ�崨��ͬ�ие����ˣ�
���Ǹ�Ϊ�ɵİ�Σ���ľ��岻����һ�����ӱ���
��Ĭ��������ӷ·��Ǽٵ�һ����
  С�Ĳ�ͣ��˵�š�

���Ǳ��鴿��أ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170120b33">
���ɱ��κ��˶����������¡�
������Ȼ����������Ϊ���������ǡ���
ȴ��װ��һ�����˵����ӣ��������¡���

//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170130b33">
��������һ��ܿ��ġ�����

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170140b33">
�����ԡ�����

{	FwC("cg/fw/fwС��_�Ӥ�.png");}
//���椰��
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170150b33">
�������ء�����

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170160b56">
���侲�㣬С�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��С�������������Ҵ������˫������ץס����
��ʹ���Ҳû��ƽ��������������
������ʱ�������û��˭����οһ���ǲ��еġ�
���Ǵ�ţ����ҵ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170170b57">
����������
������Ұ��������İ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������ģ��崨ʮ���侲��
���·�������ʶһ�������Ͷע�ڴ�ͷ����
���ӵ�С�����ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0111]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170180b57">
����Ϊ����ȴ�����һ�����Դ���
�������п��𡭡���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

	SetBacklog("����ʦ���뷨������", "voice/ma01/0170190b43", �ұ�);
	SetBacklog("����Ȼ���ǻ�������Ҫ��������ǿ��",null,null);
	SetBacklog("�����ɣӡ��ͣϣңš��ȣţ��֣١šŵ����𣿡�",null,null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0112]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170190b43">
����ʦ���뷨������
����Ȼ���ǻ�������Ҫ��������ǿ��
�����ɣӡ��ͣϣңš��ȣţ��֣� <RUBY text="�ԣȣ���">�š�</RUBY>�����𣿡�

</PRE>
	SetTextEXC();
	Request("@text0100", NoLog);
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����˵�����Ĺ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0121]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170200b57">
����������Ϊ���ಢ��ֻҪ���ž��㹻��
��λ���ʮ����Ҫ��
����Ȼ���ţ���Ӧ��׷����õ����ʽ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170210b57">
����ʹ����վ�������
������������������Ұ���뷨���ɡ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170220b56">
������
���ǡ�����

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170230b57">
��������ô���¡�
���ղ��ҵĻ����������Ǹ���˼������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����΢��Щ��Ϊ�飬�崨������ס���°͡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0131]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170240b57">
�������ܽ�����ȫ��<RUBY text="��������">Ӫ�ȳ���</RUBY>��
�ղ�����������������

{	FwC("cg/fw/fwС��_�@��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170250b33">
��������!?��

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170260b43">
���ǵ�����ʲô��˼����

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170270b57">
��������������Ϊ�˷���ū�������������ô
����ð��֮�������ֻ���ô������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170280b57">
�������

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170290b56">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��ͻȻ���Ͽεķ�ʽ���������Ҿ���ʧ�롣
������������������������ơ�������ԭ����
վ�š���ͬʱ˼������������뷨��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0141]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170300b56">
�������Ǹ�������˵���Ҳ���Ϊ�������ڹ���
���������������Ǿ��˵��ۿڣ��ٴ������ô�
�͵�����ȥ�ɡ���

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170310b57">
��ÿץһ�˾���һ�Σ��𣿡�

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170320b56">
���ǡ������������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������<RUBY text="��������������">ÿץһ����һ��</RUBY>��

�����ˣ��������������崨����˼��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170330b56">
��ԭ����ˣ�������˵������

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170340b43">
��������ֻΪ��һ���˷����ֹ���
�����ھۼ���һ������֮ǰ��һ��
������Ǽ���ڹ���ĳ������

{	SetComic(@0,@0,1);
	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170350b56">
��������˵������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����ô�����������������ͷ��
������ħ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0171]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170360b57">
��������ˡ�
����Ȼ��֪����Щū�������ж���ֵ��
���������䲢�����㣬����Ҳ�����ߡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170370b57">
��Ӧ����ĳ�����صĳ�����<RUBY text="����">�ֿ�</RUBY>
���ڡ������˳�������ҵ�����Ļ�
������������Щʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ȼ��ô˵�ţ��崨ȴû�б��ֳ�һ˿�ֹ۵����ӣ�
�����Ǹ�ƽ���ı��顣
��Ȼ���ҵ��ľ�ȴ��Ȼ���ʡ�

����ôһ˵��Ȼ������ˡ�
��������˼򵥡�
������ȴ���붼û�������

����������������Ĳ�����
����ôһ�뵹��΢��Щ�����ġ�

����Ϊ��Ըȥ���ɱ�����ū�����������£�
Ҳ��һֱû���������˼����
�������ǲ��еİɡ���
����ʹ�����������Ҳ���ܲ��úÿ��ǡ�

�����ĵ�ͬʱҲ�ڷ�ʡ��
��Ҳ�ƺ��������Ǹ��˿����ұ���������ʵҲ�����Ƶġ�

����Ҫ˵С����Σ����Ѿ�̹�ʵظм�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetComic(@0,@0,4);
	SetFwC("cg/fw/fwС��_�ɥ�`��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170380b33">
���ϡ���ʦ�������������Һøж�����

{	DeleteComic();
	FwC("cg/fw/fw⏴�_Ц�.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170390b57">
��̫�����ˣ�����Ұ���ֲ��Ƿ�����ʲô
�ر�����Ĺ��롣��

{	FwC("cg/fw/fwС��_�ɥ�`��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170400b33">
������������ʦ��Ȼ���ǲ�һ��������Щ
���ĳ���ֻ���˷ѿ������й������
������֮���ꡪ��ȫ��һ����
���ң�������ʦ��������

{	FwC("cg/fw/fw⏴�_�@��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170410b57">
���ǡ����𡣡�

{	FwC("cg/fw/fw���w_Ц�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170420b56">
�����������㿴���ұ����ոջ����
��ײ��ʦ�ļһ���˵Щʲô�أ���

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170430b43">
���Ǿ�����ν�����ǿ���۷ɡ��˾���
��������ʹ��Ĺ�ȥһ����ǰ�������ﰡ��
������˵����С�ĵ���ȴ����Ҳδ��̫��
�˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��Х���
	OnSE("se���L_����_Ź���B��01_L",1000);

	CreateColorSP("�ե�å���", 15000, "#FFFFFF");
	DeleteStCR(0,true);
	DeleteStR(0,true);

	CreateTextureSP("�}��������", 50, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");

	Shake("�}��������", 600, 0, 10, 0, 0, 600, null, false);
	Fade("�ե�å���", 300, 0, null, true);

	WaitKey(200);

	Fade("�ե�å���", 0, 1000, null, true);
	Shake("�}��������", 600, 10, 10, 0, 0, 600, null, false);
	Fade("�ե�å���", 300, 0, null, true);

	WaitKey(200);

	Fade("�ե�å���", 0, 1000, null, true);
	Shake("�}��������", 600, -10, 0, 0, 0, 600, null, false);
	SetVolume("OnSE*", 600, 0, null);
	FadeDelete("�ե�å���", 300, true);
	Delete("�}��������");

	WaitPlay("OnSE*", null);

	StR(1000, @30, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fwС��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170440b33">
����ô��ʦ����������ô������

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170450b57">
���ǡ��ǰ�����֮�Ҿ���Ӧ���Ⱥúõ���һ��
�Ǹ������ֳ������֡�����

{	SetComic(@0,@0,6);
	FwC("cg/fw/fw�ұ�_����.png");}
//���ܥ�
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170460b43">
��Ҳ����֮ǰ������ȥһ��ҽԺ�ĸо�����

{	SetComic(@0,@0,6);
	FwC("cg/fw/fw���w_���b.png");}
//���ܥ�
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170470b56">
������֮�������ȥ�˶���԰������Ұ��
�ĸо�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0201]
�������߳��ĵ�һ����ʵ���ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0202]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170480b57">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��һ�����ţ��崨һ���Թ��Ե���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0211]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170490b57">
��������������ǳ�ª�����䰡��
��ū��ó������£���Ȼ�Ƿ���Ĵ���
���ö�֪��������ȴ���ĵػ�����ȷʵ
���ڡ�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170500b57">
�����Լ��Ĺ����޷����ε����ز�����
�����ݱ���������ڹ�ȥ��ȫ�������󡣡�

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170510b57">
��������һ�죬�����ڹ��컯��֮�¹�Ȼ����
ū�������Ĺ��ҡ����ɡ�
���������͹�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�������崨��
��
���ǰ����崨���ڱ�������ͳ��֮ǰ�Ĵ�͹�������˵ġ�

�������Ƕ��ԣ��������Ƕ���֮ʱ���Ѿ����ڵ�ͳ���ߡ�
��ʹȫȻ�����ø�л��Ҳ�ǡ�������Ȼ���Ĵ��ڡ�����
��ͳ��֮�µĴ�͹���ͬ��Ҳ��������Ȼ����

�����崨��ͬ��
����֪���Ǹ��������õĴ�ͣ��ֱ��ȿ����������ƻ�
��ģ����

��������ʹ��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170520b33">
��û�µģ���ʦ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�������������崨��С�Ŀ��ʵ�˵����
�������������֮ǰ��ʧ�ְɣ�����������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0241]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170530b33">
���������ġ�
�������ʦ��ץ��ū�����һ�������ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����ϧ�׷�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0251]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170540b57">
���������㱻���ȥ�����Ǻ����š���

{	FwC("cg/fw/fwС��_�@��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170550b33">
���ǡ���ô��������ū���������¡���

{	SetComic(@0,@0,13);
	FwC("cg/fw/fwС��_�ɥ�`��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170560b33">
����������

{	SetComic(@0,@0,16);
	FwC("cg/fw/fw���w_�@��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170570b56">
���侲��С�ġ�
������������Ͻ��侲��������

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170580b43">
�����ڱ����أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�������⵱�ڣ���������ˡ�
����ѵ�����Ƕ�����ҰС��ע���崨��
���Ǻ�����ͻᱬը�ģ����ӵ�Σ�ա�

�������������������ǣ��崨�����Ц�ˡ�
����֮�����Բ���ص������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170590b57">
����ª�����䡭��������ˡ�
������֮��ű���ú���ϧ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170600b57">
���úõء�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170610b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D





	CreateColorSP("��ܞ", 15000, "#000000");

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	DrawTransition("��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg017_����_01.jpg");

	DeleteStL(0,true);
	DeleteStC(0,true);
	DeleteStR(0,true);

	WaitPlay("@mbgm*", null);
	WaitKey(1000);

	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);



//������

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170620b57">
�������𡭡���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170630b43">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�����ῳȥ������һ�ǡ�
�����Ǵ����崨���ٴ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	StL(1010, @60, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	StCL(1000, @-60, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	FadeStR(300,false);
	WaitKey(200);
	FadeStL(300,false);
	FadeStCL(300,true);


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0291]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170640b57">
��������ټ����õ�ȷ��֮������������֡�
������ͬһʱ�̣�������������Ӱ��Ŀ�����档��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170650b57">
������λ��Ϊ�ն��ľ��١��������������֮��
�Ͷ϶���������Ϊ���𣿡�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170660b43">
����ȷ����ء���

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170670b57">
�������أ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170680b56">
���Ǹ�������ô˵�����ţ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170690b43">
���������롣�ǵú�����˵��Ϊ�пڶ���<RUBY text="����">����</RUBY>
<RUBY text="����">����</RUBY>��֮��İɡ���

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170700b57">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��������ͷ���崨���������ϵ����ӡ�
���������Ǹ�����Ӿ���������һ����
��Ŀ��ת���������Ŷ��档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0301]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170710b57">
��ԭ����ˡ����ɾ�������жϡ���
��ͨ�����಻��ʹ�������ĵ��ߣ���
������������㡣
��������˵ʲô���𣿡�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170720b43">
�����񻹶��ƶ������������ʡ������
��ν��룬��������뿪�ġ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170730b56">
���š���������Ȼ�ܷɣ������������Ƿ����ġ�
˵�����������ڸ��������൱�����������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170740b43">
�����ǿ��ǣ���װ�׵���̬���롭����ֱ��Ц����
�����һ��ֻ����Ϊ��ֻ�����룬
���������ڽ���װ�ס���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170750b43">
����ʹ��̸�������룬����������ô��ȥ�ġ�
��ô���˶�Ŀ�ذ����˳�ȥ�ġ��������Ͼ�
��������Щ���򡣡�

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170760b57">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���崨�������ֱۣ�����Ͷ����С�
�����ܿ�ع�ͷ�������ʵ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0311]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170770b57">
����˵���˽����𣿡�

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170780b56">
����������������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170790b33">
������û����������˵������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���Բ�֪��ôͻȻ�����չ�ĶԻ�������ҡͷ���⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0321]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170800b57">
������������������Ҫ�õ������Ľ��ۡ�
�������𡣡�

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170810b43">
������ʵ������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����·��
��Ҳ�����ֿ����ԣ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0331]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170820b56">
�����š���Ҫ��ĳ���������ݹ��Ҳ��ۣ���
ֻ�Ǹ���ͨ�����ְ��������

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0170830b33">
����������үү�Ļ���Ϊ�˻���������
��֪ʲôʱ�������
һ��Ҳ����û�����󡣡�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0170840b43">
������Ҫ�ǻ�������ĥĥ�����������
�Ǹ�������䱸������ǹ�˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����
�����Ҳ�����ʵ����û���������뷨�϶�����
�Ǹ�������б���ģ����ԡ�

�������Ǳ�˵����������ǹ��������֮��ġ�
��С�ĵ�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170850b57">
�����𡭡�
�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��������Щ����׽������ɫ���崨ֱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170860b57">
����ͷ�ж���Ѱ�������ɡ�
����Ȼ�µ����׷���㼣�ǲ������ˣ���������
���ҵ����˻��������������Ʒ����

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170870b56">
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("��ܞ", 1500, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg017_����_01.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);


//��ܞ�Q

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���ұ���С�ģ��Լ��崨�����Խ��������ַ�
ͷ�ж��������С�������Ž������ߵ�Ե�ʣ�
��Ҷ�O�@�������Զ��������
���������ֳ���˵��������ʲô��©�ĵط���

���;�����Ž���������ôԶ�ľ���Ҳ�ܿ���̿����
�ұ���ͬ���ҵ�����ֻ����ͨ�˵�ˮƽ��Ϊ��׼ȷ����
ֻ��������һ�������ڵ��ϡ�
����Ȼ���ˣ�Ҳ������Щʲô��

����������ʱ�򣬺�Ȼ����
��������ʶ�ĸо���
�·��ں�ʱ�ε�Ҳ����ͬ�������顣
��ʲô�ء������ˡ�

����ѧУ�����С������׽�Բص�ʱ��
���Ұ���ӹ��ɵ��۾�����֫�����Ŷ�������ش���
���������ȥ��

�����Ǻܿ�ͱ��ҵ��ˡ�
�����ұ��ҵ��ķ������൱�����ˡ�

��ͻȻ�е������������൱���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//����ġ�
<voice name="���" class="������Ů��" src="voice/ma01/0170880b11">
���롪�������룡����ģ������̫����
�����۷ɣ�������������������������
�ص���Ҫ�ñ��ӷ���Ŷ����

{	FwC("cg/fw/fw���w_�Ӥ�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170890b56">
����ô�������ǣ���һ�¾ͱ�����˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��������֪����������䣬ȴû��һ����õļ��䡣
�����ǵĵ�����ô���°��Ǹ��ˡ�

�������в��������Ļ���ƣ����������̧��ͷ��
����һɲ�ǡ�ʲô����һ�Σ��������ߡ�

����ɫ����Ƭ��
��էһ����ֻ��ʯͷ���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 1, null);
	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170900b56">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
������ӡ��
�����ǡ���û��

������Ҽ���
���������ǹ���������ϵġ���

��ֻ��ͷ�Ĳ��֡�
����ɳ��������š�

���Ұ���������ϸ����
������û�д�

���ɾ�����ء�������Χ��������ȫ��ͬ������ն�ϡ�
�����������ɵ���ζ�Ĵ����

��һ�������������飬�����ֻʣͷ���ĺ������������

{	OnSE("se����_��_��Ġ����02",1000);}
��ɢ����ʬ����
������������׼���

�����ѵ���Ӱ�������ص���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170910b56">
����Ҫ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0431]
��߬��ȭͷ��

��������û����ʧ��

���ұ���˫�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	CreateColorSP("��ܞ", 15000, "#000000");
	DrawTransition("��ܞ", 600, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��ʲô����������
�������ͺ��ˡ�

�����ڣ�ʲô�������뿴��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(1000);

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170920b57">
�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("��ܞ", null);

	StR(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStR(0,true);

	SetVolume("@mbgm*", 2000, 1000, null);
	DrawDelete("��ܞ", 600, 100, "slide_05_00_0", false);

//������


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170930b56">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���ع�������ʱ���崨վ����ǰ��
�����þ��ȵ�Ŀ�⿴�Ž�����ס��ȭ���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0471]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170940b57">
��������ʲô�𣿡�

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170950b56">
����������ûʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
�����ڻ������������淢������Ʒ����¡�
������������ô���������ǿ��Գ�֮Ϊ�����Ķ����ɡ�

���崨�϶��������ɣ�����û��׷����ȥ��
������ֻ��ɨ��һ�ۣ��ʹ��ҵ�ȭͷ���ƿ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170960b57">
���ҷ�������Ȥ�Ķ���Ŷ����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170970b56">
������������!?����ʲô!?��

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0170980b57">
�����ڸ��㿴���硣
��ȥ�����������˽й����ɡ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0170990b56">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);
	CreateColorSP("��ܞ", 1500, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg017_����_01.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

	CreateSE("SE01","se��Ȼ_ˮ_�����01_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);


//�����ߺӴ����������⤹��Τ⥳���ȵĤ˥��줫�����֤Τޤޤ������䡣
//���ӣţ�ˮ������������


	SetFwC("cg/fw/fwС��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0171000b33">
�����������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0171010b56">
���ӣ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171020b43">
������˵���ǵ���ˮ���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
��ѹ����ұ�����������ȷ�ı�����

��������Դ��ɽ��ƽ��б�档
����������ɽ�ȣ�����˵��ͬ���ڰ㿪�ѣ�
���ſ�̽������ɼ�ˮ�������ڹȵס�

�����ƾ��ˡ�
������ƺ�Ҳ�൱���ˡ�

����ȷ������˵�Ǻ�����
�ǿ����������Ǽ��¶������ĵ���ˮ����
������Ϊ���ߺӴ��������ǳ���׶���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171030b43">
��ԭ����ˡ����������
ԭ�����Ǵ����촨�����ġ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0171040b56">
����Ҳ��ô�����ء�
û�뵽�����ֵط��������ֶ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
�����������Ų�֪���Ķ�������ˮ����
����ϸ���룬Ҫ˵�����촨������Ҳδ��̫����
̫�����ҡ�����������������Ҳ�а빫����룬
��ʧ��һ����ˮ��Ӧ���൱ƽ���Ŷԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0171050b33">
����������ر�����İ�͹������������
��΢��Զһ��Ϳ������ˡ�
������������֪�������𣿡�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171060b43">
���������������е۹��Ժ�
��ž�û�˿������˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
���ұ���������п���
��ͬ�С����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0171070b56">
����Ȥ�Ķ�������ָ����𣿡���ʦ����

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0171080b57">
����Ȥ�𣿡�

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0171090b56">
���������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
���崨�����������ڵ�״����
���ڵ���ѧ�Ĺ۵�Դ�����ʮ�㡣

��Ҳ����˵��
���ⲻ�����Ǹ����������𡪡�������������Ĺ۵㡣

����������һ�µ�ȷ��ˣ��Ǹ�������ڡ���
��С�������ɳ�������Ǳ�롣
�����ߵ�ֱ��Ӧ��Ҳ�����������˰ɡ�

����������һ�붼����ӿ��ˮ��ռ�ݡ�
�����Ҵ���ò���������׺Ӵ���������Ӿ��һ��
ƽ���Ŀ����������֮һ��û�С�

��������Ϊ������˵�������ƺ����˵㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0171100b56">
����������˵��������С����ȥ֮��İɣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171110b43">
���Ҹ��˾��ã�Ǳˮͧ����˵�Ĺ�ȥ����

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0171120b33">
������ȥ�ġ�����ȥ�ġ���

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0171130b57">
������Ҫ���ֶ�����
�����������𣿡����˲�����ͨ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
����������
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0171140b56">
�����ߵĻ�������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171150b43">
��������������׾ٵ��ж�������С�ӵĳ̶ȡ�
��������˳�����»����������ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
����ʹ�ٱ���һ���ˡ�
���Ƕ������Ž��С�ӵ�ж�ħ��������������˵��
���������඼̸���ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0171160b56">
���ǣ�������ľ��Ǵ������

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0171170b33">
��ץ���ɡ�����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171180b43">
���ӵ�����ȥ�ˡ�
������һ�����Ǹ����棬��˵������������Ц
��Ц�������ĸо��ء���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171190b43">
���������ļһ��أ���

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0171200b57">
���Ǳ����˰ɡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171210b43">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
����ű������������ȴ�䲻���õ��˻�Ӧ��
�ұ������˴���һ����������
����������Ŀ�⿴���ұ��������崨����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0171220b57">
���Ǳ����ˡ�����������������
�����Ҿþӱ��ء������ٵ���ʮ�����ϡ�
����������Ǩ���˴�����֮ǰ���ڸ�����
�����ﵱ�����ֳ����ˡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0171230b57">
��������ˡ��������ܻ�֪��������ص�ˮ·����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171240b43">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
���ұ�ת������
������״���൱�ټ���������ɫ�ܲ��ÿ���

�������ˡ�
��Ҳ����˵��<RUBY text="��������������">��������ߵ���</RUBY>��

�Ǽ����������޵ļһ�϶�����ʲô�����ˡ�
Ұľɽ��Ĺ�ϵ�ߣ����������������֯������
����ɡ�Ȼ����ʹ��ˣ���Ҳ�����ֵľ���
�ǻ�飬����Ҳ��ͬ�壬�ܹ��������Ĵ��ڡ�

�����ҵ���ʶ���������û��ʵ�������ġ����ˡ���
��ֻ�ǵ��������ޣ����������ᡣ

�����Ǿ���������š����������ˡ�
��һ�ŷǳ���Ϥ����ס���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0171250b33">
����ͨ�������أ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
��ͻȻ����������С�ġ�
����ֱֱ�����Ż谵�ĺ��棬�·�ʲô��û������

����Ȼ��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0171260b56">
���������ǰ���
���᲻����Ǯϴ���죿��

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171270b43">
�����δ�����ء�
�����Ǵ����ֵط���ȥ�Ļ�
�����ܱܿ��������ߵ�Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
��˳�Ŵ���ң��ұ�ҲӦ�����͡�
�����崨�����Ҳ���������������ռ������ӡ�
��������б���Ϸ�������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0171280b57">
��������ô��������
������Ǵ����������ġ����Ҵ���˽⡣��

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171290b43">
��Դ��ɽ�ķ嶥�𣿡�

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0171300b57">
���뷨û���������ֵط���ȥҲ�޴����Ӱɡ�
���ڴ�֮ǰ��Ӧ���к��������Ƶĵط�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0171310b56">
�����ǡ�������

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0171320b57">
����֪��һ����
���߰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
��˵�ţ��崨����������ȥ��
�����Ų���һ����̬�����ࡣ

�������ǰ���
�������������������

���ܹ����������ɵķ��˵ı�Ӱ֮����

����Σ�գ��ɡ�
����������Ҫ�������ǡ�

������������ˮ��
��ϥ�ǲ�����

�������ܾ��ã�
����ʲô����Ҫ�ѿڶ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0171330b43">
���߰ɣ��۷ɡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0171340b56">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
��Ȼ�����ڻ������֮ǰ���Ҿͱ������ߴ��ţ�
��ʼ̤�ϲ�֪ͨ��η��ĵ�·��
��
���ǿ��¡�����Ϊ��ӭ���սᡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2500, 0, null);
	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);

	CreateColorEX("��ܞ", 1500, "#000000");
	Fade("��ܞ", 2000, 1000, null, true);

	WaitPlay("@mbgm*", null);
	WaitKey(2000);

	CreateSE("SE01","se��Ȼ_ˮ_�����01_L");
	MusicStart("SE01",2000,1000,0,1000,null,true);
	FadeDelete("��ܞ", 2000, true);


//��ܞ�Q
	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//�����¡����ʤ�
//��������
<voice name="����" class="��������" src="voice/ma01/0171350a01">
����������������

//��������
<voice name="����" class="��������" src="voice/ma01/0171360a01">
����������������

//��������
<voice name="����" class="��������" src="voice/ma01/0171370a01">
���������������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"ma01_018.nss"