//<continuation number="800">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_008.nss_MAIN
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
	#bg057_���ӘS������_01=true;
	#bg065_���ӘS���ڹ�_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_��������=true;

	$PreGameName = $GameName;

	$GameName = "mb02_009.nss";

}

scene mb02_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_007.nss"

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg057_���ӘS������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������������ٷ�����Щ��ͨ�����¹۲죬���ֳ���
�����շǳ����ء�

��������ʿ���Ǹ���ȫ���������Ѫ����������������
�߶ȿ��ܵ��񾭡�
���Ĺ���Ů������ͷ��������ʱ��һ�����Ǿ���΢����
�����������𴦡�

���Ѵ��커���ⰵɱһ����Ϊ���³����˼��仹Ϊʱ
���硪���ɣ������ԣ������ʮ�а˾š�����һ������
�����ǵ����Ľ��ñ��䡣
�������������ǵĽ�����Ҳ�������ҡ�

���ڱ�ƽʱ������ɭ�ϵ�״���£�����ɸ��Һ�һ����
����͸�Ϊ���ѡ�
�����ܿ�ʼ��û�����ִ��㣬������Ҫ�Ϸ�������⡣
�޴�֪��ʲôʱ��������¶����š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ͥ
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg065_���ӘS���ڹ�_01.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb02/0080010a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
//	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����߽������ǹ�����ͥʱ��һĻ����Ĺ⾰ӳ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStC(300,true);
	Wait(200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0035]
����λŮ����һ�����ꡣ
����������俴������Լʮһ�����ꡣ

����Ů���ǵ�װ���ɿ�����֮��Ӧ�ĵ�λ������������
�������̷��Ǹ����ꡣ
�����ǿ���������ˣ��ͬʱ�ն��س���������

�������������㹻����ע����ˣ�����������ǣ�
��Χ���������Χ������ʵʵ��
��һ���ж�ȫ�ܾ��䡪����Ȼ���������ܴ���
����״̬���Է���Ϯ�;ѻ���

������Ѱ���⾰��
������������Щ��ʵ�����Ʋ⣬��Ȼ�ͻ�����
�������⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb02/0080020a00">
�����������������ɰ��ϡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������������ϵĵ��
������ʱ���衣

�����괺����ڣ��Դ���λ������ͷ��ʼ����
��͢��ᣬ�������������󽫡��������ࡢ
Ȩ��������ְ��ͬʱӵ��λ�ס�
���������⣬��͵�λ��ߵ����ꡣ

