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

scene md03_005.nss_MAIN
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

	$GameName = "md03_006.nss";

}

scene md03_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_004.nss"


//��ܥԽ
//���ţ֣������Τδ���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 1000, "BLACK");

//��������ev223 inc�Ѿ�

//	CreateTextureEX("����", 1100, @0, @0, "cg/ev/ev223_�����δ���.jpg");


	Wait(2000);
	Delete("�ϱ���");
	Fade("����", 1500, 1000, null, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����յĿռ��н�Ϊ�ڰ�����⣬
�ڰ����õ�֧���Ŵ˴���
���޸ı�����ס�
�������ʱ��һ�������̵İɡ�

��һ�ж�˿�������ı䡣
����ֹ�����ظ���ͬһ˲�䡣

����ɫ���ɡ�
���ֽ��ϵļ���ΡȻ������
������������ʼ���ã���ֹ���ظ��á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm15", 0, 1000, true);
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md03/0050010a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������û�ܱ���������

��<RUBY text="����">����</RUBY>���ڡ�
�������������һ���ҹؽ�������κ�Ͳ�֪
ȥ���ˡ�

����Ȼ�޷�ȥ�������
������֮���Ի�ͻȻת�䣬����Ϊ��Ӧ�������Ľ�����
�����㡣

��������и�׿Խ�����ܣ��Ͳ�����ˡ�

����ס�ֽŵ��̾��ɸ߾��ȵĶ��������졣
���������װ����ͬ���ǲ������������ƻ��ģ��ټ���
��֪�����˺����ֶ�ʹ���������Դ��ݣ�����Լ�����
��ʹ������Ҳ���ܸı���̬��

����ֻ��������������ż�������ﴹͷɥ����

��������Ҳ�����϶��������������ܡ�

�������ܹ��Գ��⴦�����Լ������ܺ����䡣
�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md03/0050020a01">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ֻ�������Լ��Ų��¡�

����������Ҫ�������ġ�
���������������Լ�����Լ����Ҫ��Ӧ���������ġ�

��������Ϊ��Ҫ�ҵ�˲�䣬��ȴ��Ϊ���ܡ�

���ٿ��ߵ��Ļ�������������ˡ�
����˹���֮����Ϊ���Ǻŵ������������ص�Ť���ˡ�

���ɺ޵������ƴ�Ϊ<RUBY text="����">̹��</RUBY>��
�����ǣ���ȷʵ��ʵ��������Ȼ������һ�����Ը񱻿�
�Ż��ˣ���������û�б���ȫ�����һ���ˡ�

�����ǣ��б�Ķ������������ˡ�
���б�Ķ�������������֮���������ˡ�

�������еľ���
��һ������<RUBY text="����">����</RUBY>�����ն��⣬����һ��������<RUBY text="����">���</RUBY>�Լ�
����¾���������������һ���������Լ��ó���֮ǰ
��Ĩ����һ�ɶ�����

����ĳ��������˵�����õ��˽��ѡ�
���⻰�Ҳ���˵���²��ؼ�����������ʱ��ҲҪ�����
�������õķ��գ��������þ�����Ⱦ��ǿ������

���������ܾ��ˣ�ѡ���������ķ�����
����ϣ����<RUBY text="��">�ٿ���</RUBY>��<RUBY text="��">����</RUBY>���Ǵ����Ĺ�ϵ����
�������ر˴˵���ʶ��ͬս����ս�ѡ�

���������ǡ�
�������һ�ʣ�¶�����˪���£������������ǡ�

�����Ծ���������
������ԭ���Լ���ʧ̬��

���޷���ͬ������־����������ʽ�����ᡣ

����������Ҫȥ��
��ȥ������ߡ�

���Ҳ��ò�ȥ!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������餸��顣

	OnSE("se�ճ�_����_�i�Q��01", 1000);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md03/0050030a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������˻�������룬������������ʵ�еļ�����
�����������ظ��˶��ٴ��ء�

��һ�ж����޸ı䡣
����ɫ��������������ط���ס�ҡ�

��ֻ���ظ���ͽȻ���ź���������ÿÿ�˺���������
���ظ��ࡣ

������ǰ�ڴն��ҳ���֮ʱ��ͬ��
�����Ѿ��������ǰ�����ֹˮ��

����Ϊ������<RUBY text="����">�ٿ���</RUBY>��

�����ԣ���Ҳ���ܲ��˶���һ���ˡ�

�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md03/0050040a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����á�
�����á�

�������������س����š�
���ٶ�δ�غܿ졭�����������졣

��ֻҪ�޷�������ڰ�������ͻ�����������
����������
�����һ�Ѻ�����������⡣

���������ǡ�
���ҵ����о�������Ȩ����

����Ϊ�����Ľ�����Ȼ��������;ĩ·��
������֤���Լ��Ǻ������塢�ɲ����ó��Ĵ�Ʒ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md03/0050050a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����á�

���ڰ���˿δ�䡣
��ֻ�и��಻����ʴ���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//����������
//�����`�������_����
//���ե��`�ɥ���
//���\��ͯ��

	SetVolume("@mbgm*", 3000, 0, null);
	Wait(2000);

	FadeDelete("����",1500,true);
	WaitKey(1000);
	OnSE("se�ճ�_����_�Ϊz���_��02", 1000);

	Wait(2000);

	CreateColorSP("�}ɫ100", 2500, "BLACK");
	Fade("�}ɫ100", 0, 500, null, true);

	StC(1500, @0, @0, "cg/st/st�\��_ͨ��_˽��.png");
	FadeStC(1300, true);


	SetFwR("cg/fw/fw�\��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0050060b26">
������������

{	FwR("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0050070b26">
�������䲻��������Ե�ɣ�
��������������ܻ���֮ǰǷ�µ������˰ɣ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0050080a01">
������������

{	FwR("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0050090a01">
�������㡭������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md03_006.nss"