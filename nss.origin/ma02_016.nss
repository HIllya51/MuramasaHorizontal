//<continuation number="2440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_016.nss_MAIN
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
	#bg024_Ĺ��_01=true;
	#bg004_�ɤӤ���a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_017.nss";

}

scene ma02_016.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_015.nss"

//��Ĺ��
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg024_Ĺ��_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm33",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
���������������Ľ�֮˾��

  �����ڴ˴��������ʰ��������֮����
���°���ǧ�����巽���½��ڴˡ�

�����ҽ��񡢴�ݽ�����Ը���ڱ������ȣ�
��������ݣ�ʩ������ؼ䡣

����һ���ġ�ȫһ��⡢�������֡�ɱ�����ơ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Դ̫
	StL(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0005]
��Ϻ�����߳��������Ż��������ɻ󲻽�ľ��ġ�
�������ظ��Ŷ�С�������ġ�

{	CreateSE("SE01","se��Ȼ_��ľ_̽��01");
	MusicStart("SE01",0,1000,0,750,null,false);}
���������䱳��ͻȻ���ֳ���Ӱʱ��������Ҳû��ֹͣ��
���Է���֮��Ϊ���ж���Ļ��ﲻ�϶������䱳����վ
֮��Ҳ����������ֹ����

���ظ�����ʮ�Σ����������һ�ٴΰɡ�
�����ڣ����˵�ӽ��ֹͣ�ˣ�վ�����߱�������˻���
�ؿ��˿ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160010b45">
�������ǽ��������
�����������Ӧ���ھ����ڵ�������ӽ���Ķ�
���ɡ�����ûʲôԹ���𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160020b55">
������˵�����ǶԾ��˵����һ��ͬ�ʡ���
�����ң���Ҳ�����ñ�ĵ���ʡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ҹ�ε�������������������˵����Ϻ���
����֮ɫ��
���������������������ҹ�����������ǲ�ͬ�ġ�
�ڴ˿̲���Ҫ�κξ�����־塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160030b55">
���Դ�һ�»ص��������һֱ������ô���ġ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160040b45">
�������ǡ�
��ϸ���룬��Ҳͦ�ʺ����İ���
��ô˵���ǽ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���̺��ſ�ɬ��Ц�ݡ�
������Ҳ¶����Ц��

�����˵Ļ��ǿ������ջ���֮�ŵ�Կ�ס�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����5", 5000, Center, Middle, "cg/bg/bg004_�ɤӤ���a_01.jpg");
	SetTone("�}����5", Sepia);

	Fade("�}����5", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0042]
������ңԶ�Ĺ�ȥ��
����ʱ���ǻ�����������ˣ��������Ϻ���ˡ�

���������������Ƕ���ȷʵ����ְɡ�
�����Ǵ�����֮���������໥����߱��֮����ǿ�ҵ�
�ӶԷ����Ը�������Ϊ�����໥������������λ�����
����Σ�����������ˡ�

��Ȼ�������Ǳ˴�ȴ��δ��Զ���Է���
�����â�����������������������Ĵ��˳�������Ϻ��
֮�����һ�ˣ�������Ϻ�Ĺ�ϵ���õ��˳�����������
֮�������һ�ˡ�

���Ǹ��˱���һ�¡�
�����Ǹ��Ͷ��������µ��������

���������˺�Ϻ���˵����ഺ�ڣ������˹�����������
�������壬���ã����ǿ�ʼϣ�����������ֻΪ�Լ�һ
�����š�

��ͬʱ�����ñ�֪����������뷨�Ĳ���ֻ�Լ�һ����
��һ����Ҳ����ô��ġ�
����ʮ������ĳһ�죬Ϊ���˽���˳������������
���໥Լ�������ľ�ս��

�����ǣ��ڶ����糿��
�������ھ�������ȴ�������ˡ�
������Ŀ��������������ˣ��ǹ��Ҳ����һ��˵
����

������������ԭ����ˣ��ҽ���Ϊǿ����Ƿ������ﰡ��
�����ǲ������Ƕ�ôǿ��ҲӮ����ɽ�ϵĽ�����˰ɣ�
��ô��û�취�ˡ�
���Ҿ���ȥ������������������������Ŷ����

