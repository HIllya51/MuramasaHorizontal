//<continuation number="350">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_009.nss_MAIN
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
	#bg014_�`�}���A��_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_010.nss";

}

scene ma01_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_008.nss"

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg014_�`�}���A��_01.jpg");


	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(0,true);
	FadeStR(0,true);

//�����ͨ��
	SoundPlay("@mbgm30",1000,1000,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);


	SetNwC("cg/fw/nw���ä����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���ä���
<voice name="����㣯���ä���" class="����������" src="voice/ma01/0090010e009">
��ѽ�����ٶȿ����൱�찡��
�������������ݵ�һ�£���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090020b43">
�������������

{	NwC("cg/fw/nw���ä����.png");}
//������㣯���ä���
<voice name="����㣯���ä���" class="����������" src="voice/ma01/0090030e009">
������������Ҫ���������Ƶġ�
�����ǻ����ǰ�һ��Ķ����Ƶ�������
���ǡ�����

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0090040b33">
�����ǣ���

{	NwC("cg/fw/nw���ä����.png");}
//������㣯���ä���
<voice name="����㣯���ä���" class="����������" src="voice/ma01/0090050e009">
���Ǹ�������Ĳ���������
���������������������ǣ��������������
�����ɣ��Ǹ�����


//������㣯���ä���
<voice name="����㣯���ä���" class="����������" src="voice/ma01/0090060e009">
������Ҳ������Գ�������ǡ�����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090070b56">
������������

{	NwC("cg/fw/nw���ä����.png");}
//������㣯���ä���
<voice name="����㣯���ä���" class="����������" src="voice/ma01/0090080e009">
������������û�¡�
�����š��Ǵ�ɽ��������Գ��֮��İɡ�
�����еģ�����ɵ�ϡ��ǲ�������
����İ�������������

//������㣯���ä���
<voice name="����㣯���ä���" class="����������" src="voice/ma01/0090090e009">
��������Щ�鱨���˰ɣ�
�������Ұ�����ɶ��Ҳ��æ�ġ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090100b56">
���õġ���лл��
���ǳ���л����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,false);
	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��Ŀ�����⸽���ƹݵĳ��ʹ���Ų��Ҵҵ���ȥ��
�����ǳ�Ĭ�ţ�������ӡ�

�����ָ�����С�ƹݽ֡�
���ڴ�������ǰҹ�������ʱ����˵���˿�����
ʲô��ֵĶ�����׷Ѱ��ȥ�ҵ��ľ��Ǹղ��Ǹ��ˡ�

���Ǹ��������������ֹ���ж��˶Ի���
������ǡ���������
��
�������������ݱ��ܵ���Ӱ��

���ܶ���֮�����˶����˵Ķ�����

�����ߡ�

�����ᵽ���ߣ�Ψ�������ޡ�
��������Ϊ�����������޵���ͨ�˳��н����Ǳ���ֹ
����Ϊ��������ս��ǣȣ�����ʵʩ�Ľ����Ѳ����ߣ�
����������Ľ��м���ȫ����û�ա�

�������н�����������������û�յ��ˣ����Ҳ�ᱻ�ҷ�
�����ֻ��߷��𷴿��ձ����𣬽�������ͽ���һ�𶪵���
����һʱ�����Ƶ�������¼������Ҳ�Ѿ������伣�˰ɡ�
�������û����˵��

�����ڣ������������ܱߣ������޶����ߺ�
���е�¢�Ϲ���������ȱ��
��
�����⡭��ֻ�о����ý��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090110b43">
������������Ϊ�������
װ������ż����������ϰ�𣿡�

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090120b56">
����ȷ������Զ���ת����������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0090130b33">
�������׵�ҲԽ��Խ������ء����������ṩ��
�¹�Ƶ����װ�׾�������ϰ��ʹ�á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ǲ����ܵġ�
��˵���ף�װ�������ڻ���Ͽɵľ����������
��������װ�׻���ǲ�����ɵġ�

��������̬���������
���Ǹ��������û�п�������ǰ��ҹ��
�������������޵����ߡ�

����������ʧ���Ǹ�ʱ��

��ū��ó�ס�
������������Ϯ�Ϻ����ס�

��ֱ����ҹ�Ľ׶Σ��ǻ�ֻ�����ǿ����Ե�һ�֡�
�����Բ���ֱ���ǿ��������ܴ��������˿־���޴롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090140b56">
����ġ�����������ץ�������ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��һ����ʵ�и��ǵ��Ʋ⣬����Ӧ��ÿ����
�����ж����ֳ�����ȴ���˿��ڡ�
�����ɺ�֮ǰ�Ĵ�����ͬ��

���޷��ֿ������ޡ�
�������޷��ֿ�����ȴ��Ҫ�赲��

�������ޡ�
��ԭ���㲻�������泩�Ĵ��ڡ������ܵ�
��˳̶ȵĳ��ظл�ǰ��δ�С�

��ʳ�����ơ����ۡ���ʱ˰����ʹѹ��
������ֹ����������˵�����ܹ����͵�
��Χ��
������Ϊֹ��

�������ѹ���Եı��������ڶ�������
��������˵��Ȼ��ȥ��
��
��������취��

��ȴ���ް취��

���޷����������ޡ�
����������Ϊ�����ǿ�ߣ�
����֮ƥ�е������޴���Ѱ��

������������޴���Ѱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_�Ӥ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0090150b33">
��������ô��ź��أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���������ƣ����װ����������ɰɡ�С��
�����³�������������
�����Ҳ�����Ӧ�����ԡ�

����ô��ź��أ�
���������޵������������٣�
��������ʵһ�㣬������֮���������
���³ͷ���

���������á�
��û�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090160b43">
������ȥ�������ְɡ�
������ȷ����ʵ����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090170b56">
��ȷ������������������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090180b43">
���۷ɡ�����

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090190b56">
������ʲô���������𡭡����������������
�Ļ��������������֣��ҵ����߰���ɵ�֤�ݣ�
Ȼ��������������
��ȥ�������������𣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�������������ɶ����ǲ��
���ҵ����ڷ�ʲô��
������һ�����ɶ�

��ȷ����ʵ�Ǳ�Ҫ�ġ�
���ұ�����ȷ��һ�������

�����黹û�ж��֡�
������ȥȷ���ɾ��������ˡ�

�����Ǻú��¡�
�������ҵ���ӹ���ɵ�֤�ݣ�ȴ�����޿��κΣ�
����ظе��Լ���������

������ֽ׶η������Ϳ���ȥ��������
������ֻ���й�ȥ��ʲô�ط�����������ء�
����ô���ŵ��Լ������š�

��ų����
��������
������Ҫ�������ᣬ�ⶪ����ų����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090200b43">
���۷ɡ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090210b56">
��������Ǹ����˵�öԡ�
����֮ȷ����ʵ�Ǳ������Ƚ���ġ������Һ�
֮����˵����

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090220b56">
��ȥ���ְɡ�
����㷨�ӣ��ܿ�үү���۾�����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090230b43">
���������ǡ��۷ɣ����Ǹ�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090240b56">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�������飬�ڼ���ϼ��е���ָ�ô�ߴ��£�
��̧���˵ͳ�������
���ұ���С����ˢˢ�ؿ���ͬһ����

��׷�����ǵ����ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090250b56">
���������ǡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090260b43">
�����ᡭ�����Ǹ��ɡ���

{	FwC("cg/fw/fwС��_�@��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0090270b33">
�����ǣ��Ǹ��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);
	DeleteStL(300,true);

//<voice name="���w" class="���w" src="voice/ma01/0090280b56">
//<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090290b43">
//<voice name="С��" class="С��" src="voice/ma01/0090300b33">

	CreateVOICE("���w","ma01/0090280b56");
	CreateVOICE("�ұ�","ma01/0090290b43");
	CreateVOICE("С��","ma01/0090300b33");

	SetBacklog("���������ˡ�����", "voice/ma01/0090280b56", ���w);
	SetBacklog("���������ˡ�����", "voice/ma01/0090290b43", �ұ�);
	SetBacklog("���������ˡ�����", "voice/ma01/0090300b33", С��);

	MusicStart("���w",0,1000,0,1000,null,false);
	MusicStart("�ұ�",0,1000,0,1000,null,false);
	MusicStart("С��",0,1000,0,1000,null,false);


	SetFont("@����", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	CreateText("text01", 20001, 50, 20, 700, 500, "���������ˡ�����");
	Fade("text01", 0, 0, null, true);
	Request("text01", PushText);
	Request("text01", NoLog);
	SetVertex("text01", 0, 0);
	SetAlias("text01","text01");
	Rotate("text01", 0, @0, @0, 90, null,true);
	Move("text01", 0, 317, 134, null, true);

	CreateText("text02", 20001, 50, 40, 700, 500, "���������ˡ�����");
	Fade("text02", 0, 0, null, true);
	Request("text02", PushText);
	Request("text02", NoLog);
	SetVertex("text02", 0, 0);
	SetAlias("text02","text02");
	Rotate("text02", 0, @0, @0, 90, null,true);
	Move("text02", 0, 828, 134, null, true);

	SetFwR("cg/fw/fwС��_�@��a.png");
	SetFwC("cg/fw/fw���w_�@��a.png");
	SetFwL("cg/fw/fw�ұ�_�@��.png");

	FadeFwR(200,false);
	FadeFwL(200,false);

//�����w�����ұ�����С�ģ�
//�������������ˡ���������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
{	Fade("text01",0,1000,null,false);
	Fade("text02",0,1000,null,false);}
//�����w�����ұ�����С�ģ�
���������ˡ�����

/*
//������һ�r�˱�
//��ͬ�r�k��
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090280b56">
���������ˡ�����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090290b43">
���������ˡ�����

//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0090300b33">
���������ˡ�����
*/
</PRE>
	SetTextEXC();
	Request("@text0140", PushText);
	Request("@text0140", NoIcon);
	Request("@text0140", NoLog);
	TypeBeginEXIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("��ܞ", 10000, "#000000");
	Fade("��ܞ", 800, 1000, null, true);

	DeleteStR(0,false);
	DeleteStL(0,false);

//����������
	StC(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStC(0,true);

	FadeDelete("��ܞ", 800, true);

	Wait(1000);

	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������һ�����������ˡ�

����ϸ���Ļ��������ᣬ�ٽ�һ������Ҳ������
����̫������������Щ�����׵��˵�ƽ�߱˷���
��һӡ��ֻ�ǵ����ģ��ڰ���

���·�ֻҪ��������һ������ֵ�ഺ�������˾ͻ�ͻȻ
�Ļ���ò��ɱ��������۵�������塣���̶ֳȵ������С�
����ֱ��ͬ��ħ��Ĵ��ڡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("��ܞ", 10000, "#000000");
	Fade("��ܞ", 800, 1000, null, true);

	DeleteStC(0,false);

	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(0,true);
	FadeStR(0,true);

	FadeDelete("��ܞ", 800, true);

	SetFwC("cg/fw/fw�ұ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090310b43">
������������ô�������أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���ұ�����ֵ����˵����
���������ѵõ���Щ����

����Ҳ���ǲ�����⡣�������Խӽ���<RUBY text="��������">��������</RUBY>��
�����������Ȼ��������ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0090320b33">
��Ҫ���š�������к���ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����Ǿ��Բ�ȥ�İ��������ˡ�С�ĵĻ���
����������΢�����⡣
����Ҳ����ȥ��

��û�취��ֻ�������Э������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0090330b56">
����֮�����ȿ����������

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0090340b43">
��û�����顣��

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0090350b33">
���޳ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);
	DeleteStL(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��ȫԱһ�¾��������鷳������������ӡ�
�����Ǳ����ž��룬β��������һ��ɢ��������
��·�˺����İ��ڲ�����һ�����ߵ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("��ܞ", 30000, "#000000");
	DrawTransition("��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);


}

..//������ָ��
//�Υե����롡"ma01_010.nss"

