//<continuation number="140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_001.nss_MAIN
{

	$TITLE_NOW=" ����������ħ��ƪ���������� ";

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
	#bg014_�`�}���A��_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_002.nss";

}

scene md01_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_000.nss"

//���`�}�н֡�ҹ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg014_�`�}���A��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	Wait(500);
	SoundPlay("@mbgm16",0,1000,true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������ͨ����������·�ϡ�

��ɱ������������еļ��ߵ���ʵѹ�ڼ�ͷ��
��������Ǿ������ܶ����ĸ����䣬
���Ǽ޻����ĸ��˵ĳ��ء�

��ֻҪ���ţ���ͻ᲻�ϻ��ۡ������˱���Ҫ��ȷ
�ػ���ȥ�����½���һ��ҲҪ������ݳ��ء�
�����ǣ������ҵľ�����ǡ������ֵ�ÿ�ҫ��ǿӲ��
һ����һ�ε��ظ���ɱ���������񼫵��¡�

����ֹ<RUBY text="����">���Ǻ�</RUBY>��ֻ��Ϊ���Լ���˽�����

�����������Ǵ�����
�����£��������������˵���޴�������

��������ֵ�ó�Ц��
�����˱�����������ô��ģ����

�������������Ծ�ȴ���ɼ����ţ��޿ɾ�ҩ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md01/0010010a01">
��������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0010020a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0010030a01">
����˵һ�Ρ�
����ʲôҲ����ȥ�롣��

//��������
<voice name="����" class="��������" src="voice/md01/0010040a01">
��ʹ���Ҿ����ˡ��������ġ�
�����ܷ�յĻ������ͺ��Ұɡ���

//��������
<voice name="����" class="��������" src="voice/md01/0010050a01">
���������������Լ��ˡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0010060a00">
���ҵĻش�Ҳ�����Ǿ仰����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0010070a01">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0010080a00">
������ֻ�Ǹ����ߡ�
�������Ǳ�ʹ�õĶ�������

//��������
<voice name="����" class="����" src="voice/md01/0010090a00">
����ʹ�õĵ��߲��ᱳ�����
������ʹ�������˱�������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0010100a00">
��ֵ������Ľ�����<RUBY text="��">����</RUBY>��
���������Լ�����ݣ����ߡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0010110a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��ͬ���ĶԻ��ظ����ü��Ρ�
���Դ�����ǰ���������Ե��ʼ��

����ʱ�������㣬�ɴ��������������£�����
�жϵ����ߡ�
��Ȼ��ÿ�εĽ�ֶ����䡣���˶������˳�Ĭ��
�������õؽ����˻��⡣

���Ҳ���������Ϊ�����в�������֮����
���Դ�����˵��Ҳ��ͬ���ɡ�

�����ԶԻ������޷��ó����ۣ����˻��࿹�ܶ�������
����������

��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md01/0010120a00">
�����ǡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0010130a01">
�������ţ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0010140a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������ѿڶ�����һ��ת�۵Ĵʡ�
��Ȼ��ý���ȥ�Ļ�����ȴ�����������ҵ���ʶ�С�

{	SoundPlay("@mbgm32",2000,1000,true);
	CreateSE("SEL01","se����_����_�i��01_L");
	MusicStart("SEL01",0,1000,0,700,null,true);}
��ֻ������Ĭ���������������ߡ�
������Ҳ����ҹɫ�У���������ߡ�

�����ǣ����еĳ�Ĭ������������׷�ʵĳɷ֡�
��Ҳ�ԡ�˵�õ��������ͻȻ������Լ����
�ܻ�ð���ܶ����ʡ�

�����Լ�Ҳ���úܲ���˼�顣
��һ˲��·���ħһ�㣬���뵽��ʲô����Ϊ��
Խ˵Խ�����ء�

�����ǡ�


������ʵĺ��棬�ø�ʲô�ء�

�������ˣ���Ϊ�������Ҿ��������֮�ס�
�ȿ�������Ҳ�����š�
�����ñ����ȫ�ܽ⣬��ʧ�ɡ�

����������ʲô��������Ҳ����ʧ�ˡ�
����֪���ģ��ҵ�ͷ���ﰴ��<RUBY text="����">����</RUBY>����������
�����ӵײ���ʲô������һ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������һ��Ҫ˵�Ļ�������������ʱ���龰��
�����ǣ�����������ĸ�Դ��

���������཭�þ���������У���ʶ��
�����ʱ�⡣
���ǹ�Ȼ�������཭����������İɡ�
��Ϊ�ǲ����ҵ��ġ�

�����ҵ��Σ��ҵĹ�ȥ����������ʣ���
�ƺ��ڿ�����˲��㽫�����ǡ�

��������Щ�����������ģ�<RUBY text="������">���ڵ�</RUBY>��ȡ�����ˡ�

������ȷʵ����������֪��һ����ȴ�Ķ�����
Ȼ�����ڽ��������������ݡ�

��ֻ��Ƭ�Ρ�
������֮�����ϸ��ֳ�����

�����ǡ�������

�������ģ����䡣

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(3000, 2000);

//���ƥ�å�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}�\��", 10000, "#000000");
	CreateColorSP("�}�\��", 150, "#000000");
	Move("�}�\��", 0, -512, @0, null, true);
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/tp_ħ��������01.png");
	Zoom("�}�ƥ�", 0, 700, 700, null, true);
	Request("�}�ƥ�", Smoothing);
	Delete("�ϱ���");

	FadeDelete("�}�\��", 2000, true);

	WaitKey(2000);
	FadeDelete("�}�\��", 1000, true);

	WaitKey(3000);
	ClearWaitAll(3000, 2000);

/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���Ⲣ��Ӣ�۵Ĺ��¡�

  �����ܳ�ΪӢ�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

//����ȥ������g���ä���
//���£ǣͤȹ���
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm37",2000,1000,true);
	CreateColorSP("�}�\��", 10000, "#000000");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/tp_ħ��������02.png");
	Zoom("�}�ƥ�", 0, 700, 700, null, true);
	Request("�}�ƥ�", Smoothing);
	Delete("�ϱ���");

	FadeDelete("�}�\��", 2000, true);

	WaitKey(3000);
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 3000, 1000, null, true);
	Wait(2000);

/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����ÿ���˶���ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//�������ȥ룺װ�א��������ħ����
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_ħ����.png");
	FadeDelete("�ϱ���", 2000, true);
	WaitKey(3000);

	ClearWaitAll(3000, 3000);

}

..//������ָ��
//�Υե����롡"md01_002.nss"