������Ϻ��Ϊ�Լ��е��߳ܣ��ص���ɽ�
����������û�з������Ծ�Ҫ���Ϻ���˾�����ϣ����
�����飬������һ����û�л�Ӧ����
�����ڣ��������뿪���ӵ�ʱ������Ҳ��������Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����5", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0049]
���������µ��˽�����
������ʮ��ǰ�����������������������Ĺ��¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160050b45">
���Ǽһ������𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160060b55">
������û�С�
����˵���뿪����֮���ס�ڿ�������ɩ���ˡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160070b45">
���ţ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160080b55">
��������˵�������ǰ�������Ǽ��Ʋ�����ˣ�
�������������ֵ�ֶ�򸾵������ƾ�ȥ�����
����ȫ��������������˵�ġ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160090b45">
��֮���أ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160100b55">
����������ǰ�ص����ӵġ�
���Ѿ���Ϊ�׹��ˡ���˵����������˵Ҫ����
�����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160110b45">
�������Ǽһ
���ѵ�˵������ֹ᳹���Ǿ�Ϸ����
û�н�����ȥ�����Լ�����������ɽ��
�˴�������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160120b55">
��˭֪���ء�
�������ס���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160130b45">
��������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160140b55">
�����ǣ��Ҿ���
��ԭ����Ҳû�а��ǻ�������Ϸ�԰ɡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160150b45">
����ʲô��˼����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160160b55">
��ΪʲôҪ��ɽ����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160170b45">
��������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160180b55">
����ҪǮ�𣿡�


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160190b45">
��Ǯ���Ӷ����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160200b55">
������֮��Ӧ����������չ��ҵ׬Ǯ�ķ����ɡ�
  �ò��Ź�ƾһ������Ĵ�˵��ȥ���󹤡���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160210b45">
��������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160220b55">
��һ����Ҳ�����˰�����


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160230b45">
�����ڵġ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160240b55">
���Ҿ�������


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160250b45">
����˵��Ҫ��Ϊ��ɽ֮��������
����ô��������ɱ����Ļ��Ҿ��ܵõ�һ���ˡ���


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160260b55">
������������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160270b45">
��������Ŀ������ڵĻ��ͽ���һ��������
����ʲô��û�еĻ����¿�ˮ��Ц����
�������������á�ֻҪɱ���񣬾����ҵ�ʤ������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160280b55">
���������Ȼһֱ�������������
������ǰһ�㶼û���ء������Ǹ��޴������ˡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160290b45">
���ұ��˰�����Ϊ��ǰ��δ�ܳ����Լ����޴���
ǿװ���ݶ�ʧȥ������
�����ڲ�һ���ˡ���

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160300b45">
��������������״̬��
����Ҫ�õ�����ֻҪ�õ������ˡ������Ǻ���
Ҳ�ã����������Ƕ�û����Ҳ�С���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160310b45">
��������Ρ���
���������񣬻����㣬������������ҡ���


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160320b55">
�������޴�������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160330b45">
�����޴�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se��Ȼ_�L_Ұԭ02");
	MusicStart("SE01",0,1000,0,500,null,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������ᴵ�š�
���ͻ��ķ硣��͵���ɢ������֮�䣬���ǣ�
��ȴ�·�һ����ӽ�����������

�������Ѿ��������԰�����ʣ�����ܹ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160340b45">
����ô������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160350b55">
����Ҫ�����𣿡�


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160360b45">
������ĸ���������ҵ���ݿ��޷����е�
����ɢ���˰���
�����ˣ�������һ����ͽ���ˡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160370b55">
��֮ǰ������������ȥɱ��İɣ���


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160380b45">
��������һ�Ұ�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160390b55">
�������Ҿ�����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160400b45">
����ô�ˡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160410b55">
��<RUBY text="����">����</RUBY>��<RUBY text="��������������">�����Ѿ�������</RUBY>����


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160420b45">
����������ʲô����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160430b55">
����������������Ļ�����
�����������Ϊ��ȫ��ͽ���ˡ���

//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160440b55">
����Ҫ���������Ҿ�����㵽��������
��������Ķ��֡���
��������ܱ������ѵĻ�����ϣ���ܼ���һ��
�����Ļںޡ���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160450b45">
�������憪�¡�
������Ϊ���˵ʲô����


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160460b45">
�������Ǵ�����������Դ̫��
��ԭ����ˣ����Ǵ������Ǹ��ɶ�Ĺ���
���ڵ��ڼ��˽������������෴����Ҫ��
�����Ǽһ�֮�����������㡣��


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160470b55">
��������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160480b45">
�����ҵ��Űɡ�
���Ҷ�Ҫȡ������������ͷ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á�
//��һ��
	DeleteStA(300,true);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se��Ȼ_��ľ_̽��01");
	MusicStart("SE01",0,1000,0,1250,null,false);

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160490a02">
�����������ţ���


{	FwC("cg/fw/fw��Դ̫_�@��.png");}
//����Ȼ
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160500b55">
������������


{	FwC("cg/fw/fw�L��_�@��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160510b45">
������ʲ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ڿ����Ǹ����ֵ���Ӱʱ��
�����������Ȼ���ס�ˡ�

�����Ǹ���Ů��
��������ѧ���Ʒ�������Щ����ʱ�ˡ�
����ȴ�����������ơ�

����Ů�ò����Ŀ�⻷���Ŷ��ˡ�
������������δ�������ǡ�

�����ǣ��Ƕ���ȴ��ͬ��
�����ǵĴ�ͬʱ�����������أ���������ͬ�Ŀ��͡�

������һ�¡�

���Լ����Լ�֮��һֱ�����ŵ����ˣ���Ůȴ�ƺ���
���ꡣ��Ʋ���죬�������ɵ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm17",0,1000,true);
	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160520a02">
������������˭������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160530b55">
��������������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160540b45">
��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160550a02">
�����������Ҳ�֪��������ô���¡�
���������Ҽ��˵ķ�Ĺ������վ����ܰ��£�
�Ͽ��߿�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��һ˵�꣬��Ů������ؽ������ƿ���ռ����
Ĺǰ��λ�á�
����������ͻȻ��ͣ����ĳ����

�����ʵİ׾ա�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160560a02">
������������Ƿŵ��𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160570b55">
�������ǰ�������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160580a02">
��ʲô������ԭ�������������ݵ���
������������Ļ���ֱ˵���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160590a02">
��лл��
����һֱ������ÿ�굽����˭���������ء���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160600b45">
��������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160610b55">
������ʧ���ˣ����ʣ�
��С��������һ�µġ�������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160620a02">
��һ�£�
�����������������ŵ����ְ�����


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160630a02">
���⻹���Ǹ�ͦ���������ء�
�������Ǹ����³嶯��������š���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160640b45">
��������


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160650a02">
������һ�����ڱ�Ū��֮ǰ�Ҿ���˵�������
�����ն������֡�
�����������ľ�����Ĺ�³��ߵļһ��


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160660b55">
����ô�������һ�����������𡣡�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160670a02">
������������ŵġ�������ô˵�أ�
���Ҳ�������Ů��Ҳ���Ǵ��ý��á���������
�����������ſ�������ֶ�ӵĺ��ӡ����ҵĽ�
�ȿ��Ļ����������ĸ����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160680b45">
�������ǡ���ֶ��Ů�𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160690b55">
��Ҳ����ֶŮ������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160700a02">
���Ǿ��ǰɡ�
������һ�����ŵ����һ������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160710b45">
��������


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160720b55">
����������
������������������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160730a02">
�������أ�
��������һ�ζ�û�и���˵���������ص��£�
��������ȫ���˽�������ӡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160740a02">
����Ȼ�����ȥ������ĺ��У����ܾ���
���С���
����Ȼ��Ϊ�����ߣ�����֪Ϊ����һ������ͷ
�ͻ�󱳷����ء���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160750b55">
������������
��˵������ǰ����һ��Ҳ˵�����ƵĻ�����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160760a02">
�����𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160770b55">
��һ�����ǹ�ͷ����������������ǰ��������
ʲô�ġ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160780a02">
���������Ǽ����Ŵ�������ֵ�ѪҺ�ء���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160790b55">
���Ǻǡ�����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160800a02">
��үү���ǡ�����ô�п��԰ɣ���������λ
Ϻ���ˡ���������ŵ����˵Ļ�Ҳ�������ˡ�
�����������ŵ������𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160810b55">
���������š�
���ǰ������Ǵ�С�浽��ġ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160820a02">
����������ܺ����ּһ�ú��ദ�ء�
����Ȼû����˵�����������ſ϶���ǰ
�������˺����м�֮�����Ը�ɡ���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160830b55">
����������
������Ҳûʲô�ʸ����������ء�
�ǰɣ��Ҿ�����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160840b45">
���������������ǰ�����


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160850a02">
��������ô�������ǹ����������𣿡�


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160860b55">
��û��Ŷ��
�����������ˣ�һ�����˺ܶ��¡�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160870b55">
���Ա��������˵㰡����Ǹ��
��������Դ̫���Ǽһ��ǡ����Ҿ���
������һ�����ڶ�ֻ�ǳ���ͷ���ѡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160880a02">
���������ţ�
�����ǣ���λ�����Ҿ�үү������


{	FwC("cg/fw/fwһ��_����.png");}
//������
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160890a02">
���Ǹ���硭��
���������޵ľ�װ�ɣ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160900b45">
��������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160910b55">
�����ǣ����ǡ�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160920b55">
���Ҿ����ʵ��ɻ�һ�°���
���һḽ�����˵�ǵģ�

{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160930b45">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á��Ĥ���
	OnSE("se����_����_����01",1000);
	DeleteStR(300,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0138]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160940a02">
����!?��ʲ������


{	FwC("cg/fw/fw��Դ̫_�Ф�.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0160950b55">
���Ҿ�����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160960b45">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����˵���׽ס����Ů����򦡣
�����������ֱ��ؽ���������ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0160970a02">
���㡭����ʲô��������쵰!!��


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160980b45">
����������
����������������������
��ȷʵһģһ��������


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0160990b45">
��������ص�����ǰ����һ�£���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161000a02">
������!?��


{	FwC("cg/fw/fw��Դ̫_�Ф�.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161010b55">
���Ҿ���������֣���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161020b45">
��С���������һ����
�����ǽ�һ���ɡ���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161030b45">
��һ����
������һ�����ɡ���


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161040a02">
����������쵰�մ�����
�����Ӷ������������˾͸Ͽ��ȥ
����Ժ!!��


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161050b45">
���Ǻǡ�
��������Ҳ��ȫһ�������޷��򵥵�����
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161060a02">
��˭����������Ұ���ġ�����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161070b45">
�����Ǽ�ʹ���ң�Ҳ����ǰһ�Ĳ������Ҳ�ͬ��
��һ����������ߵĻ����һ������������ʵ�
����Ŷ���������ʱ���¿���ֻ��һС������
�����ܵõ��������


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161080a02">
���Ų�Ҫ�����ſ��ң���


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161090b45">
���Ҳ���������˵˵��
�����������޴�ξ�����Ҿ�����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161100b45">
�����������룬��Ļ�����ӵĽ�У��
��������Ϊ�ҵ��ˣ���û�б�Ҫ���Ǳߵ�
�������ǰ�Ҫ���������ɫ͵͵�����ع���
�ˡ�����


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161110a02">
��������


{	FwC("cg/fw/fw�L��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161120b45">
������Ҫʲô�Ҷ�����㡣���������Ļ�
Ҳ���㡣
��ֻ�ǣ���Ҫ��Ϊ�ҵ��ˡ�����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161130a02">
��ȥ���ɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ƴ���ꡣ�ؤ�����
//���ܤ����L��

	CreateTextureSP("�}�ţ�100", 5000, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	CreateTextureSP("�}�ţ�90", 4990, Center, Middle, "cg/ef/ef042_���ô��.jpg");

	Zoom("�}�ţ�90", 0, 2000, 2000, null, true);
	SetBlur("�}�ţ�90", true, 3, 700, 100, false);

	OnSE("se���L_����_���02",1000);
	SetBlur("�}�ţ�100", true, 2, 700, 150, false);
	Zoom("�}�ţ�100", 300, 3000, 3000, Dxl2, false);
	Wait(100);
	Move("�}�ţ�100", 400, -1024, 576, Axl2, false);
	Wait(450);
	OnSE("se���L_����_Ұ̫�����02",1000);
	FadeDelete("�}�ţ�100", 200, false);
	Zoom("�}�ţ�90", 200, 1000, 1000, Dxl3, true);

	OnSE("se����_����_���S01",1000);
	CreateColorSP("�}�ե�", 5000, "#FFFFFF");
	Delete("�}�ţ�*");

	DrawDelete("�}�ե�", 200, 1000, "slide_05_00_1", true);

	StR(1000, @-30, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	Move("@StR*", 300, @30, @0, Dxl2, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161140b45">
�������أ�
����װ��׼�����°ͳ��ƣ���ʵĿ��ȴ����
ϥ�Ƕ���ɼ��𣡡�


{	FwC("cg/fw/fw�L��_�@��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161150b45">
���Ҿ���ԭ���㡣
���ղ���һ����ֹ��غ���������������
���³ܹǷ�������أ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0162]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161160a02">
���ұ�������ɱ����Ŷ��
����û��������������մ�����


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161170b45">
�������ǿ�ϧ����
���ղ����С����Ǵ�һ������ѧ������
�Ҽǵ������ʱ��ͳ���һ���ˡ���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161180a02">
�������С�
������ô��ʧ�����أ����š���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161190b45">
��һ����
���㲻�����Ϊ�ҵ����𣿡�


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161200a02">
����Ȼ�����׳գ�
�������������������������ľ���������
�˰�������ղŻ�˵ʲô������Ϊ���<RUBY text="��">��</RUBY>��
�����������������˰�!!��


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161210b45">
������
�������Ǿ�û�а취�ˡ���


{	FwC("cg/fw/fw��Դ̫_�@��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161220b55">
����������


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161230b45">
��<RUBY text="������������������������������">������ʲô�����Ҷ�һ��Ҫ�õ���</RUBY>��
�����ڷ��ţ�����˷����ģ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161240a02">
��������


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161250b45">
��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���L�ࡢ˲Ϣ�i��
//���ؓ�

	Wait(1);
	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}��", 100, "#000000");
	Wait(1);
	Delete("�ϱ���");

	OnSE("se���L_����_���01",1000);
	SL_leftup(@200, @200,2000);
	SL_leftupfade2(10);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161260a02">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ󡣺ᤫ��ͻ���w�Ф���Դ̫
//�������塣

	PrintGO("�ϱ���", 5000);

	CreateTextureSP("�}�ţ�100", 2000, Center, Middle, "cg/ef/ef004_����Ѫ�~.jpg");

	OnBG(100,"bg024_Ĺ��_01.jpg");
	FadeBG(0,true);

	StR(1000, @0, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	StL(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStA(0,true);

	OnSE("se����_Ѫ_�����01",1000);
	DrawDelete("�ϱ���", 1000, 1000, "slide_02_00_1", true);

	WaitPlay("OnSE*", null);
	Wait(500);

	FadeDelete("�}�ţ�*", 1000, true);
	Wait(300);

	OnSE("se����_����_�᤺����01",1000);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw��Դ̫_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161270b55">
���ء�������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161280a02">
��үү����


{	FwC("cg/fw/fw��Դ̫_�Ф�.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161290b55">
���Ҿ������㷢�����𣡡�


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161300b45">
�������ǣ��Ǻǡ�
����֪���ģ���Դ̫����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161310b45">
��������һ�µ�Ĺǰ����
����û������Ѫ���������ղ��Ǹ���Ц����


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161320b55">
��������


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161330b45">
�����ǣ���˵���Ļ��ɲ�����ЦŶ��
��һ������Ҫ�õ��㡣��


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161340b45">
��Ϊ���Ҳ�ϧɱ���㡣��


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161350a02">
���쵰������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161360b45">
���������޷�������˾��ϡ�
�����Լ��Ľ��������л��롣��


//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161370b45">
�����ڲ�ͬ�ˡ�
��ֻ�����в��ʺϱ����������ø���ȴ����
�ûڣ��Ҹ�Ը���޴����״Ӷ�΢Ц����󡣡�


{	FwC("cg/fw/fw��Դ̫_�Ф�.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161380b55">
���Ҿ�����


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161390b45">
������ɱ��ɽ��֮��
���һ���������ģ�һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����֪���˵����������š�
�����Ǵ�����ķ�λ�����ġ��Ǻ����ڶ���ɧ��������
�������ʰɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161400b45">
�������Ǻǡ�
����������������ζ���������˫��
��������ڳ����ˡ���


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161410b55">
��������


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0161420b45">
��߱�񡭡���ȡ���
�������������������˭������������ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á��ߤ���������L��ȥ��
	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	CreateSE("SE01","se����_����_�ߤ�01_L");
	MusicStart("SE01",0,1000,0,1250,null,true);
	DeleteStR(300,true);
	SetVolume("SE*", 1500, 0, null);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161430a02">
�����������С�
��ʲô��Ǹ��쵰������


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161440b55">
�����������Ҿ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg024_Ĺ��_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0212]
����Դ̫������˲����ء�
���Ѻ���׼�����վƵ����˿��ϣ�����
����������������������ˡ�

���������յ�Ϥ�ĵ����ͻ�Ȭ���İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStA(0,true);

	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161450a02">
�������ͺ��ˡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161460b55">
����Ǹ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161470a02">
����û�����ɵ�Ǹ��
���������ұ�����˰�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161480b55">
���Ǽһ������ʲô�����ж���
ֻҪԤ��������뵽��
��������������ô�ٶ۵Ļ���Ҳ�Ͳ�����С
�������⵽Σ���ˡ�����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161490a02">
���������Ƶ������ҡ�
������û�й�ϵ������ǿ������������ˣ�
����Ƕ�������ˡ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161500a02">
��������������ͦ˧�ء�
����ĳ��ų����˵�Ļ�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161510b55">
��ų�򣿡�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161520a02">
�����˺��ˣ��������ˡ�ֻ��˵����ʶһ��
��Σ����ͷ��ȫ�ɲ����ó���û�ֻ쵰����
���ѡ��Ҷ���Ը������������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161530b55">
����������
���Ǽһ������˵�Ҿ���������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161540a02">
������������


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161550b55">
�����������Ҳ���ü������ܡ���
���ô����￪ʼ˵�ء�����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161560a02">
����ϸ�۲��֪���ˡ�
���Ǹ��쵰�����������Ű�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161570b55">
��������Ȼ����֪��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161580a02">
����Ȼ�ܾ����е�С���������������
˵�ľ�������°ɡ�
�����ǣ��治���װ������������ŵ���
������ˡ���


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161590b55">
��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161600a02">
����Ҳ���𣿡�


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161610b55">
���������š�
�����������Ǹ�����������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161620a02">
������һ����͵���үү�˺���ʲô����
�������С�һ�������������ô�õ�Ů��
�𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161630b55">
����������������˵�ǰ���
���Ǹ�ʱ������ֻ�ݵ�����������ֻҪ��һ�£�
���ʲô������Ҫ�ˡ�����


{	FwC("cg/fw/fwһ��_Ц�b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161640a02">
�������١����Ҷ����ú����ˡ�
���ǣ�Ȼ����ô���ˣ��������ǹ�ϵ����
�޳��ɡ����š��㣬�����Ǹ��쵰����


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161650b55">
������������������Զ�ˡ�
��Ȼ��һ���뿪�˴��ӡ�����֮�����
С����Ӧ�ñȽ�����ɡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161660a02">
�������أ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161670b55">
���Ҿ�Ҳ�뿪�˴��ӡ�
������������ɽ����������Ȣ��
�ٲֵ�Ϻ�Ĵ�Ĺ��ﵱ���š�֮��ܿ���
�˶��ӣ�������Ů����


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161680b55">
��������֪�����Ѿ�������ʮ�ꡣ
����Ȼ���ӷ���Ϻ����һ������
��ȥ����������Ůȴ�ܾ���Ŷ����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161690a02">
������
�����Ѿ������������𣿡�


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161700b55">
�����¡�������˵�ء�
����û��һ������һ�¡���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161710a02">
��������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161720b55">
����Ȼû�����ǡ���
������֪�Ӻ�ʱ��ʼ������һ�¾Ͳ����ǿ�ɬ
�Ļ����ˡ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161730a02">
����˦�úܲҰɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��Դ̫_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161740b55">
���Ǻǣ���ȷʵ����ֱ��������汻�����
���Ǳ����еı�����������������һ���ء���
  Ҫ˵�ҵĻ�ȷʵû�б�������ҵ�ʧ���ˡ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161750a02">
���١���Ȼ���Ŵ���ǰ���������İ�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161760b55">
�����ǡ�������Ҷ���ֻ�им���
����һ�µĸ������Ѽ�������ɵ�µ������˻�
�������̻�����<RUBY text="��������������">ע����ߵ��Ҹ�</RUBY>����

//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161770b55">
������ֻ����һ���µ����޷����κ����Ҹ���
������ӵ��һ����ͨ�ļ�ͥ������һ�µĸ�
��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161780a02">
���ҵ������ⲻ��ʲô���˵��¡�
���Ǹ����ž�����������ֻ�ǵ�����Ϊ��
������ѵ�㣬��ʵʲôҲû���ǹ��ɣ���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161790b55">
������������
�������������ء�����


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161800a02">
�������С�
���ѵú����ŵľ���ʶ�����ˡ�����Ϊ��һ��
˵˵���Ļ���������������������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161810b55">
��С���������һ���𣿡�


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161820a02">
���϶�����İɣ�
���Ǹ����Ű��������Լ��������ֺ��У�ȴ��
��˵�����˵���Ǹ��������ˡ����ҡ�����


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161830a02">
������ʲô��������һ��Թ����Թ������
��ÿ�ն���ͬ�����������Ҫ����ʪ������
���ȣ��Ҳ���ڶ�����ȴ��Թ̫��������
�׳գ�˵Ҫ�ɲ��Ŷԡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161840b55">
��������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161850a02">
����������ľ����Ժ�������ľ�Զ�����������
�����������������ȴ���ұ�˵�Ҿ���Щ����
�����ŵ��£�������һ���������


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161860b55">
�������Ǻǡ�����


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161870a02">
���Ҳ�����˵Ц��������!!
�����Ѿ�����������ȥ�ˣ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161880b55">
��������Ǹ��Ǹ��
����ֻ�Ǿ��������ͦ��һ�·��ġ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161890a02">
���������ø���������ܽ��͵İ���
��������ǹ�����ĥ�ҵĻ���Ҳ��
����������������ֻ�ǵ���һʱ��
�������˵���ġ���


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161900a02">
�����Լ�ʹ�һ��죬��Ҳ�����ס�ģ������׸�
��ô��������Ҳֻ�ܻ�Ź�˰ɣ���Ȼ��һ��
Ҳû��Ӯ������ͷ�ܣ���������ô������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161910a02">
��Ȼ����Ϊ������ͻȻȥ���ģ����������
Ҳû�������������ǵģ��ɶ񡭡���������
��ú��۸��Դ���������Ű�������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161920b55">
����������������������
������һ�¹���һ�����ֵ�
���갡������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161930a02">
��<RUBY text="����������">���Ǻܿ���</RUBY>��
����������˵̫�����ˡ���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161940b55">
���Ǻǡ�
��û�뵽����С����������һ�µĻ�������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161950a02">
����û�С�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161960b55">
������
�����������������ء�����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161970a02">
����������
����ΪʲôҪ������һ�����
��֪���𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0161980b55">
�������š�
����ֵı��ҡ�������˵С������������
���������Ѱ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0161990a02">
�������֮�����������Ҹ��ף���ּҵ�
�ˡ�
���������׵������������û��һ������
Ϊ����������Ҷ��ڱ�Թ����


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162000a02">
��������һ���һ��������Ϊ�˳����׵�
�����¿�ˮ�����μ������һ����
�����ǣ���ȴʲô������˵����Ϊ�Һ͸���
Լ�����ˡ����ܽ��͡���


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162010b55">
��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162020a02">
�������Ǹ�ʱ�򡭡��������ˡ�
�����Ž��ǆ������º�����һȺ��ȫ���ϳ�
���⣬Ȼ�����˵����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162030a02">
����˵����ĸ���û�д�
����Ȼ�Ǹ������۵ı�����������û��
������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162040b55">
����������
��һ������ô˵�İ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162050a02">
���š�
��Ȼ���������֮�󡭡���֪��ʲôʱ����
�Ҿͺ�����һ�������ˡ�
��ֻ��������ֻ���������ѡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162060a02">
������������ȴ�����Ϳ�أ�˵�Ļ�������ȥ
û��׼�ġ���
���������Ҿ��á��������<RUBY text="��������������">˵�Ļ����ǶԵ�</RUBY>������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162070b55">
���š���
���š���������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162080a02">
�������С���Ӧ��˵���Ż����ģ���ô
��˵���������ˡ�
��үү�������Ǹ���ֵ����ڡ���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162090b55">
����������
����Ϊ������Ľ����Ů�ӵ������
���ٻ���Щƫ̻�����ԭ���Ұɡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162100a02">
���԰�ʲôѽ��
������������˵����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162110b55">
���ţ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162120a02">
���Ҹ����������ʱ������𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162130b55">
�������ǰ���
�����񵽻���վ��һ�����Էֱ��ء���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162140a02">
�����ԣ��Ǹ������޵Ļ쵰˵��Ҫ�ң�
��˵�����λ��ɡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162150b55">
��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162160a02">
�����㲻ͬ������Ұ�����ܾ����ڱ�����
˦�����°ɣ�
����ʹ������ʮ�ꡣ��


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162170b55">
������˵��������������
���Ǽһ���Щʱ����Ϊ�ط��ٻص���
������ӡ��Ҷ�û�����̷�������Ȼ
��Ϊ�����յľ�ս�������ġ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162180a02">
����һ�����ִ�Բ��򡣡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162190b55">
����<RUBY text="һ��һ��">����</RUBY>����
������ǰ�͡�����Ҳ�գ���Ҳ�ա�����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162200a02">
���Ǽһ���Ҫ��ʲô�أ����µ���񡭡���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162210b55">
�����������ĵ��¡�
�����ǣ��Ǽһ����ͼ�ܴ��ˡ�����ǣȣ���
�����Ѳ��ٶ������ˡ�������Ĵ��Ӵܣ���
��ͻᱻ�����ġ���


//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162220b55">
�����ԣ�С���
��������ץ���鰸ǰ���Ǿ�����Ҫ��������
�ȽϺá����������������̻ص����ֱȽϰ�
ȫ��������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162230a02">
������
��Ϊ�����ֻ���Ϊʲô�ҷǵøı��ҵ�
Ԥ���ƻ����ɰ�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162240b55">
�������Ҿ�֪�������ô˵�ء�
��С�����Ԥ���ƻ��ǣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162250a02">
����Ҫ�������������ҹ�����ŵļ���
�������ĵڶ��졣ÿ�궼�������ġ�
���������������Ǽ��գ������ȥ����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162260b55">
�����𡭡���������ȥ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162270a02">
���ǰ���
����������Ұ���������ǵ��У������һص���
����Ҳ��������İɡ�˵��������׷��������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162280b55">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162290a02">
���٣������Ļ��ҲŲ����������֡��Ҿ�����
���浱����ʱ��ɡ�
��������������Ҳ̫�鷳�ˡ����ԣ���ȥ����
�ɡ�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162300b55">
���������أ�С���
�����Ǽһ���������ҡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162310a02">
��үү����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162320b55">
���Һ��Ǽһ�������Ҿ��ж�Թ��
���ұ������ָ��������˶ϰ�����ʹ��С���
��Ҳ�����ò�����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162330a02">
���������˼һ��ǲ�Ҫ��ǿ�ĺá���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162340b55">
��ʲô�����Ǽһ�Ҳ����ͷ������
����ȫ���õ���Ŷ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162350a02">
�������С�
�������ֱ�������ʲô��˵��������
��������һ��������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162360b55">
����������
��С������ǵ��£��벻Ҫ���⡣��

//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162370b55">
������ֻ�й�ȥ�ˡ������ǽ����Ź�ȥ���ţ�
��񻹽����޿��κε���������˵�������ǰ���
���ǣ��Ҿ�Ҳ�ǡ�С�����㻹���ᡣ���
��һ�������ˣ�����δ���ɡ���

//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162380b55">
�����ǡ���
����С��������̫���ˡ�����̫���ˡ�
����Ҳ��һ�µ�ָ���ɡ������������Ҹ�л��
�������ֶ���һ��������


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162390b55">
���ǺǺǡ�
��������ʹ���Ǹ�������������Ҳ�����
������ǰ̧����ͷ������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162400a02">
����Դ̫үү������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0162410b55">
�������ټ���ռ�������˵�ʱ��Ҳ���á��Ҳ�
����Ҫ���ˡ�
������û���ٻ�Ļ����ˡ���Ҫ���ذ���С���
�ͼ���һ��һ������Ҳ��������С����ġ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162420a02">
��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Դ̫��ȥ��
	CreateSE("SE01","se����_����_�i��01_L");
	MusicStart("SE01",0,1000,0,700,null,true);

	DeleteStL(300,true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162430a02">
������������

{	SetVolume("SE*", 2000, 0, null);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0162440a02">
�������С���˵�Ի�����
��������Ϊ�����ҲŲ��ó�Ӧ��
��ͷ��̫̫��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma02_017.nss"