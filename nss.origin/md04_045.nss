//<continuation number="1630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045.nss_MAIN
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
	#bg105_���T�����ڂ�_02=true;
	#bg094_�m��ͥ_01=true;
	#ev221_���������ԡ�Ӥ����Ĺ�_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md04_045.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_044.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg105_���T�����ڂ�_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm04", 0, 1000, true);

	CreateMovie("���ӻ�", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 6000, null, true);
	Request("���ӻ�", SubRender);
	Move("���ӻ�", 0, @0, @-400, null, true);

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 500, 100, "slide_01_04_1", true);


//������

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw�衩��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0450010a07">
����ɵĺ��¡�������!!��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450020a01">
������������ʱ�������<RUBY text="����">����</RUBY>�Ը��ҵİɣ�
����衣
���͵�����ʱ��ԭ����ɣ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0450030a07">
����С���ң����
�����������������Ͼ������ѣ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0450040a07">
�����̺þ��ˣ��������Ҫ�ɵ���!!��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450050a01">
����û������һֱ��ס�㣬������������һ
��ʱ��ɣ�
  �Ǿ͹��ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450060a01">
����Ҫ����������ϾͰ��ꡣ��

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0450070a07">
���ɡ��ɶ񡭡�
����磬����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����֩��˿��ס���������õĲ����е���
�����������������ǽ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0450080a07">
�����ܿ����Ǽһ
���Ǽһ��Ѹ�硭����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450090a00">
���ߡ�
������������졣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������仰����ǰ̤��һ����
���ʹ����������ҵĽ��ж��š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ȴ���
	OnSE("se����_����_һ�i",1000);

	StR(1000, @0, @0, "cg/st/st�����AȾ_ͨ��_�Ʒ�.png");
	FadeStR(500, true);

	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md04/0450100a01">
����������������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450110a00">
��������ʲô����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450120a01">
���������ȥ����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450130a00">
��������¡���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450140a01">
��������

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450150a00">
��������ʧ�ɡ�
�����и����ٿ��ߵ�ָ����ǡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450160a01">
���������С���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450170a00">
��Ϊʲô����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450180a01">
���ҵĲٿ���ֻ��һ�ˣ����Ǵն�������
��<RUBY text="��������">��������</RUBY>����

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450190a00">
�������ߡ�
����˵�Ҳ��Ǵն���������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450200a01">
�����Ǵն�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������̧��ʾ��������������龰��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����200", 11000, @0, @0, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");
	Fade("�}����200", 500, 1000, null, false);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md04/0450210a01">
��������������ǰ�Ļ�������ֻ�ǿ��š�
������Ϊ����ֹ��ȥս������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450220a01">
����ʹ֪����ͽ���޹���Ҳ��ȥ��Щʲô����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450230a00">
��������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450240a01">
��Ҫ�����Ƿݵȴ�ʲô�������Ͼ��
�����ȥս���ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450250a00">
��û��
����ȥ�Ĵն�������Ż���ô������

{	FadeDelete("�}����200", 1000, false);
	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450260a00">
�����ǣ�������Σ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450270a01">
���������Ŀ����ʲô����

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450280a00">
����Ҫ��֪���ʡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450290a01">
��������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450300a00">
��Ϊ�˾ȹ⡣��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450310a01">
����ô�ȣ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450320a00">
����Ӧ����˵���˰ɣ�
�������ڵص��������Ķ���ק��������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450330a01">
����������������˵�⻰�ģ���

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450340a00">
�����ȷ�����ĺ�������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450350a00">
���ҼȲ�̫���ţ�Ҳû����Ȥ��
�����ǡ�������������֪��Χ֮���ĳ�ﵱ��
���ڵĻ���˵�����������������������޲ߵ�
�⡣��

//��������
<voice name="����" class="����" src="voice/md04/0450360a00">
����ֻ������һ�㡣��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450370a01">
����������
�����磬����������Ը�����ʵ�֡���

//��������
<voice name="����" class="��������" src="voice/md04/0450380a01">
���ն�����<RUBY text="������������">��һ���Ĺ���</RUBY>��
����Ҫ��ô�죿��

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450390a00">
����ô�졭������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450400a01">
���ն��⣬�����Ǹ����ǺŰ�!?
��Ҳ����Ļ��������ġ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450410a00">
������
��û����

//��������
<voice name="����" class="����" src="voice/md04/0450420a00">
��������ν����

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450430a01">
����������

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450440a00">
��ֻҪ����žͺá���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450450a01">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md04/0450460a01">
��<RUBY text="��������">̫������</RUBY>������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450470a00">
������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450480a01">
����û�з��պ���ԥ��
����������û�н��о��ϡ���

//��������
<voice name="����" class="��������" src="voice/md04/0450490a01">
��û�С���ѡ�񡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450500a00">
������˵ʲô����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450510a01">
������˵��
�����Ȼ���Ǵն���������

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450520a00">
���޴���
��<RUBY text="������">�Ҿ���</RUBY>�ն���������

//��������
<voice name="����" class="����" src="voice/md04/0450530a00">
��������٣����Ǳ��ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450540a01">
�����������š�һ����
����Ҳһ��û����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450550a01">
�����ǡ�����

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450560a00">
�������ϣ� 
����Ҳ����㡭����

//��������
<voice name="����" class="����" src="voice/md04/0450570a00">
�����ǲ����ң�����Ҫ����ϡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450580a01">
������������

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450590a00">
��Ȼ���أ�
�����Ѿ��ܾ����㡣��

//��������
<voice name="����" class="����" src="voice/md04/0450600a00">
���������ô�죿��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450610a01">
������������

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450620a00">
���Ի����ܽ���Ļ�����ȻҪ��ʵ����ʤ������

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450630a00">
�����ǣ���ʲô�������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450640a01">
���������ǡ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450650a00">
����Ӧ�����������ġ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450660a00">
�����޴���һ�Ŷ��е�������������桱��
����Ҳ��������ܡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450670a00">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣�ۤ�ǰ
	EfRecoIn1(18000,600);

	CreateTextureSP("˼����", 5000, Center, Middle, "cg/bg/bg094_�m��ͥ_01.jpg");

	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��
��������������������������ӡ
�����������������������Խ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);
	Delete("˼����");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw�����AȾ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md04/0450680a00">
�����ò�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450690a01">
��������

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450700a00">
����ʱ�򡪡�
���ھ���������Ҳû����������

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450710a00">
������ͼ�����ң�ȴʧ���ˡ�
�������鷳���������ⶫ������

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450720a00">
���ʵ۵�گ����˳�����
��Ҳ�ԡ�������������ҡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450730a01">
��������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450740a00">
�����߰ɡ���ʲôҲ�����ˣ�
��������Ҳû���塣
���Ǳ߲����һ��������Ļ�ٵ��㡭����

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450750a00">
�����������ߣ�ȥ�Ҹ��ط���˯�ɡ�
�����ȥ���������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450760a01">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450770a01">
���������ǵġ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450780a00">
����������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450790a01">
���Ҳ��ܿ����㡭��
��������Ϊ��������������

//��������
<voice name="����" class="��������" src="voice/md04/0450800a01">
����ʱ��Ҳ˵���ɡ�
���Ѿ��ǣ��ܾ���ǰ�������ˡ���

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450810a00">
����˵ʲô������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450820a01">
�������ʵ۵�<RUBY text="��">����</RUBY>��ȷ�ǳ��صġ�
��Ҳ��������ͼ���������Դ�Ŀ�ĵ�<RUBY text="�⹫">ʼ��</RUBY>��
<RUBY text="ĸ��">����</RUBY>�佾���ꡭ����

//��������
<voice name="����" class="��������" src="voice/md04/0450830a01">
�����ǽ�������������������װ��ѡ�
���޷��쵽�������ǡ�������ʱ�޷��������
�����ǡ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450840a01">
����Ϊ�����ȥ�����Ը��!!��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450850a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���ҵ�
��
����������������������������Ը��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md04/0450860a01">
���������ڣ���Ҫ����ʹ����������

{	FwC("cg/fw/fw����_������.png");}
//�룺�������Ȥ�����090930��
//��������
<voice name="����" class="��������" src="voice/md04/0450870a01">
��������û����־��
��ֻ�����ȴն����Ը�����ѡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450880a01">
���ǵ�ȷ���Ǳ�˭����ģ�����������Ķ�����
�������㲢��<RUBY text="��������">�������</RUBY>���ѣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450890a01">
���㱻�����ˡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450900a00">
�������ҡ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450910a01">
����Ҫ�����㡣��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450920a01">
����Ϊ�ҡ��������<RUBY text="����">�ػ���</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������å�
//���ãǣ�����ɜh���ۥ磻�ȥ�����
	SetVolume("@mbgm*", 2000, 0, null);

	CreateWindow("�}�ݷ���", 1500, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 1050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 1100, 100, -144, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Rotate("�}�ݷ���/�}�ݱ���", 0, @0, @180, @0, null,true);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	CreateTextureEX("�}�ݷ���/�}���}", 1110, 100, -350, "cg/st/resize/st����_ͨ��_˽��llll.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);


	Move("�}�ݷ���/�}�ݱ���", 500, @0, @100, AxlDxl, false);
	Move("�}�ݷ���/�}���}", 500, @0, @200, AxlDxl, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	Wait(200);

	CreatePlainEX("�}��д", 1120);
	SetBlur("�}��д", true, 3, 500, 100, false);

	CreateColorEXadd("�°�", 1300, "WHITE");
	CreateTextureEXadd("�ɜh", 1200, 0, 0, "cg/ef/ef034_����AȾ.jpg");

	OnSE("se����_������_�衩���n�Ĳ�",1000);
	Fade("�°�", 1000, 1000, null, false);

	Fade("�}��д", 100, 1000, null, true);
	Zoom("�}��д", 1000, 15000, 15000, Axl3, false);
	Zoom("�ɜh", 1000, 2000, 2000, null, false);
	Fade("�ɜh", 500, 1000, null, true);
	Wait(500);

	DeleteStA(0,true);
	Delete("�ɜh");
	DeleteStA(0,true);
	Delete("�}��д");
	Delete("�}ɫ100");
	Delete("���ӻ�");
	Delete("�}�ݷ�*");

	SetFwC("cg/fw/fw�����AȾ_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md04/0450930a00">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����С�

��<RUBY text="��������">�һ����</RUBY>��

���һ��ò���ֻ���ػ��⡣

������Ҫ��ס��

��ֻҪ���־��񲻶�ҡ��Ӧ�þ��ܿ������ָ���ģ� 

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ�����ɜh
	OnSE("se����_��x_�k��04", 1000);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/md04/0450940a01">
��������
���ҡ�������ǿ���㡣��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0450950a00">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm05", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ԡ�

����ǰ��һ�У��Ǵ��ڲ����˵ľ����ƻ����ַ���
�����������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="��������" src="voice/md04/0450960a01">
����ֻ��ȡ���㱻���ߵĶ�������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450970a01">
����<RUBY text="����">���Ǻ�</RUBY>��������ӡס�ģ�ȫ������
����Űɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ�����ɜh
	OnSE("se����_��x_�k��04", 1000);

	SetFwC("cg/fw/fw�����AȾ_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md04/0450980a00">
������Ŷ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0450990a01">
�����������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("˼�������Ƥ롣", 1500, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");
	Fade("˼�������Ƥ롣", 1000, 500, null, true);

	Wait(300);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0181]
//��������
<voice name="����" class="��������" src="voice/md04/0451000a01">
����ʮ�����Ӵն��⡣
�����������ڣ��Ӻܾ���ǰ���ǡ���

//��������
<voice name="����" class="��������" src="voice/md04/0451010a01">
��������ˣ���ȥ��Ҳ������
�������Ǻ�ս��������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451020a01">
������Ϊʲô����

{	FwC("cg/fw/fw�����AȾ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md04/0451030a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451040a01">
����Ϊ����������Ҫ�Ķ�����
���ѵ������𡭡�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0451050a00">
�����ԡ�������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451060a01">
������������

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0451070a00">
���⣬�������ļ��ˣ�
��û��ʲô������Ҫ�Ķ�������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451080a01">
�������ǰ�������

//��������
<voice name="����" class="��������" src="voice/md04/0451090a01">
����ļ����Ѿ�ֻ�дն����ˡ�
����Ϊ���Ѿ������˴ն�ͳ����

{	FwC("cg/fw/fw�����AȾ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md04/0451100a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451110a01">
��������˵����
�������Ͼ��Ǻ�����Ե�����ˡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451120a01">
�����ǡ�����

//��������
<voice name="����" class="��������" src="voice/md04/0451130a01">
���㣬�����ز���ʶ�����ˡ���
��������֪����ĳ�ˡ�����

//��������
<voice name="����" class="��������" src="voice/md04/0451140a01">
�������Լ�����������
�������޵���ض�����Ҫ���ˡ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451150a01">
���㲻�Ǿ��Բ���ԭ�������µ���!?��

//��������
<voice name="����" class="��������" src="voice/md04/0451160a01">
������������˲źʹն���ս����!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥ��`�󡣱�����
	OnSE("se����_��x_�k��03", 1000);

	DrawEffect("˼�������Ƥ롣", 36000, "SoftSplit", 30, 30, null);
	FadeDelete("˼�������Ƥ롣", 1500, true);

	SetFwC("cg/fw/fw�����AȾ_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md04/0451170a00">
���ء�����������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451180a01">
�����������ɣ�������
���������ҵġ������ǵ����

//��������
<voice name="����" class="��������" src="voice/md04/0451190a01">
������ɱ����ࡢ����ˡ���

//��������
<voice name="����" class="��������" src="voice/md04/0451200a01">
�����Ǿ����ܱ���ˡ�ġ�
�����ޱ�����ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451210a01">
�����ǣ�������<RUBY text="����">����</RUBY>�ġ�����

//��������
<voice name="����" class="��������" src="voice/md04/0451220a01">
����Ȼ�ñ�����ȡ���������������ǣ�
�޷����߱������������������ˡ��
�����Ƕ��Լ����ԡ�����

//��������
<voice name="����" class="��������" src="voice/md04/0451230a01">
���ң�Ϊ���ƶ������һ���ԵĹ�ء�
���㡪��Ϊ�˲������Ǻ���ֳ����

//��������
<voice name="����" class="��������" src="voice/md04/0451240a01">
��Ϊ�˲��ø�������ȥ��
����ɱ�����ǡ���

{	FwC("cg/fw/fw�����AȾ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md04/0451250a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451260a01">
��������
����������ǿ϶��������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451270a01">
������ɱ�������Ǿ����ú��������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ե�å���
//���������w���դ��Ȥդʡ���·��

	EfRecoIn1(18000,600);

	CreateTexture("˼����", 5000, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");
	StC(5100, @0, @0, "cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStC(0, false);


	EfRecoIn2(300);
	WaitKey(1000);

	EfRecoIn1(18000,600);

	DeleteStA(0,true);
	Delete("˼����*");
	CreateTexture("˼����", 5000, Center, Middle, "cg/bg/bg023_��Դ̫�μ�_01.jpg");
	StL(5100, @0, @0, "cg/st/st�դ�_ͨ��_˽��.png");
	StR(5200, @0, @0, "cg/st/st�դ�_ͨ��_˽��.png");
	FadeStL(0, false);
	FadeStR(0, false);


	EfRecoIn2(300);
	WaitKey(1000);


	EfRecoIn1(18000,600);

	DeleteStA(0,true);
	Delete("˼����*");
	CreateTexture("˼����", 5000, Center, Middle, "cg/bg/bg037_����������`��a_01.jpg");
	StC(5100, @0, @0, "cg/st/st��_ͨ��_˽��.png");
	FadeStC(0, false);


	EfRecoIn2(300);
	WaitKey(1000);

	EfRecoOut1(300);
	DeleteStA(0,true);
	Delete("˼����*");


//��Ȥˑ���
	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/md04/0451280a01">
�����ǵ������ͱ�ú������ɣ����������ˣ�
����������Ҳ����ν��!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0451290a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Խ�������̨�~�����롢����̨�~���ҡ��衩��̨�~
//������˥ܥå���������

	SetVolume("@mbgm*", 300, 0, null);

	SetFwL("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451300a07">
����Ų��ðɣ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451310a07">
�����Ǹ���и���Ҫ�Ķ�����
���Դն���İ����м�ֵ����

{	FwL("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451320a07">
���԰ɣ���

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md04/0451330a00">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="��������" src="voice/md04/0451340a01">
�������!?
��Ϊʲô������ᣡ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm14",0,1000,true);

	SetFwL("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451350a07">
����С���ҡ�
����Ȼ�޷���ֹ������棬������<RUBY text="����">�ź�</RUBY>
�һ������õ��ġ�����

{	FwL("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451360a07">
����磬��Ҫ��㯡�
�����Ǵն�����Ҫ�Ļ���һֱ�ػ��������С���

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451370a07">
���������������������Ρ�
����Ϊ�����統��ڣ���ʲô���ܷ����𣿡�

{	FwL("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451380a07">
����Ҫ˵<RUBY text="����������������������">���������������Ķ���</RUBY>��
������<RUBY text="������������������������������">��Ķ����Ǿ��Բ���������������</RUBY>
����!?��

{	FwL("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451390a07">
����������
���λ�Ҫ��˯������˵!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md04/0451400a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451410a07">
����ֻ�����ǵ�����ʵ����ʤ�����ѡ�
�����������������������ֻ࣬����Ϊ����
�Ƚ�ǿ�ɣ���

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451420a07">
���Ͼ�����������Ĺ�ͬ��ɡ�
�����ǣ��������ȫ���࣬<RUBY text="����">����</RUBY>��ǿ�Ļ���
���ǵ�Ը������ʵ�֣��������������

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451430a07">
��û��ʲô�û�֮�֡�
��ֻ�ǿ���һ�߱Ƚ�ǿ����˶��ѡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/md04/0451440a00">
������衭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451450a07">
����磬�㲻�ܷ�������

{	FwL("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451460a07">
�������������ż�ʹ������Ϊ�У�
ҲҪʵ�ֵ�Ը������Ҳ�ǡ�
�������Ҳ�ǡ�����

{	FwL("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451470a07">
�����ԣ��������¡��Һ͸��Ҫ��ȫ����
��һʤ����
������ʤ���м��֡���

{	FwL("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451480a07">
��Ҫ�ǲ�������Ļ���Ψ��ս������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/md04/0451490a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwR("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="��������" src="voice/md04/0451500a01">
��������
�������Ҳ���ǿ�������κ��¡���

//��������
<voice name="����" class="��������" src="voice/md04/0451510a01">
����ֻϣ����ƾ�Լ�����־����ѡ�񡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/md04/0451520a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="��������" src="voice/md04/0451530a01">
���ң������˵����ұ���
���������ǵ����𣿡�

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451540a01">
���Ǹ����������������е�һ�ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ե�å��塣�R���ұ�����һ����
	EfRecoIn1(18000,600);

	CreateTexture("˼����", 5000, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");
	StC(5100, @0, @0, "cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	FadeStC(0, false);

	EfRecoIn2(300);

	SetFwR("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="��������" src="voice/md04/0451550a01">
����ʮ�ִ�����
����������ɱ�������۷�֮������ô˵������

//��������
<voice name="����" class="��������" src="voice/md04/0451560a01">
����˵��ϣ������Ҫ�װ���ȥ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);
	DeleteStA(0,true);
	Delete("˼����*");


	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/md04/0451570a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="��������" src="voice/md04/0451580a01">
���������������ģ�ֻ����ô���ˡ���

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0451590a01">
��������������ѡ��ɡ�
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0451600a07">
����硣��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/md04/0451610a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="��������" src="voice/md04/0451620a01">
�������������⡭����

//��������
<voice name="����" class="��������" src="voice/md04/0451630a01">
����Ϊ�˶Դն���İ��� 
���ܹ���������һ�ж�����
���޼�ֵ���������𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 2000, 0, null);



//���x�k���ΤƤ��룯�ΤƤ��ʤ�

}

..//������ָ��
//���ΤƤ��롡"md04_045a.nss"
//���ΤƤ��ʤ���"md04_045b.nss"



//���x�k֫���`��
scene md04_045.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	CreateColorSP("��", 50, "WHITE");
	Delete("�°�");
//	OnBG(100, "bg105_���T�����ڂ�_02.jpg");
//	FadeBG(0, true);

//	OnBG(100,"bg006_���w�β���_01.jpg");
//	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�ܹ�����","��������");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
//���ΤƤ��롡"md04_045a.nss"
				$GameName = "md04_045a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���ΤƤ��ʤ���"md04_045b.nss"
				$GameName = "md04_045b.nss";
		}
	}
}
