//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_016.nss_MAIN
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
	#bg098_ܥԽ����������_01=true;
	#ev213_�����ȴ����νY�F_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_017.nss";

}

scene md02_016.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_015.nss"


//��bg098��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg098_ܥԽ����������_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);

	SoundPlay("@mbgm05", 0, 1000, true);
	Wait(500);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md02/0160010a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��û��Ե�ɣ�һ�˶���̾Ϣ��
����Ȼ����Ϊ���廯�������������ж���
��Ҳ������Ϊ���������ָ��ܶ����ġ�

���������ڡ���ͥԺ�ٶ�ѵ����
�������Ǳ���˵��ʲô��
ֻ�ǲ��������һ���˴��ŵ����ӣ�
������΢�����˾��롣

������úÿ����緹ʱ���°ɡ�

��������˵ֻ��Щ���ĵĻ���
���Ǹ�������ĺ��У��Լ��Ǹ����������˲���ļ�����
��ֻ�����������ڸ������������������Ķ�����������
���ž�����

�������������Ͳ�Ҫ�ٷ��������ֻ���Ҳ��
���ܶ���˵�ġ�
����Ϊ����Խ�����е�ְ�� 

�����������ǲٿ��ߵ�ְ��
����Ϊ���Ƿ���ǰ�����������ǽ��е�ְ��

�����Ҳ�˵����ֻ���Լ��������Բٿ�����������
��Խ��������һ��ָʾ���ǲ��á�
���Ǵ���Բٿ��ߵĲ����Ρ�

���Ǳ����˸ı��ȥ������������һ���������ҵ�����

�������£��ܰ쵽��

����ô���ţ�û��֪����һ�仰�����뿪�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md02/0160020a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������̾Ϣ��

������һ�˵�ʱ�䣬������˵���Ǳ�Ҫ�İɡ�
����������һ�ˣ������һֱ�ڶ�ҡ�Ĳ�����
���ٶ������س��Ρ�

����������ߵ�ʱ��û����������
�����������̫���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md02/0160030a01">
�����ǡ������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������ǲ��ò����ǵ��¡�
�����Ƿ�̣����Ӧ�ø�л��λ��ᰡ��

�����ں����Ǻš�����������ս�����¡�

��������Ϊ�ٿ����ƺ�������ʤ�㣬����Ϊ����Ҳ�ڼ��֡�
�����ò�עĿ֮������Ȼ���ǵ��˵ġ��ļ�һ�¡���

�����Ǻŵ�ȷ�����ߵ��������֡�
���ٿ����뽣�м�û���κβ�Э����
���쳣������ս���ٶȺ�������ʹ�ã�
����������������ϵġ�

��ֻ����Ϊ���������Ѿ����˴���Ϊһ�塣
��������ʵҲ�������޼���

����Ƚϡ��������أ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md02/0160040a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�����΃x

	EfRecoIn1(18000,600);

	CreateTextureSP("���ٽ}10", 1001, Center, Middle, "cg/ev/ev213_�����ȴ����νY�F_b.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���������𡭡�
�����ž�����ʱ�����ࡣ

������ǰ��ȣ�װ��ʱ��<RUBY text="������">һ���</RUBY>Ҫǿ�ܶࡣ
���Ǳ仯Ҳ�����������ϡ�

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	EfRecoOut1(300);

	Delete("���ٽ}*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md02/0160050a01">
��������

//��������
<voice name="����" class="��������" src="voice/md02/0160060a01">
����˵�������Ǳ�Ҫ�ģ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��ͻȻ��������Ļ���
�������������һ�����Եֿ��ĳ��ȡ�

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md02/0160070a01">
�����ǡ����ϰ��𣿣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ٿ���<RUBY text="������������������">�������˶Դ����Լ�</RUBY>��

����������ʶ��Ϊ��ȫһ�廯�ġ���
������ļ�һ�µ��ϰ�����

����Ϊ�����Ѿ�������ˡ�֮�������ڰ����С�
������ǰ����š������¶�ȴ��δ�ı䡣

������ǰЩ���ӣ������������ϵõ��ٿ��ߡ�
�����ڵ��ң���Ϊ������Ҫ�������ڴˡ�

���Ѳ����¶���

���������Լ�����������Զ���ߵĴ��ڣ�Ҳ�������
���Ѷ�������״������ζ�Ų����ּ������ѡ���
����ϲ�õ������޷����ơ�

����ס����������֣����Բ����ٷſ���

�������������뷨���ϰ���

���������Ҳ���������ǺŵĲٿ���
�ͽ��жԱ˴˵����鶼�����⡣
�������ӽ������ӡ����Ƕ��Լ�Ҳ������������͡�

������Ҳ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/md02/0160080a01">
�������Ļ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0160090a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��������̾Ϣ��

��ֻҪ����һ���ˣ��ͻ��ظ���������״����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"md02_017.nss"