�����ս�Ϯ����֮λ������Ļ�����㡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);
	CreateSE("SE01","se����_����_��եƥ���01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	Wait(800);
	SetVolume("SE*", 2000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0055]
�����������������������˿����ڸ߹�Ů���ǵķ���
�У���ǿ�����ߵı����С�������������Ϸ��
����Լ����ͷ��ô������ڰ���䡣

��������������
�������޷��뷢Դ��ŷ����ȣ��������ڴ��Ҳ�ս�
�ܵ����ǵĻ�ӭ�����ص���ԭ���Ϲ涨��ֹ���֣�����
������

��ԭ������֧��ʮһ����ɵĶ���֮������÷ֵ�����
��������Ȼ������ǰչ�ֵĲ��������ֳ��档
�����ɰ����ڶ���һ�������档

������Ǳ���Ϊ����Ļ�����ϰ�ɡ�
��������ǳ�������ʹ���䵽���桭������
������Ҳ����˵�������ɰ��ϵߵúܺá�

���ڴ����ʢ������Ķ�����������������߸�������
�¶�����ϡ���������ü��ζ��߸�Լʮ�������ʧȥƽ
������ڵء�
�����ǲ�֪����������š�

�������˶����ƺ�����������˭ǡ����ָ������
��غܿ��������������
��������ָ����Щ�����������������ڵ��϶�
ֻ��˵���������ð���Ů���ǡ�

�������������������л�����˵��
��Ҳ�м��о���ִ����������ء�������Լ����
һ˿�䵭����Զ��һ˿���鷳�ĸо���

����Ȼ���������Ǳ�������ס������������ԼԼ������
�о�����
���ԹԴ��������ﾯ������Ҳ������Щ����
���Ǵ��������ô˵�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb02/0080030a00">
������һ����Ȥ��û�аɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������ƺ���û���޶۵�������Ů���Ǻ����û�ױ��
������ͣ�Ҳû�гٶ۵���������������䵭��̬�ȡ�
�������ı�����Կ�������ʲô�����ס�

��������û��ͣ�£���������Ϊ����΢���������Ϸʱ
���������˵Ҳ��ʮ�����ģ�������Űɡ�
����Ϊ��ƽʱ�������������ڴ��������������ں���
��ǽ���������ڰɡ�

����˵���ϵ�λ����ݺ͵�ǰ���ƣ�����һ�����ڳɳ�
�ڵ��к�����˵�����ǲп����Ϊ��
�����׵ĵ����˱��齩Ӳ��һ�������Ź¶�����Ϸ����
��Ӱ���˲����࿴��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mb02/0080040a00">
����ȫ��֪���Ҹ��ںδ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ȻҲ����˵ƽ����յĺ��ӱ����Ҹ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ݩ`��
	CreateSE("SE01","se����_����_��եƥ���02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����_ͨ��a.png");

	#voice_on_��������=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080050b49">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������ƺ���Ϊ��ǿȥ�߷���ƫ������ʧ���ˡ�
�����ϵ�Ь�ӽ������䣬���ϸ߿ա�

��������߷�����

���۵�һ������֪��˭ʧЦ������
���ƺ���Ů���е�ĳ�ˡ���ȻЦ����δ��ɢ������
����Χ����Ҳû������ȥ�𱸵ļ���

���϶��˺������ˡ�
������ݺݵ�˦�־ܾ��������ȡЬ�ӵ�Ů���ǣ�
�����Ǻ����<RUBY text="��������">һ��һ��</RUBY>�س������������

���Ҵӽű�ʰ���˶�Ь����ݾ���
������Ь�Ӹɾ����¡��������˾��ý���������
�����������������˰�һ����Ⱦ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080060b49">
��лл����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����������ţ�С��˵����
�����������Ҹ������ϰɡ�ƽ����һ�������˾����ź�
���������ҵĶ���ȴ�����ر������

���Ҹе�ͷ����һ��<RUBY text="����">����</RUBY>��
��
�����ÿ�Ҳ֪����һ��������ƶ������ҵ�ͷ���ϡ�
�����Լ������ھ��ߡ��ߺ��׵Ļ���ǹ��׼����״��

��ֻҪ����һ����Σ�յĶ�������ȫ�����¾ͻ����̱�
�������Ѱɡ�
��������������ѵ���״���������¡�ֻ�����һ����顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mb02/0080070a00">
��ʧ�񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���ɲ����ڴ�ʱ�˿̱�ɨ���һ����ʳ���һ����ذ�
Ь�����ڰ��Ͻ��ϣ�ϵ��Ь����
����ͻȻ�뵽���������������ôϵЬ������֪��
�ɡ����������˽����İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080080b49">
���š�������Щ������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080090a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���Ҳ����ǰ��ռ�Ϊ��ͨ���ɽ��̶�ϵ�İ��ˡ�

������ԥ������
����������ϵ�ú����±����´󼪡���
ֻ�������Ļ����˿�����ͷ���Ͽ��񾭽���
������Ҳ�����ڲ�С�Ŀ�����СС�İ����

����Ȼ������ô��ġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mb02/0080100a00">
�����ǣ����¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��������ԥԥ�ؿ��˿ڡ�
��һ˲�䣬�����Ͽա����������ϵ����������ǿ��
�䱸��

���������ҵ������������ְ��Ա�����¼�������
�������ķ�װ��һĿ��Ȼ��
�����������������Ӧ�����������ɰ��Ͻ��жԻ���
�ǲ����ܱ�����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/mb02/0080110a00">
��Ь��������ɣ���������Ь���߲�����
�����ߣ������������˵�Σ�ա���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
������һ�����ȵ�գ��գ�ۡ�
����δ�й���С������ײ�ľ��飬Ҳ�ѹ������
��Ӧ��

��������û�б��κ��˶�ײ���ɡ�
������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwŮ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mb02/0080120e123">
������֮ͽ�������֪����λ������˭������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080130b49">
���޷�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��Ů�ټ������𣬵�������ֹ������
����������Ȥ�ؿ����ң�����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080140b49">
������ʱ�������������ɰ��ϡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080150a00">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080160b49">
���������Ȼ֪����
���˷������˳���������


//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080170b49">
������Ϊ�Σ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080180a00">
��С���ոġ����¡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080190b49">
���ǣ��ġ���
���������Կɷ���ʵ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080200a00">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080210b49">
��Ь������ϵ�ù����𡭡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080220a00">
����������ע�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080230b49">
���콲����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080240a00">
����������ʱ�ż�����ֱ�ġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080250b49">
���š���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080260a00">
�������޷��ܺõ�<RUBY text="����">����</RUBY>��
����ˣ������Ǻܿ����ء���


{	NwC("cg/fw/nwŮ��.png");}
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mb02/0080270e123">
���⡭����С�ӣ�
������һ����ְ��Ա��Ȼ�������µ�ë����
Ҳ�������Լ���ʲô��ݣ���


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080280b49">
��ס�ڣ�������׼�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����������һ�ȣ����ٶ�Ϯ���ĳ�����˻�ȥ��
���������ճ�ʶ��˵��Ů�ٻᷢŭҲ��������Ȼ�ġ�
�뵽�����Ҳ��ɵ���ЩǸ�Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080290b49">
���ģ�����˵����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080300a00">
�������ǡ�
������ʱ�뽫������չ�����ű���ƽ��
�ýű����򡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080310b49">
����������չ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���������ɲ��⡣
��һ����Ȼ�����˼��ȴ<RUBY text="������">�벻ͨ</RUBY>��ģ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/mb02/0080320a00">
�����£��������һ�á���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080330b49">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���ҽӹ���������
����������ͨ�ı�׼��Ʒ��ԭ����������ʲô�߼�����
�ҾͲ������ˣ��������Ҷ����ˡ�

�������������ܲ��ܳ�ַ��ӹ�ȥ�ı����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ݩ`��ݩ`��
	CreateSE("SE01","se����_����_��եƥ���01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(700);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080340b49">
���ۡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�������ҵ��ڴ������嶼���ǵá�

�����ýű��������¡�
������ϥ�ǽ�ס�����ֱߵ��򣬵������¡�
����������ص��ű��ϣ��������κ󣬵�����
������ǿ��

��ͷ��һ�Ρ�
�������ֻص��ű�ʱ��������������Ȼ������
���������ת�������Ƚ�ס��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080350b49">
����������������
���Ͳ���һ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�������˷�������
������Ҳ������������������

�����¡��������������ʵ��ò�ɡ�
���ڹ��䡢��������´���λ�󽫵Ȳ����ص�����
����֮�¡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080360b49">
��������Ҳ��ѧ����!?��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080370a00">
����Ȼ��
���������Ͼ������ա���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���ҵĻش𲢷ǹ�ά����
��ѧ�õ�������������ź��ڼ���ϰ��
�������˶��񾭲���
��ؽ�����ܿ졣

���Ұ��򻹸�����������Ҫ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/mb02/0080380a00">
��������չ����
��ϥ��Ҳ������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080390b49">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ݩ`��
	CreateSE("SE01","se����_����_��եƥ���02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//��һ�ȥե��`�ɤ��Ƒ���
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

	WaitPlay("SE*", null);

	ClearWaitAll(2000, 1000);


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg065_���ӘS���ڹ�_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080400b49">
�����������ˣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080410a00">
����ϲ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����ڵߵ��˶�ʮ�£����껶��������
������Ԥ���Ѹ�ٽ������������Ե��޲����ڡ�

��ʵ���ϣ����ϵ����������ȷ�������⡣
���ڲ�����ʮ�����ھͿɳ�������ʮ�Σ������ڸ���ͻ��
��ʮ�δ�أ�����ߵ�Ŀ�������

��˵�������൱�в��ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080420b49">
������������ȫ��һ����
���������Ϳ������𡣡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080430b49">
��лл�㣬�ģ�
������̵úá���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080440a00">
�������������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�������ҵĵ��ӳ����ڵ����ͬʱ��
������������л�ҡ�
��������Щ���ȣ���л�Ļ�˵�ó���Щ��

�����������˸߹�����꣬ȴ����ֱ�ضԵ�λ��΢��
��ʾ��л��

���������ɰ��Ͼ߱���������������Ʒ�ʡ�
����������������Ļ�����ֻ���֮�У�ӵ��������Ʒ
�ʼ�ֱ�����漣һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/mb02/0080450a00">
�������λ�����մ˳ɳ���ȥ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����͹��Ľ�������Ҳû��ô���ۡ�
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080460b49">
������ô����ô�˽��أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080470a00">
����ΪС����ѧʱ���������򲿡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��������ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080480b49">
�����ĸ�λ���أ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080490a00">
���к�������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080500b49">
���Ƿ��عؼ�֮���ء���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080510a00">
����ʱҲ�䵱ǰ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����Ϊ���Ӹ߶�������Ⱥ֮����
�������������ǰ�ӵ�����������߹��ߵĻ�����
��ͷ��ʤ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080525b49">
���治��
����Ҳ�뵱ǰ��������ܺ��ء���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080530a00">
��������ѡ�������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080540b49">
��û��û����


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080550a00">
������������㡪����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
����һ�����С����⻰�ŵ�����ֻ�æ���˻�ȥ��
�����겢δ׷�ʡ���ֻ�ǣ�ɲ�Ǽ��۽�����һ˿
��į����ɫ��

�����Ǹ����������ꡣ
���������������ᡣ

�������������ɰ����Ǿ��Բ�����ȥ������ѡ�֡�
�۳������ġ�
���������д˲��ܡ�

��Ҳ���Բ��ᱻ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="����" src="voice/mb02/0080560a00">
��������������
������ʮ�¡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080570b49">
���š���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080580a00">
������ϥ�������ˡ�������Щ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
����վ���������ԣ���������ָ����
��������Ů���Ǵ�ʹ�����ߡ����ǻ��������Ȼ����̬��
�Ҷ��Ѿ��������ˡ�

�������ýż��סƫ�뷽����򣬽�����ء�
�����ô��Ƚ�ס���ֵ���һ�Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="����" src="voice/mb02/0080590a00">
����ʮ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080600b49">
���á�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ݩ`��
//�������SE��Ҫ������եƥ��󥰥ߥ����ܤ󡢤ܤܤ󤳤���
	CreateSE("SE01","se����_����_��եƥ���02");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
���ƺ�����Ϊ̫�������߰���
������������������߿գ�������һ�����ߡ�

��Ȼ�����������߹�����¡�
�������������ء��صص����Ź�Զ����

��һֻ�����ֱۣ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���@�ӊ�
	StR(1000, @0, @0,"cg/st/st�@��_ͨ��_˽��a.png");
	FadeStR(300,true);
	Wait(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
������ӣ��С�㡣
����ǰ���������Ӽ����м䣬����Ҫ�������δ���

��������ע�⵽��ߡ���׼ȷ��˵��ע�⵽���ϣ�
�������������¡�
����ͷ���������ڱ�ֽ�Ͽ��������������š�Ļ��
��ʿ�����٣�Ҳ�ǽ��ոԲ�ǧ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0080610b28">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
��ӣ��С�㱧���������Ű��ϡ�
��һ�����������ĸ��ӱ��顣

�������������ĳ�С�
��������Ŭ���ز�δ��¶���⣬����޺�ʹ�ಢ����һ����
������ʧ�ġ�

���������ɰ������ǳ�еĶ��塣
������˵�����Ļ�����ȫ���������ζ��ù����
���������ܸԲ�֮��ʱ����δ��λ��

��Ѱ�����ĺ���Ҳû�����ɿ�����ӣ��С����䱧��
���˵���֮�����С�
��
��������ӣ��С��Ӧ��Ҳ�������

�����ڣ�վ������ǰ�Ĳ����Ǹ���������ˣ�����ꡣ
�����������벻�����ǣ��������������������ˡ�

���������а����������ӶԷ���Ҳ�����з�����
��ֻ���������йᴩ����ֱ���ĵס�

���Բ����Ź£������õ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0080620b28">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
���Բ�ӣ������˫�ۣ�̾�˿�����
�����������Ƿ�����ʲô�Ƶġ�

���������������򾩼�����ʾ��󣬳��������
������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ��@�ӤȰ���
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080630b49">
��������������


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0080640b28">
���ߵ�����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
������˵�������������꣬ӣ��С��΢Ц�š�
���������ĵ�΢Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0080650b28">
���ǡ��������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080660b49">
���ǡ��ǰ�����


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0080670b28">
���Ҳ��Ǻ��˽⡭��
���ͺñ����������֮�����Ϸ�ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080680b49">
�����������ԡ����ǵġ�
���ղ�ֻ����ϰ���ˡ���


//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080690b49">
��ʵ������һ�ֶ���֮�䡭�����������
�����˶�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
�����ϵ�˵����ȫ������ʹһ����������⡣
�����������鷳��ֻ�Ǵʻ���̫�١������
����Ϊ<RUBY text="����">ͻȻ</RUBY>���ʼ���Ե�ʰɡ�

��С�����Ժ�����
�������ϻ���¶��һ������������۾��ı��顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0080700b28">
��ע�ⲻҪ����Ŷ����


{	FwC("cg/fw/fw����_����.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080710b49">
��������


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0080720b28">
���������úá���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080730b49">
��л����
��лл������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
��ӣ��С�����ݳ���
������ηη���������ֽӹ���

������֮Ů��
��Ӧ��Ϊ���ߵ����ꡣ
��
��˫����ָ�⡪������һ˲�䣬΢΢������

{	DeleteStR(300,false);}
��ӣ��С��ʩ��󷵻ء�
������ת����ȥ�Ķ����У�����������ʾ�Ⲣѯ��
����<k>�����ڸ�ʲô�أ�����Ŀ�Ц��
��Ҳֻ�ܻ��Կ�Ц��

�����ǵģ��ҵ����ڸ�ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080740b49">
�������ġ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080750a00">
���ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
��������Ӧ����
����֮��ȴ�þ�û�п���˵����

������������Զȥ�ı�Ӱ��

����ӣ��С��ص���Ⱥ����֮�к�������������
���ٴ�����������

�����ǵ�Ŀ�ĵ��ƺ�������һ�ǡ�����������ͯ����
�µĸ����Ǿۼ�֮���ķ������š�
����֪�Ƿ������ӣ��С�㣬�����ߵú�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080760b49">
���ǡ�����˭����֪���𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0080770a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
�������ƺ�����֪������������
������ӣ��С�������ϵð��ϣ�������Щ�Ծ���

������ϸϸ������Ҳ������Ȼ��
��ӣ��С����ʶ�������ɰ��ϵĻ���Ҫ�����ж��١���
���ϣ�ֻҪû��������Ϊ�������ܾ��Ź£�����ʶ�Ļ�
�ᶼû�С�����֪��Ҳûʲô����ֵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//��������
<voice name="����" class="����" src="voice/mb02/0080780a00">
����λ�ǵ���������λ�Բ����ٵ�Ů����
ӣ��С�㡣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080790b49">
��!!
���Բ��ġ���Ů������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
�����������𾪣����岻�ɲ�����
�����������������ޡ�����Ļ�������һ��֮Ů��

��������б�󷽵ı�ӰԽ��ԽԶ��
��һ�����ŵ���̬����Ȼ����������
�Ӿ�ֹϸ΢֮��͸���Ľ�Ӳ��ʹ���ܹ��µ�
�������ġ�

���Բ����ٵ�Ů������������λĻ����ǰ��
���ȴ����ľ�����һ�����Ļ��档

�����¾�������Ůʿ�����ҵġ������й�ı����ȡӣ��
�ķ�Ļ����һ�¶����������ʡ�
����Ȼ�����ڷ�չ�����ʣ������п��ܽ��й�������
��Ѷ�ʡ�

������������֮�ڣ�û������ͬ�顣
��
��Զȥ��ӣ��С��ʮ��������
�����ǻ�Ұ֮����Ȼ���ţ������Ĺ¶�֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0080800b49">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
����������š�
����ָ���������ա�

��������Ķ�����������ȷ�ϲ�����ָ����¶ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_009.nss"